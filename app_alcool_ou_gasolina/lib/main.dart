import 'package:app_alcool_ou_gasolina/controller/homecontroller.dart';
import 'package:app_alcool_ou_gasolina/view/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gasolina ou Álcool',
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProvider(
          create: (_) => HomeController(),
          child: const Home(),
        ));
  }
}
