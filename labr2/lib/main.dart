import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.green,
      )
      ,home: const MyHomePage(title: 'Инкремент'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _increment() {
    setState(() {

      _counter++;
    });
  }
  void  _decrement(){
    setState(() {
      _counter--;
    });
  }
  void _drop()
  {
    setState((){
      _counter=0;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>
              [
                RaisedButton(
                  onPressed: _decrement,
                  color: Colors.red,
                  child: const Icon(Icons.remove),
                ),
                RaisedButton(
                  onPressed: _increment,
                  color: Colors.green,
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            TextButton(
              onPressed: _drop ,
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
              ),
              child: const Text("Сбросить"),
            ),
          ],
        ),
      ),


    );
  }
}
