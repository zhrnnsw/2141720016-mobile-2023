import 'package:flutter/material.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream - Zahra',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;
  late StreamTransformer transformer;
  late StreamSubscription subscription;
  late StreamSubscription subscription2;
  String values = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream - Zahra'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(values),
            ElevatedButton(
              onPressed: () => addRandomNumber(), 
              child: Text('New Random Number'),
            ),
            ElevatedButton(
              onPressed: () => stopStream(), 
              child: const Text('Stop Subscription')
              ),
          ],
        ),
      ),
    );
  }

  void changeColor() async {
    colorStream.getColors().listen((eventColor){
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void initState(){
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();
    subscription = stream.listen((event){
      setState((){
        values += '$event - ';
      });
    });
    subscription2 = stream.listen((event){
      setState((){
        values += '$event - ';
      });
    });
    subscription.onError((error){
      setState((){
        lastNumber = -1;
      });
    });
    subscription.onDone((){
      print('OnDone was called');
    });
    super.initState();
  }

  void addRandomNumber(){
    Random random = Random();
    int myNum = random.nextInt(10);
    if(!numberStreamController.isClosed){
      numberStream.addNumbertoSink(myNum);
    }else{
      setState((){
        lastNumber = -1;
      });
    }
  }

  @override
  void dispose(){
    subscription.cancel();
  }

  void stopStream(){
    numberStreamController.close();
  }
}
