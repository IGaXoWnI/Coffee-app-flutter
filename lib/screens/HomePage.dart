
// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:coffeapp/components/coffeType.dart';
import 'package:coffeapp/components/listCoffe.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0.00,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(
          icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
          icon: Icon(Icons.notifications), label: "")
      ]),
    body: Column(
      children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 25 , vertical: 18),
           child: Text("here you can your perfect coffe" ,
           style: GoogleFonts.bebasNeue(fontSize: 43),),
         ),
         SizedBox(height: 35,),
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 23),
           child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: "entre your coffe name",
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500 ,)
              ),
              enabledBorder: OutlineInputBorder(),
              
            ),
           ),
         ),
         SizedBox(height: 40,),
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12 ),
            child: Container(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                CoffeType(typeofcoffe: "vanile" , isSelected: true,),
                CoffeType(typeofcoffe: "cappucino" , isSelected: false,),
                CoffeType(typeofcoffe: "nescafe" , isSelected: false,),
                ],
              ),
            ),
          ),
        
         
         Expanded(child: 
         ListView(
          scrollDirection: Axis.horizontal,
          // ignore: prefer_const_literals_to_create_immutables
          children:  [
            ListCoffe(coffename: "Cappuccino", description: "With Almond Mlik", price: "\$7.80", imagepath: "lib/assets/coffe.png",),
            ListCoffe(coffename: "Nespresso", description: "With Pure Coffe", price: "\$12.70" , imagepath:"lib/assets/Nespresso.png"),
            ListCoffe(coffename:"Black Coffee", description: "without anything", imagepath:"lib/assets/Noire.png" , price: "\$4.9")
 
          ],
         )
         )

      ],
    ),
    );
  }
}