import 'dart:js';

import 'package:flutter/material.dart';
class Constance{

  PreferredSizeWidget newAppbar (String tittle){

  return AppBar(
    title: Text(tittle),
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


  );
}

Color Allcolors=Colors.black;
}