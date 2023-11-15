import 'dart:async';
import 'pacakge:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      )
      home: const FuturePage(),
    );
  }
  
  class FuturePage extends StatefulWidget {
    const FuturePage({Key? key}) : super(key: key);
    
    @override
    _FuturePageState createState() => _FuturePageState();
  }

  class _FuturePageState extends State<FuturePage> {
    String result = '';
    
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('FutureBuilder'),
        ),
        body: Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.title);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }
              
              return const CircularProgressIndicator();
            },
          ),
        ),
      );
    }
  }
}