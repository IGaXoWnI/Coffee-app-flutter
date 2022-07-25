// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String typeofcoffe;
  final bool isSelected ;
  final VoidCallback onTap ;

  CoffeType({
    required this.typeofcoffe,
    required this.isSelected,
    required this.onTap ,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap : onTap ,
      child :Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        typeofcoffe,
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold , color: isSelected? Colors.orange : Colors.white),
      ),
    )
    );
    
  }
}
