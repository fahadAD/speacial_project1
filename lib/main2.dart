import 'dart:async';

import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
class HomrPage extends StatefulWidget {
  const HomrPage({Key? key}) : super(key: key);

  @override
  State<HomrPage> createState() => _HomrPageState();
}

class _HomrPageState extends State<HomrPage> {
  int pageIndex=0;
  Timer? timer;
  PageController pageController=PageController(
    initialPage: 0
  );

  @override
  void initState() {
     timer=Timer.periodic(Duration(seconds: 4), (timer) {
if(pageIndex<4){
  pageIndex++;
}else{
  pageIndex=0;

}
       pageController.animateToPage(pageIndex, duration: Duration(milliseconds: 350), curve: Curves.easeIn);
     });
    super.initState();
  }

  @override
  void dispose() {
   pageController.dispose();
   timer=null;
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {


    List<Widget> _demo=[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/fahad.jpg",
              height: 215,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/fahad.jpg",
              height: 215,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/fahad.jpg",
              height: 215,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset("assets/fahad.jpg",
              height: 215,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill),
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("E-Commerce"),
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

            Stack(
              children: [
                Container(
                  height: 215,
                  width: double.infinity,
                  child: PageView(
                    controller: pageController,
                    children: _demo,

                    onPageChanged: (index){
                      setState(() {
                        pageIndex=index;
                      });
                    },
                  ),
                ),

                Positioned(
                  bottom: 30,
                  left: 130,
                  child: CarouselIndicator(
                    activeColor: Colors.white,
                    color: Colors.blue,
                    count: _demo.length,
                    index: pageIndex,
                  ),
                ),
              ],
            ),


       GridView.builder(
itemCount: 11,
           primary: false,
           shrinkWrap: true,
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
             mainAxisSpacing: 8.0,
             crossAxisSpacing: 8.0,
             childAspectRatio: 1.0,

       ), itemBuilder: (context,index){

         return Padding(
           padding: const EdgeInsets.all(3.0),
           child: ClipRRect(
             borderRadius: BorderRadius.circular(20),
             child: Card(
               elevation: 100,
               child: Stack(
                 children: [
                   Image.asset("assets/sami.jpg",
                     height: 220,
                     width: MediaQuery.of(context).size.height,
                     fit: BoxFit.fill,
                   ),
                   Positioned(
                       bottom: 0,
                       child: TextButton(onPressed: (){}, child: Text("Order Now\n\$56",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),))),
                   Positioned(
                       bottom: 0,
                       right: 5,
                       child: ElevatedButton(onPressed: (){}, child: Icon(Icons.shopping_cart)))

                 ],
               ),
             ),
           ),
         );
       }),
            
          ],
        ),
      ),
    );
  }
}
