import 'package:flutter/material.dart';
class Person extends StatefulWidget {
  final String detail;
  const Person({Key? key, required this.detail}) : super(key: key);

  @override
  State<Person> createState() => _PersonState();

}

class _PersonState extends State<Person> {
  int selecte=0;
 List<String> lists=[
   "Black","White","Golden","Off White","Silver","Red","Blue"
 ];

  int selecte1=0;
  List<int> sizes =[
    40,41,42,43,44,45,46,67,
  ];

  String? firstHalf;
  String? secondHalf;

  bool flag = true;

  @override
  void initState() {
    super.initState();
    if (widget.detail.length > 50) {
      firstHalf = widget.detail.substring(0, 50);
      secondHalf = widget.detail.substring(50, widget.detail.length);
    } else {
      firstHalf = widget.detail;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
backgroundColor: Colors.white,
        title: Text("Cart-Details",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)),
        centerTitle: true,
        leading: GestureDetector(
            onTap: (){

            },
            child: IconButton(onPressed: (){

            }, icon: Icon(Icons.arrow_back,color: Colors.black,))),
        actions: [IconButton(
          icon: const Icon(Icons.shopping_cart,color: Colors.black,),
          tooltip: 'Open shopping cart',
          onPressed: () {
            // handle the press
          },
        ),],


      ),

      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

 
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/photo.jpg",
                    height: 220,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    ),
            ),
             ),

                  CircleAvatar(

                  backgroundColor: Colors.deepOrange,
                  child: Row( children: [
                    Icon(Icons.arrow_back_ios,color: Colors.white,size: 20, ),
                     Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),

                  ]),
                    ),
                ],
              ),

SizedBox(height: 20),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                width: MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
               borderRadius: BorderRadius.circular(10)


                ),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(4.0),
                       child: Text("Watch Air Max Per-Day",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22,letterSpacing: 2),),
                     ),
                     Row(children: [
                       IconButton(onPressed: (){}, icon: Icon(Icons.star,size: 30,color: Colors.amberAccent,)),
                       Text("5.0",style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
Text("(1325 Reviews)"),
                     ],),
                     SizedBox(height: 10,),

                     secondHalf!.isEmpty
                         ? new Text(firstHalf!)
                         : new Column(
                       children: <Widget>[
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: new Text(flag ? (firstHalf! + "...") : (firstHalf! + secondHalf!)),
                         ),
                         new InkWell(
                           child: new Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: new Text(
                                   flag ? "See More" : "See Less",
                                   style: new TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),
                                 ),
                               ),
                             ],
                           ),
                           onTap: () {
                             setState(() {
                               flag = !flag;
                             });
                           },
                         ),
                       ],
                     ),


                   ],
                 ),
            ),
             ),

Divider(thickness: 2,color: Colors. red,indent: 50,endIndent: 50),
Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Text("Selected Watch Colour:",style: TextStyle( fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
),

SizedBox(
  height: 70,

  child:   ListView.builder(

    itemCount: lists.length,
primary: false,
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemBuilder: (BuildContext context, int index) {



    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          setState(() {
            selecte=index;
          });
        },
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color:selecte==index?Colors.green:Colors.black,
             borderRadius: BorderRadius.circular(10),



          ),
child: Padding(
  padding: const EdgeInsets.all(8.0),
  child:   Center(child: Text(lists[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))),
),
        ),
      ),
    );

  },),
),


            Divider(thickness: 2,color: Colors. red,indent: 50,endIndent: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:   Text("Sizes:",style: TextStyle( fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
            ),

            SizedBox(
              height: 60,

              child:   ListView.builder(

                itemCount: sizes.length,
                primary: false,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {



                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          selecte1=index;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 60,
                        decoration: BoxDecoration(
                          color:selecte1==index?Colors.blueAccent:Colors.teal,
                          borderRadius: BorderRadius.circular(10),



                        ),
                        child: Padding(
                          padding:   EdgeInsets.all(8.0),
                          child:   Center(child: Text(sizes[index].toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20))),
                        ),
                      ),
                    ),
                  );

                },),
            ),





                    ],
        ),
      ),

    );
  }
}
