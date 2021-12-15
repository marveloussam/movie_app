import 'package:flutter/material.dart';
import 'package:movie_app/movie.dart';

class Details extends StatelessWidget {


  final String movieName;

  const Details({Key? key, required this.movieName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        title: Text(movieName),
        backgroundColor: Colors.blueGrey.shade900,
        
      ),
 
      body: Center(
        child: ElevatedButton(
          
          child: Text('Go back') , 
          
          onPressed:() {

            Navigator.pop(context);

          } ,
          
          
          ),
      ),





    );
  }
}