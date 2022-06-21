import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 100.0,
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
                "Delivery address",
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  color: Colors.black,
                  fontSize: 26
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
          Padding(
            padding:  const EdgeInsets.only(left: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "Select delivery address",
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
            height: 25,
          ),
          listCard(context,name: '32b Oxley Street, Ilaje Lekki Lagos',value: 1, width: 50),
          const SizedBox(height: 10,),
          listCard(context,name: '32b Oxley Street, Ilaje Lekki Lagos', value:2 ,width: 179),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Row(
              children: const[
                Icon(Icons.add,color: Colors.green,),
                 SizedBox(width: 5,),
                Text('Add address',style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'OpenSans',
                  fontWeight:FontWeight.w600,
                  color: Colors.green
                ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 80,),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width *0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green
            ),
            child: const Padding(
              padding:  EdgeInsets.symmetric(vertical: 24.0),
              child: Text('Checkout',style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white70,
                letterSpacing: 1
              ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listCard(BuildContext context, {required  String name, required int value, required double width}) {
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3.0),
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
                SizedBox(
                  height: 30,
                  width: 30,
                  child:  Radio(
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
          )
        ),
      ),
    );
  }
}
