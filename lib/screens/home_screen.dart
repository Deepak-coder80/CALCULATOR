import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //String which hold user input
  String userQuestion = '2+2';

  //string which holds the answer
  String userAnswer = '4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //display the user input
          Container(
            padding:const EdgeInsets.all(20),
            //put the text center left position
            alignment: Alignment.centerLeft,
            //display the text
            child: Text(
              userQuestion,
              style:const  TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
              ),
            ),
          ),
          //display the answer
          Container(
            padding: const  EdgeInsets.all(20),
            //put the text center right
            alignment: Alignment.centerRight,
            //display the text
            child: Text(
              userAnswer,
              style:const  TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
