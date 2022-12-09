import 'package:flutter/material.dart';
import 'package:walletapp/utils/procces.dart';
import '/utils/cards.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '/utils/buttons.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key : key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>{

  final controller = PageController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child : Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                          'My',
                        style: TextStyle(
                          color: Color(0xFFE7DFCF),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                          'Cards',
                        style: TextStyle(
                          color: Color(0xFFE7DFCF),
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Color(0xFFE7DFCF),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: [
                  CardPage(
                    balance: 222.444,
                    textColor: Color(0xFFE7DFCF),
                    bacgColor: Color(0xFF517C63),
                    cardNumber: "12341234",
                    cardMonth: "12",
                    cardYear: "24",
                  ),
                  CardPage(
                    balance: 222.444,
                    textColor: Color(0xFFFF5E2C),
                    bacgColor: Color(0xFF424249),
                    cardNumber: "12341234",
                    cardMonth: "12",
                    cardYear: "24",
                  ),
                  CardPage(
                    balance: 222.444,
                    textColor: Color(0xFFC05850),
                    bacgColor: Color(0xFFF1ECE1),
                    cardNumber: "12341234",
                    cardMonth: "12",
                    cardYear: "24",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SmoothPageIndicator(controller: controller, count: 3),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyButtons(
                  fotoButton: "assets/money.jpg",
                  textButton: "Send",
                ),
                MyButtons(
                  fotoButton: "assets/pay.png",
                  textButton: "Pay",
                ),
                MyButtons(
                  fotoButton: "assets/bill.png",
                  textButton: "Bill",
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                MyProc(
                  procFoto: "assets/statics.png",
                  textProc: "Statistics",
                  textProciki: "Paymend And Income",
                ),
                SizedBox(height: 20),
                MyProc(
                  procFoto: "assets/transactions.png",
                  textProc: "Transactions",
                  textProciki: "Transaction History",
                ),
              ],
            ),
          ],
        ),
      ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xFF517C63),
          items: [
            TabItem(icon: Icons.home),
            TabItem(icon: Icons.attach_money_rounded),
            TabItem(icon: Icons.settings),
          ],
          onTap: (int i) => print('click index=$i'),
        ),
    );
  }
}