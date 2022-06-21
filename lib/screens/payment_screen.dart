import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _value = 1;
  bool showCardType = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 80.0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 10.0),
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
                "Payment",
                style: TextStyle(
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    color: Colors.black,
                    fontSize: 26),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Select payment method",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            listCard(context,
                name: 'Wallet',
                fig: Icons.wallet,
                amt: 'NGN 22,000',
                value: 1,
                width: 25.0),
            const SizedBox(
              height: 10,
            ),
            listCard(context,
                name: 'Card',
                fig: Icons.money,
                amt: '',
                value: 2,
                width: 140.0),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 22.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Select card',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            listCardType(context, name: '**** **** 5163', value: 2, imageUrl: 'assets/mastercard.jpg'),
            listCardType(context, name: '**** **** 5163', value: 4, imageUrl: 'assets/visa.png'),
            const SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: const[
                  Icon(Icons.add,color: Colors.green,),
                  SizedBox(width: 5,),
                  Text('Add new card',style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                      fontWeight:FontWeight.w600,
                      color: Colors.green
                  ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15), color: Colors.green),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.0),
                  child: Text(
                    'Pay',
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        color: Colors.white70,
                        letterSpacing: 1),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listCard(BuildContext context,
      {required String name,
      required IconData fig,
      required String amt,
      required int value,
      required double width}) {
    return SizedBox(
      height: 100.0,
      width: MediaQuery.of(context).size.width * 0.96,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white30,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Row(
            children: [
              Icon(
                fig,
                size: 35,
                color: Colors.green,
              ),
              const SizedBox(width: 30),
              Text(
                name,
                style: const TextStyle(
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.black54),
              ),
              const SizedBox(
                width: 38,
              ),
              Text(
                amt,
                style: const TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    letterSpacing: 1),
              ),
              SizedBox(
                width: width,
              ),
              Radio(
                  value: value,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value as int;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget listCardType(BuildContext context,
      {required String name, required String imageUrl, required int value}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 100.0,
        width: MediaQuery.of(context).size.width * 0.96,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 50,
                    width: 290,
                    child: Row(
                      children: [
                        SizedBox(
                          height: 90,
                          width: 60,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(imageUrl,fit: BoxFit.cover,) ,
                          ),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                         Text(
                          name,
                          style: const TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                    width: 30,
                    child: Radio(
                        value: value,
                        groupValue: _value,
                        onChanged: (value) {
                          setState(() {
                            _value = value as int;
                          });
                        }),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
