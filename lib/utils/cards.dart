import 'package:flutter/material.dart';

class CardPage extends StatelessWidget{

  final double balance;
  final textColor;
  final bacgColor;
  final String cardNumber;
  final String cardMonth;
  final String cardYear;

  const CardPage({
    Key? key,

    required this.balance,
    required this.textColor,
    required this.cardYear,
    required this.cardMonth,
    required this.cardNumber,
    required this.bacgColor,
}): super(key : key);


  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: bacgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Balance',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 35),
            Text(
              '\$' + balance.toString(),
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  cardMonth.toString() + '/' + cardYear.toString(),
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}