import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/splash.png",height: 300,),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text("Compre Verduras Fresca", style: TextStyle(
                  color: Color(0xFF00A368),
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              )
            ),
            SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(context, "homePage");
              },
              child: Ink(
               padding: EdgeInsets.symmetric(horizontal: 80, vertical: 16),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(30),
                 color: Color(0xFF00A368),
               ),
               child: Text(
                   "Inicie",
                   style: TextStyle(
                     color: Colors.white,
                     fontSize: 18,
                     fontWeight: FontWeight.bold
                   ),
               ),
              )
            )
          ],
        ),
      ),
    );
  }
}
