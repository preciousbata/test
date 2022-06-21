import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

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
                "Checkout",
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Order Summary",
                    style: TextStyle(
                        fontSize: 17,
                        fontFamily: "OpenSans",
                        fontWeight: FontWeight.w600,
                        color: Colors.black87),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            listCard(context, name: 'Order 1',
                transactionType: 'Swap Cylinder',
                size: '3.2',
                qty: '1',
                amount: 'NGN 1,200'),
            const SizedBox(
              height: 10,
            ),
            listCard(context, name: 'Order 2',
                transactionType: 'New Cylinder',
                size: '6.5',
                qty: '4',
                amount: 'NGN 6,200'),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'NGN 7,400 ',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 22.0),
                child: Text(
                  'Delivery address',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            listCard2(context, name: '32b Oxley Street, Ilaje Lekki Lagos'),
            const SizedBox(
              height: 60,
            ),
            Container(
              height: 80,
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.green),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 24.0),
                child: Text(
                  'Payment',
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
          ],
        ),
      ),
    );
  }

  Widget listCard(BuildContext context,
      {required String name,
        required String transactionType,
        required String size,
        required String qty,
        required String amount}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 100.0,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.96,
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
                    height: 60,
                    width: 190,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black87),
                        ),
                        Text(
                          transactionType,
                          style: const TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black26),
                        ),
                        Text(
                          '${size}Kg . $qty Qty',
                          style: const TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              color: Colors.black26),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    width: 90,
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        amount,
                        style: const TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }

  Widget listCard2(BuildContext context, {required String name}) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: SizedBox(
        height: 100.0,
        width: MediaQuery
            .of(context)
            .size
            .width * 0.96,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.white30,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SizedBox(
                height: 50,
                width: 290,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 22.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.black87),
                      ),
                      const SizedBox(width: 30,),
                      const Text(
                        'Change',
                        style: TextStyle(
                            fontFamily: "OpenSans",
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.green),
                      )
                    ],
                  ),
                ),
              ),
            )
        ),
      ),
    );
  }
}
