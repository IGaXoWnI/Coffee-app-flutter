// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CoffeType extends StatelessWidget {
  final String typeofcoffe;
  final bool isSelected ;

  CoffeType({
    required this.typeofcoffe,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Text(
        typeofcoffe,
        style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold , color: isSelected? Colors.orange : Colors.white),
      ),
    );
  }
}
