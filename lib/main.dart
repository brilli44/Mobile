import 'dart:async';
import 'package:books/geolocation.dart';
import 'package:books/navigation_dialog.dart';
import 'package:books/navigation_first.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => FuturePageState();
}

class FuturePageState extends State<FuturePage> {
  String result = '';
  late Completer completer;

  // Fungsi untuk mengambil data dari API
  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/rTYEyWrXLO0C';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  // Fungsi async untuk return nilai 1, 2, 3
  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  // Fungsi untuk menghitung total dari 3 angka
  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  // Fungsi untuk menggunakan Completer
  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  // Fungsi untuk menyelesaikan perhitungan setelah 5 detik
  Future calculate() async {
    try {
 await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
    }
    catch(_){
      completer.completeError({});
    }
   
  }

  void returnFG() {
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);

    futures.then((List<int> values) {
      int total = 0;

      for (var element in values) {
        total += element;
      }

      setState(() {
        result = total.toString();
      });
    });
  }

  Future returnError() async{
    await Future.delayed(const Duration(seconds : 2));
    throw Exception('Something terrible happened!');
  }

  Future handleError() async {
    try{
      await returnError();
    }
    catch (error){
      setState(() {
        result = error.toString();
      });
    }
    finally{
      print('Complete');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future - Brilli'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
              // count();
              // setState(() {});
              // getData().then((value) {
              //   result = value.body.toString().substring(0, 450);
              //   setState(() {});
              // }).catchError((_) {
              //   result = 'An error occurred';
              //   setState(() {});
              // });
                // getNumber().then((value) {
                //   setState(() {
                //     result = value.toString();
                //   });
                // }).catchError((e) {
                //   setState(() {
                //     result = 'An error occurred: $e';
                //   });
                // });
                // returnFG();
    //             returnError()
    // .then((value) {
    //   setState(() {
    //     result = 'Success';
    //   });
    // })
    // .catchError((onError) {
    //   setState(() {
    //     result = onError.toString();
    //   });
    // })
    // .whenComplete(() => print('Complete'));
              handleError();
              },
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
