

import 'package:flutter/material.dart';
import 'package:movie_app/letts.dart';


class MovieListView extends StatelessWidget {
   MovieListView({Key? key}) : super(key: key);

  final List movies = [

    'Titatnic',
    'Avengers',
    'Smurfs'
    'Batman',
    'Robinhood',
    'Thor',
    'Supersonic',
    'The boys',
    'Umbrella academy',
    'Hercules',
    'Carz',
    'Money Heist',
    'Superman'
    'Jack and the giants',
    'Squid game'

  
  ];




  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(

          title: Text('Movies'),
          backgroundColor: Colors.blueGrey.shade900,



        ),

        backgroundColor: Colors.blueGrey.shade400,

        body: ListView.builder(

          itemCount: movies.length,
          
          
          itemBuilder: (BuildContext context, int index) {

          

          return Card(
            
            elevation: 4.5,
            color: Colors.white,

            

            child: ListTile(

              trailing: Text('...'),
              
              leading: CircleAvatar(

                child: Container(

                  decoration: BoxDecoration(

                    color: Colors.greenAccent.shade700,
                    borderRadius: BorderRadius.circular(13.9)


                  ),
                  
                  child: Icon(Icons.movie),

                                   
                  
                  ),


              ),
              title: Text(movies[index]),
              subtitle: Text('Sub'),
              onTap: () {

                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => Details(movieName: movies[index],)));


              }
              
              //() => debugPrint('Movie name: ${movies[index]}'),
              

            ),


          );


        }),


      )
      
    );
  }
}