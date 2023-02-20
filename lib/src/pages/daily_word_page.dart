import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:word_app/src/style/style.dart';
import 'package:word_app/src/dictionary/words.dart';
//import 'dart:async';
//import 'package:shared_preferences/shared_preferences.dart';

class DailyWordPage extends StatefulWidget {
  const DailyWordPage({Key? key}) : super(key: key);

  @override
  createState() => _DailyWordState();
}

class _DailyWordState extends State<DailyWordPage> {
  var today = DateTime.now();
  late String currentDate = "${today.day}-${today.month}-${today.year}";
  var convertMap = words.entries.toList();

  String keyMap = '';
  String valueMap = '';

  @override
  void initState() {
    super.initState();
    getWordOfTheDay();
  }

  void getWordOfTheDay() {
    for (var i = 0; i < words.length; i++) {
      setState(() {
        keyMap = convertMap[i].key;
        valueMap = convertMap[i].value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF1D7CC),
      appBar: AppBar(
        backgroundColor: const Color(0XFFF1D7CC),
        title: Center(
            child: Text(
          'Word of the Day',
          style: ThemeStyle.fontTitle,
        )),
      ),
      body: Center(
          child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(
                    //height: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Text(
                        'Discover',
                        style: GoogleFonts.playfairDisplay(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff94471E),
                          //wordSpacing: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    //height: 70,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        'the word of',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff94471E)
                            //wordSpacing: 10,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    //height: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 2),
                      child: Text(
                        ' <<$currentDate>>',
                        style: GoogleFonts.playfairDisplay(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xff94471E)
                            //wordSpacing: 10,
                            ),
                      ),
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      child: Icon(
                        Icons.keyboard_double_arrow_down_rounded,
                        color: Color(0xff94471E),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Image.asset(
                  'assets/images/home_page.png',
                  width: 195,
                  height: 230,
                ),
              ),
            ],
          ),
          Container(
              width: 350,
              height: 90,
              color: const Color(0xffDE5D75),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Text('<< $keyMap >>',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, //wordSpacing: 10,
                  ))),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            width: 350,
            height: 250,
            color: const Color(0xffDE5D75),
            child: Text(valueMap,
                style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white, //wordSpacing: 10,
                )),
          )
        ],
      )),
    );
  }
}
