import 'package:flutter/material.dart';

class PurchaseOrderScreen extends StatefulWidget {
  const PurchaseOrderScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseOrderScreen> createState() => _PurchaseOrderScreen();
}

class _PurchaseOrderScreen extends State<PurchaseOrderScreen> {
  int _value = 0;
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
                "Purchase Order",
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
                  "Select your order preference",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: "OpenSans",
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 380,
              width: 400,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black12,
              ),
              child: Column(
                children: [
                  listCardType(context, name: 'Swap Cylinder', value: 1, imageUrl: 'assets/gas_cylinder.png'),
                  listCardType(context, name: 'New Cylinder', value: 2, imageUrl: 'assets/gas_cylinder2.jpeg'),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.only(left: 22.0),
                    child: Row(
                      children: const [
                        Text('Cylinder Weight',style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600,
                          color: Colors.black26
                        ),
                        ),
                         SizedBox(width: 90,),
                        Text('Number',style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w600,
                            color: Colors.black26
                        ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:15.0),
                        child: buildDropDown(),
                      ),
                      buildDropDown(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: Row(
                children: const[
                  Icon(Icons.add,color: Colors.green,),
                  SizedBox(width: 5,),
                  Text('Add order',style: TextStyle(
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
              height: 60,
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
                    'Continue',
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

  Widget buildDropDown() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 70,
        width: 150,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white60
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              '00',
              style: TextStyle(fontSize: 25, color: Colors.black26),
            ),
            DropdownButton(
              items: null,
              onChanged: null,
              icon: const Icon(
                Icons.arrow_drop_down,
                size: 39,
              ),
            ),
          ],
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
            color: Colors.white,
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
                          width: 40,
                        ),
                        Text(
                          name,
                          style: const TextStyle(
                              fontFamily: "OpenSans",
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                              color: Colors.black26),
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
