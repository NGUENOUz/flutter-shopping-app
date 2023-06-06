import 'package:flutter/material.dart';

import '../mini_screen/search_screen.dart';

class fakeSearch extends StatelessWidget {
  const fakeSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
     // ici inkwell est une fonction de redirection

      onTap: () {
        Navigator.push(context,
        
        MaterialPageRoute(
          builder: (context)=>const SearchSreen() 
        
             )
        );
      },
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.orange ,width: 1.4,),
        borderRadius: BorderRadius.circular(25),
        ),
        height: 35,
        child: Row(
          //alignement pour espacer 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
    
            //cette preliere ligne est cette qui contient l'icone de recherche te le texte 
            const Row(
    
          children:[
               
                  Padding(
              padding:  EdgeInsets.symmetric(horizontal: 4),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            Text("what are you looking for ",
            style: TextStyle(color: Colors.grey ,fontSize: 18,),),
            
             
          ],
    
            ),
           //fin de cette ligne  
          
            Container(
              height: 32,
              width: 90,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius:  BorderRadius.circular(25)
                ),
                child:const Center(
                          child: 
                            Text("Search",
                             style: TextStyle(color: Colors.grey ,fontSize: 16,),),
                ),
                )    
          ],
        ),
        ),
    );
  }
}

