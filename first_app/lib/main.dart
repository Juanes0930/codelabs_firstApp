
import 'package:english_words/english_words.dart';
import 'package:first_app/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ChangeNotifierProvider(
      create:(context) => HomeState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FirtsApp',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)
        ),
        home: MyHomepage(),
      ),
   
    );
  }
}

// Clase MyAppState
 

