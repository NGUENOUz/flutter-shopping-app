import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchSreen extends StatelessWidget {
  const SearchSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,

   // leading est utiliser ici pour personaliser mon bouton de retour  

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new,color: Colors.black ,
          
          ),
          onPressed: (){
                Navigator.pop(context);
          },
          ),
        title: CupertinoSearchTextField(),
      ),
    );
  }
}