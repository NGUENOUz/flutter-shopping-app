import 'package:flutter/material.dart';
import 'package:tutoflutter/main_screens/category.dart';
import 'package:tutoflutter/main_screens/home.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {

      final List _maListe= const [
        HomeScreen(),
        categoryScreen(),
         Center( child:  Text('"store screen"'),),
         Center( child:  Text('"cart screen"'),),
         Center( child:  Text('"profile screen"'),),
        
      ];
      int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Formation Fluter",style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 248, 253, 249)),),
        
      ),

      body: Center(
        
        child: _maListe[_selectedIndex] ,
     
      ),

      bottomNavigationBar:BottomNavigationBar( 
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 34, 131, 223),
        unselectedItemColor: Color.fromARGB(255, 119, 117, 117),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        currentIndex: _selectedIndex,
        
        
        
         items: const [

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Categorie"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop),
              label: "store"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Accout")


      ],
      onTap: (index){
        setState(() {
          _selectedIndex=index;
        });
      },
      
      ) ,
    );
  }
}