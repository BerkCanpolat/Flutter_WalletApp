import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget{

  final String fotoButton;
  final String textButton;

  const MyButtons({
    Key? key,
    required this.textButton,
    required this.fotoButton,
}): super(key : key);


  @override
  Widget build(BuildContext context){
    return Column(
      children: [
        Container(
          height: 100,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFE7DFCF),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                spreadRadius: 2,
                color: Color(0xFF517C63),
              ),
            ],
          ),
          child: Image.asset(fotoButton),
        ),
        SizedBox(height: 5),
        Text(
            textButton.toString(),
          style: TextStyle(
            color: Color(0xFFE7DFCF),
            fontWeight: FontWeight.bold,
            fontSize: 17,
          ),
        ),
      ],
    );
  }
}