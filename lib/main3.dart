import 'package:flutter/material.dart';
class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
 List<int> selected=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart-Page"),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){

            },
            child: IconButton(onPressed: (){

            }, icon: Icon(Icons.arrow_back))),
        actions: [IconButton(
          icon: const Icon(Icons.shopping_cart),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),],


      ),

      body: SingleChildScrollView(
          child: Column(
              children: [

       ListView.builder(
         primary: false,
         shrinkWrap: true,
         itemCount: 6,
         itemBuilder: (BuildContext context, int index) {
           selected.add(0);
         return ClipRRect(
           borderRadius: BorderRadius.circular(30),
           child: Card(
elevation: 30,
             color: Colors.white54,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: CircleAvatar(
             radius:50,
                     foregroundImage: AssetImage("assets/fahad.jpg")),
               ),
               Column(children: [
                 Text("T-Shirt(T76A)",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 20),),
                SizedBox(height: 10),
                 Text("Price=\$76",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange,fontSize: 16),),
               ],),
               Column(children: [
                 IconButton(onPressed: (){
                   setState(() {
                     selected[index]++;
                   });
                 }, icon: Icon(Icons.add_circle,color: Colors.red, )),
                 Container(
                   width: 18,
                   height: 18,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle
                    ),
                   child: Center(child: Text(selected[index].toString(),style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                 ),
                 IconButton(onPressed: (){
                   setState(() {
                     selected[index]--;

                   });
                 }, icon: Icon(Icons.indeterminate_check_box_rounded, color: Colors.green,)),

                ],),

             ],),
           ),
         );
       },),



               ])),
    );
  }
}
