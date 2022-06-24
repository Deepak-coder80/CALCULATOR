import 'package:flutter/material.dart';
import '../utils/calc_button.dart';
import '';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //String which hold user input
  String userQuestion = '';

  //string which holds the answer
  String userAnswer = '4';

  //button list
  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  //is operator function
  bool isOperator(String s){
    if(s=='+'||s=='-'||s=='/'||s=='%'||s=='x'){
      return true;
    }
    return false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //display the user input
          SizedBox(
            height: MediaQuery.of(context).size.height/6,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            //put the text center left position
            alignment: Alignment.centerLeft,
            //display the text
            child: Text(
              userQuestion,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.deepPurple,
              ),
            ),
          ),
          //display the answer
          Container(
            padding: const EdgeInsets.all(20),
            //put the text center right
            alignment: Alignment.centerRight,
            //display the text
            child: Text(
              userAnswer,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
          ),
          //display the button-Grid view
          Expanded(
            child: GridView.builder(
              itemCount: buttons.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                //clear button
                if (index == 0) {
                  return MyButton(
                    color: Colors.green,
                    textColor: Colors.white,
                    buttonText: buttons[index],
                    buttonTapped: () {
                      //clear userQuestions and userAnswer
                      setState(() {
                        userQuestion='';
                        userAnswer='';
                      });
                    },
                  );
                }
                //delete button
                if (index == 1) {
                  return MyButton(
                    color: Colors.red,
                    textColor: Colors.white,
                    buttonText: buttons[index],
                    buttonTapped: () {
                      //delete one index from userQuestion from the back
                      setState(() {
                        userQuestion=userQuestion.substring(0,userQuestion.length-1);
                      });
                    },
                  );
                }
                //equal button
                if (index == buttons.length-1) {
                  return MyButton(
                    color: Colors.purple,
                    textColor: Colors.white,
                    buttonText: buttons[index],
                    buttonTapped: () {},
                  );
                }
                return MyButton(
                  color:isOperator(buttons[index])?Colors.purple:Colors.white,
                  textColor: isOperator(buttons[index])?Colors.white:Colors.purple,
                  buttonText: buttons[index],
                  buttonTapped: () {
                    //concatenate
                    setState(() {
                      userQuestion += buttons[index];
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
