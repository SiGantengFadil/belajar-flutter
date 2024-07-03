import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: double.infinity, 
      margin: EdgeInsets.all(10), 
      decoration: BoxDecoration( 
         color: Colors.amberAccent, 
         borderRadius: BorderRadius.circular(10), 
         image: DecorationImage(
          image: NetworkImage(
            'https://play-lh.googleusercontent.com/l5-rol4Yc_JZwKYIcUQsqS0i_q2i9rdaH3O0OoNJWkaWAc0_wfm1fXoWQhgELN06I7hS=w240-h480-rw'),
            fit: BoxFit.cover,
         ), 
      ),
      child: Center(
        child: Text(
          "Spiderman-3", 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold, 
            color: Colors.white
          )
        ))
    );
  }
}