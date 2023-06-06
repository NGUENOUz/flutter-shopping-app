import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../mini_screen/search_screen.dart';
import '../widgets/fakeSearch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8, 
      child:
      Scaffold(
      appBar: AppBar(
        // icic c'est pour personnaliser ma première barre de recherche du home 
        title: fakeSearch(),
        backgroundColor:const Color.fromARGB(255, 255, 249, 249),
        elevation: 0,
        bottom: const TabBar(
          isScrollable: true,
          indicatorColor: Colors.blue,
          indicatorWeight: 8,
          tabs: [

               
               RepetedTab(label: 'Men'),
               
               RepetedTab(label: 'Women'),
               
               RepetedTab(label: 'Shoes'),
               
               RepetedTab(label: 'Accessor'),
               
               RepetedTab(label: 'Child'),
                      
               RepetedTab(label: 'Beauty'),

                      
               RepetedTab(label: 'Book'),
                      
               RepetedTab(label: 'Movie'),

        ]),
      ),
      body: const TabBarView(children: [
        Center(child: Text('ecran1') ),
         Center(child: Text('ecran2') ),
          Center(child: Text('ecran3') ),
           Center(child: Text('ecran4') ),
            Center(child: Text('ecran4') ),
            Center(child: Text('ecran4') ),
            Center(child: Text('ecran4') ),
            Center(child: Text('ecran4') ),

      ]),
    ),
    );
  }
}


// cette classe est une classe extraite de Tab qui me permet de repeter mes Tabs 

class RepetedTab extends StatelessWidget {
    final String label;
  const RepetedTab({
    super.key, required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
     child: Text(label,
     style: TextStyle(color: Colors.black)
     ),
    );
  }
}
//