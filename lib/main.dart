import 'package:flutter/material.dart';
import 'package:shop_app_flutter/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( 
      title: 'shop_app',
      theme: ThemeData( 
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(254, 206, 1, 1), 
        primary: Color.fromRGBO(254, 206, 1, 1)
        ),
        inputDecorationTheme: const InputDecorationTheme( 
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1)
        )
      ),
      home:HomePage()
    );
  }
}