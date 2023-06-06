import 'package:flutter/material.dart';
import 'package:tutoflutter/widgets/fakeSearch.dart';

class categoryScreen extends StatefulWidget {
  const categoryScreen({super.key});

  @override
  State<categoryScreen> createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,        
        title: const fakeSearch(),),


        body: Stack(

          // ici on utilise stack pour classer et positionner les elements 
          //en leur donnant des positions proportionnel dans notre body 
          children: [
            Positioned(
              
              left: 0,
              bottom: 0,
              child: Container(
              color: Color.fromARGB(132, 212, 210, 210),
              width:MediaQuery.of(context).size.width*0.2,
              height: MediaQuery.of(context).size.height*0.8,

            )
            ),

               Positioned(
              
              right: 0,
              bottom: 0,
              child: Container(
               color: const Color.fromARGB(255, 248, 246, 246),
              width:MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.8,
               child: Image.asset('assets/images/image1.jpg'),

            )
            ),
          ],
        ),
    );
  }
}

