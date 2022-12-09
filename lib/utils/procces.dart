import 'package:flutter/material.dart';

class MyProc extends StatelessWidget{

  final procFoto;
  final String textProc;
  final String textProciki;

  const MyProc({
    Key? key,
    required this.textProc,
    required this.procFoto,
    required this.textProciki,
}): super(key : key);


  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          child: Image.asset(procFoto),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              textProc.toString(),
              style: TextStyle(
                color: Color(0xFFE7DFCF),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              textProciki.toString(),
              style: TextStyle(
                color: Color(0xFFE7DFCF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Color(0xFFE7DFCF),
        ),
      ],
    );
  }
}