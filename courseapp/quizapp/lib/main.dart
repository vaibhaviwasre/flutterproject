import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner:false,
      home:QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}
class _QuizAppState extends State{
  List<Map> allQuestion=[
    {
      "Question":"Who is founder of Apple?",
      "Option":["Larry Page","Elon Musk","Steve Jobs","Sundar Pichai"],
      "correctAnswer":2,
    },
    {
      "Question":"Who is founder of Google?",
      "Option":["Larry Page","Jeff Bezon","Steve Jobs","Sundar Pichai"],
      "correctAnswer":0,
    },
    {
      "Question":"Who is founder of Sugar?",
      "Option":["Simone Tata","Vineeta Sing","Ratan Tata","J.R.D.Tata"],
      "correctAnswer":1,
    },
    {
      "Question":"Who is founder of SpaceX?",
      "Option":["Larry Page","Elon Musk","Steve Jobs","Sundar Pichai"],
      "correctAnswer":1,
    },
    {
      "Question":"Who is founder of TATA?",
      "Option":["Jagdish Mahendra","Vineeta Sing","Sundar Pichai","Ratan Tata"],
      "correctAnswer":3,
    },
    
  ];
  int currentQuestionIndex=0;
  int selectedAnswerIndex=-1;
  int score=0;

   // Restart the quiz
  void restartQuiz() {
    setState(() {
      currentQuestionIndex = 0;
      selectedAnswerIndex = -1;
      score = 0;
      questionPage = true;
    });
  }


  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){

      if(answerIndex == allQuestion[currentQuestionIndex]["correctAnswer"]){
        return const WidgetStatePropertyAll(Colors.green);
      }
      else if(selectedAnswerIndex ==answerIndex){
        return const WidgetStatePropertyAll(Colors.red);
      }
      else{
        return const WidgetStatePropertyAll(null);
       }
    }
    else{
      return const WidgetStatePropertyAll(null);
    }
  }
    bool questionPage=true;
  
  @override
  Widget build(BuildContext context){
    return isQuestionScreen();
  }
  Scaffold isQuestionScreen(){
    if(questionPage == true){
  
    return Scaffold(
      appBar:AppBar(
        title:const Text(
          "Quiz App",
          style:TextStyle(
            fontSize:28,
            fontWeight: FontWeight.w900,
            color:Color.fromARGB(221, 0, 0, 0),
          ),
      ),
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 195, 64, 125),
    ),
    body: Column(
      children:[
         const SizedBox(
          height: 30,
          
        ),

        ///QUESTION NUMBERS
        Row(
          children: [
            const SizedBox(
              width:110,
            ),
            Text(
              "Question :${currentQuestionIndex+1}/${allQuestion.length}",
              
              style:const TextStyle(
                fontSize:30,
                fontWeight: FontWeight.w700,
                
              ),
            ),           
          ],
        ),
        const  SizedBox(
          height:30,
        ),

            //QUESTION
        SizedBox(
          width:380,
          height:50,
          child:Text(
            allQuestion[currentQuestionIndex]["Question"],
            style:const TextStyle(
              fontSize:25,
              fontWeight: FontWeight.w600,
              color:Color.fromARGB(255, 5, 88, 160),
            
            ),
          ),
        ),
           
        const SizedBox(
          height:5,
        ),

            //OPTION 1

        SizedBox(
          width:350,
          height:60,
          child:ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(0),
            ),
            onPressed:(){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex =0;
                if (selectedAnswerIndex ==
                        allQuestion[currentQuestionIndex]["correctAnswer"]) {
                      score++;
                    }
                setState((){});
              }
            },
            child:Text(
            "A.${allQuestion[currentQuestionIndex]["Option"][0]}",
            style:const TextStyle(
              fontSize:25,
              fontWeight: FontWeight.w500,
              color:Colors.black,
           ),
           ),
          ),
        ),
        const SizedBox(
          height:35,
        ),
              //OPTION 2
        SizedBox(
          width:350,
          height:50,
          child:ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(1),
            ),
            onPressed:(){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex =1;
                if (selectedAnswerIndex ==
                        allQuestion[currentQuestionIndex]["correctAnswer"]) {
                      score++; 
                    }
                setState((){});
              }
            },
            child:Text(
              "B.${allQuestion[currentQuestionIndex]["Option"][1]}",
              style:const TextStyle(
                fontSize:25,
                fontWeight:FontWeight.w500,
                color:Colors.black,
            ),
          ),
          ),
        ),
        const SizedBox(
          height:25,
        ),
            //OPTION 3

        SizedBox(
          width:350,
          height:50,
          child:ElevatedButton(
            style:ButtonStyle(
              backgroundColor: checkAnswer(2),
            ),
            onPressed:(){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex =2;
                if (selectedAnswerIndex ==
                        allQuestion[currentQuestionIndex]["correctAnswer"]) {
                      score++;
                    }
                setState((){});
              }
            },
            child:Text(
              "C.${allQuestion[currentQuestionIndex]["Option"][2]}",
              style:const TextStyle(
                fontSize:25,
              fontWeight:FontWeight.w500,
              color:Colors.black,
              ),
            ),
          ),
        ),
        const SizedBox(
          height:25,
        ),

              //OPTION 4

        SizedBox(
          width:350,
          height:50,
          child:ElevatedButton(
            onPressed:(){
              if(selectedAnswerIndex == -1){
                selectedAnswerIndex =3;
                if (selectedAnswerIndex ==
                        allQuestion[currentQuestionIndex]["correctAnswer"]) {
                      score++; 
                    }
                setState((){});
              }
            },
            style:ButtonStyle(
              backgroundColor: checkAnswer(3),
            ),
            child:Text(
              "D.${allQuestion[currentQuestionIndex]["Option"][3]}",
              style:const TextStyle(
                fontSize:25,
                fontWeight: FontWeight.w500,
                color:Colors.black,
                ),
            ),
          ),
        ),
      ],
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        if(selectedAnswerIndex != -1){

          if(currentQuestionIndex < allQuestion.length-1){
             currentQuestionIndex++;
        }
        else{
          questionPage = false;
        }
        selectedAnswerIndex=-1;
        setState(() {});
      }
      },
      backgroundColor: Colors.blue,
      child:const Icon(
        Icons.forward,
        color:Colors.black87,
      ),
    ),
    );
    }
    else{
      return Scaffold(
        appBar:AppBar(
          title:const Text(
            "Quiz Result",
            style:TextStyle(
              fontSize:28,
              fontWeight:FontWeight.w900,
              color:Colors.black,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 131, 75, 101),
        ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              Image.network(
                 
                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDNQP485_aTvAkU8NdD37XUfmctAZwFImvQQ&s",
                height: 250,
              ),
              const SizedBox(
                height:30
                ),
              const Text(
                "Congratulations!!",
                style:TextStyle(
                  fontSize:40,
                  fontWeight: FontWeight.w500,
                  color:Colors.purple,
                ),
              ),
              const SizedBox(height: 30),
               Text(
                "Score: $score / ${allQuestion.length}",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
               ),
                      
                 // Restart the quiz

               const SizedBox(height: 20),
              ElevatedButton(
                onPressed: restartQuiz,
                child: const Text(
                  "Restart Quiz",
                  style: TextStyle(
                    fontSize: 20,
                    ),
                ),
               
              ),
            ],
          ),
        ),
      );
    };
  }
}

