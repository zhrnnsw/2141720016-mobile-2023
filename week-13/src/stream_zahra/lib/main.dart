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
            Text(lastNumber.toString()),
            ElevatedButton(
              onPressed: () => addRandomNumber(), 
              child: Text('New Random Number'),
              )
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
    Stream stream = numberStreamController.stream;
    transformer = StreamTransformer<int,int>.fromHandlers(
      handleData: (value, sink){
        sink.add(value * 10);
      },
      handleError: (error, trace, sink){
        sink.add(-1);
      },
      handleDone: (sink) => sink.close()
    );
    stream.transform(transformer).listen((event){
      setState((){
        lastNumber = event;
      });
    }).onError((error){
      setState((){
        lastNumber = -1;
      });
    });
    super.initState();
  }

  void addRandomNumber(){
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumbertoSink(myNum);
    //numberStream.addError();
  }

  @override
  void dispose(){
    numberStreamController.close();
    super.dispose();
  }
}
