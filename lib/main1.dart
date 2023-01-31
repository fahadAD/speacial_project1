import 'package:fahad_pracyise/main2.dart';
import 'package:fahad_pracyise/main3.dart';
import 'package:fahad_pracyise/main4.dart';
import 'package:flutter/material.dart';
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selecteD=0;
  final lists=[
    HomrPage(),
    Favourite(),
    Person(detail: ' if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need if you are looking for something like facebook,Linkedin you just need one variable isOpen. If isOpen true return MoreText else LessText (use substring) . May not be a perfect solution but you can get what you need',),
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(

      body: lists[selecteD],

       bottomNavigationBar:  BottomNavigationBar(
         selectedItemColor: Colors.white,
         backgroundColor: Colors.orange.withOpacity(0.5),
           onTap: (value){
             setState(() {
               selecteD=value;
             });
           },
           currentIndex: selecteD,
           items: [
         BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.white),label: "Home", ),
         BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.white),label: "Favorite"),
         BottomNavigationBarItem(icon: Icon(Icons.perm_identity,color: Colors.white),label: "Person"),


       ]),
     );
  }
}
