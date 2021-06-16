import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  increment() {
    setState(() {
      counter++;
    });
  }

  decrement() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WBreak'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: decrement,
                child: Text('RESTAR'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: increment,
                child: Text('SUMAR'),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Hero(
            tag: 'lucario',
            child: Image.asset(
              'assets/images/lucario.jpg',
              height: 100,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.of(context).pushNamed('/about');
        },
      ),
    );
  }
}
