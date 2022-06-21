import 'package:flutter/material.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child: Column(
          children: [
            const SizedBox(height: 100,),
            const CircleAvatar(
              backgroundColor: Colors.green,
              radius: 70,
              child: Icon(Icons.check_circle_outline_rounded,color: Colors.white,size: 90,),
            ),
            const SizedBox(height: 40,),
            const Text('Order booked\nsuccessfully', style: TextStyle(
              fontFamily: 'OpenSans',
              fontSize: 18,
              letterSpacing: 1,
              fontWeight: FontWeight.bold
            ),
              textAlign: TextAlign.center,),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 65,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.green,
                ),
                child: const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 20.0),
                  child: Text('Home',style: TextStyle(
                    fontSize: 16,
                    fontFamily:'OpenSans',
                    fontWeight: FontWeight.normal,
                    color: Colors.white70,
                  ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
