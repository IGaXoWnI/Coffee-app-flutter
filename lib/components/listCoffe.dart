// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';

class ListCoffe extends StatelessWidget {

  final String coffename;
  final String description;
  final String price ;
  final String imagepath ;



  ListCoffe({
    required this.coffename,
    required this.description,
    required this.imagepath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.5),
      child: Container(
        padding: EdgeInsets.all(16),
        width: 200,
        
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.black54),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //coffeImage

            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(imagepath)),

            //coffeName

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    coffename,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    description,
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal : 6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(price),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Icon(Icons.add))],
              ),
            )
          ],
        ),
      ),
    );
  }
}
