import 'package:flutter/material.dart';
import 'package:testui/screens/checkout_screen.dart';
import 'package:testui/screens/confirmation_screen.dart';
import 'package:testui/screens/delivery_screen.dart';
import 'package:testui/screens/homescreen.dart';
import 'package:testui/screens/payment_screen.dart';
import 'package:testui/screens/purchase_order_screen.dart';
import 'package:testui/screens/top_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test UI',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      routes: {
        '/' :(_) => const HomeScreen(),
        '/topup': (_) => const TopUpScreen(),
        '/purchase':(_) => const PurchaseOrderScreen(),
        '/delivery':(_) => const DeliveryScreen(),
        '/checkout': (_) => const CheckoutScreen(),
        '/payment': (_) => const PaymentScreen(),
        '/confirmation':(_) => const ConfirmationScreen(),
      }
    );
  }
}

