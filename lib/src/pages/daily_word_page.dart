import 'package:flutter/material.dart';
import 'package:word_app/src/style/style.dart';
import 'package:word_app/src/dictionary/words.dart';

class DailyWordPage extends StatefulWidget {


  @override
  createState() => _DailyWordState();
}

class _DailyWordState extends State<DailyWordPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text('Word of the Day', 
          style: ThemeStyle.fontTitle,)
          )
        ,
      ),

      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              child: Padding(
                padding:EdgeInsets.symmetric(vertical: 40),
                child:Text('Discover the word of 19/1/23:'),
            ),
            ),
            Container(
              width: 350,
              height: 100,
              color: Colors.amber,
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
              child:Text('$words[0]'),
              
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 350,
              height: 250,
              color: Colors.amber,
              child: Text('Definition: ') ,
            )

          ],)
        
        
        /*  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ), */
      ),
    );
  }
}
