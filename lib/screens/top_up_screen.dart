import 'package:flutter/material.dart';

class TopUpScreen extends StatelessWidget {
  const TopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100.0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Row(
            children: [
              Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(100),
                  // color: Colors.green
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  size: 18,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Top Up",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 2.0),
            child: Text(
              "Select Retailer you wish to purchase from",
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.w600,
                  color: Colors.black87),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          listCard(context,imageUrl: 'assets/oando_logo.jpg',name: 'Oando Petrol Station' ),
          listCard(context,imageUrl: 'assets/total_logo.jpg',name: 'Total Retail' ),
          listCard(context,imageUrl: 'assets/enyo_logo.png',name: 'Enyo Retail' ),
          listCard(context,imageUrl: 'assets/ap_logo.jpg',name: 'Ap Gas Station'),
        ],
      ),
    );
  }

  Widget listCard(BuildContext context, {required String imageUrl, required  String name}) {
    return Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: SizedBox(
            height: 100.0,
            width: MediaQuery.of(context).size.width * 0.96,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Colors.black54,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 17.0, horizontal: 10.0),
                    child: SizedBox(
                      height: 90,
                      width: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(imageUrl,
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Text(
                      name,
                      style: const TextStyle(
                          fontFamily: "OpenSans",
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.white70),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Align(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.white70,
                      size: 16,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
  }
}
