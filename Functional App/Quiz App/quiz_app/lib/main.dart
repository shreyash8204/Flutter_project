import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp()
    );
   }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});

  @override
  State createState() => _QuizeAppState(); 
}

class _QuizeAppState extends State{
  List<Map> allQuestions = [
    {
      'question': 'What is Subhas Chandra Bose popularly known as?',
      'options': ['Chachaji','Netaji','Bapu','Mahatma'],
      'correctAnswer': 1,
    },
    {
      'question':'Which chemical element has the highest electrical conductivity at standard temperature and pressure?',
      'options': ['Silver', 'Gold', 'Copper', 'Platinum'],
      'correctAnswer': 0,
    },
    {
      'question': 'Which mathematical concept did Ramanujan develop largely independently?',
      'options':['Modular forms', 'The Riemann hypothesis', 'Elliptic curves', 'The partition function'],
      'correctAnswer': 3,
    },
    {
      'question': 'What is the only known naturally occurring element with a chemical symbol that does not match its modern English name, but does correspond to its Latin name?',
      'options':['Sodium (Na)', 'Iron (Fe)', 'Potassium (K)', 'Lead (Pb)'],
      'correctAnswer': 2,
    },
    {
      'question':'Which civilization is regarded as the earliest urban civilization in the Indian subcontinent?',
      'options':['Vedic Civilization', 'Mauryan Civilization', 'Indus Valley Civilization', 'Gupta Civilization'],
      'correctAnswer': 2,
    },
    {
      'question': 'Who was the first mathematician to prove that every integer greater than 1 can be written as a unique product of prime number',
      'options': ['Carl Friedrich Gauss', 'Euclid','Leonhard Euler','Pierre de Fermat'],
      'correctAnswer': 1
    },
    {
      'question':'What is the process by which plants make their own food?',
      'options':['Respiration','Germination',' Fermentation','Photosynthesis'],
      'correctAnswer': 3
    },
    {
      'question':'In which continent is the Sahara Desert located?',
      'options':['Asia','Africa','Australia','South America'],
      'correctAnswer': 1
    },
    {
      'question':'Who is Known as the "Missile Man" of India?',
      'options':['Dr.A.P.J. Abdul Kalam', 'Vikram Sarabhai', 'Homi Bhabha', 'Satish Dhawan'],
      'correctAnswer': 0
    },
    {
      'question':' What is the hardest natural substance on Earth?',
      'options':['Gold','Iron','Tungsten','Diamond'],
      'correctAnswer': 3
    }
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  bool isQuestionPage = true;
  int count = 0;

  WidgetStatePropertyAll<Color?> checkAnswer(int answerIndex){
    if(selectedAnswerIndex != -1){
      if(answerIndex == allQuestions[currentQuestionIndex]['correctAnswer']){
        return WidgetStatePropertyAll(Colors.green);
      }else if(selectedAnswerIndex == answerIndex){
        return WidgetStatePropertyAll(Colors.red);
      }else{
        return WidgetStatePropertyAll(null);
      }
    }else{
      return WidgetStatePropertyAll(null);
    }
  }

  @override
  Widget build(BuildContext context){
    return quizAppPage();
  }

  Scaffold quizAppPage(){
    if(isQuestionPage == true){
      return Scaffold(
        appBar: AppBar(title: const Text("QuizApp",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Colors. black,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),

            Row(
              children: [
                const SizedBox(width: 120),
                Text(
                "Question : ${currentQuestionIndex + 1}/${allQuestions.length}",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600, color: const Color.fromARGB(255, 90, 62, 53)),
                ),
              ],
            ),
            const SizedBox(height: 20),
            
            SizedBox(
              height: 150,
              width: 350,
              child:Text(allQuestions[currentQuestionIndex]['question'],
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 70,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(0)),
                onPressed: (){
                  if (selectedAnswerIndex == -1){
                    selectedAnswerIndex = 0;
                     if (selectedAnswerIndex == allQuestions[currentQuestionIndex]['correctAnswer']) {
                        count++;
                    }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][0],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
            ),
            
            const SizedBox(height:30),
            
            SizedBox(
              height: 70,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(1)),
                onPressed: () {
                  if(selectedAnswerIndex == -1){
                    selectedAnswerIndex = 1;
                     if (selectedAnswerIndex == allQuestions[currentQuestionIndex]['correctAnswer']) {
                        count++;
                      }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][1],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
            ),

            const SizedBox(height: 30),
            SizedBox(
              height: 70,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(2)),
                onPressed: () {
                  if(selectedAnswerIndex == -1){
                    selectedAnswerIndex = 2;
                     if (selectedAnswerIndex == allQuestions[currentQuestionIndex]['correctAnswer']) {
                        count++;
                      }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][2],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
            ),

            const SizedBox(height: 30),
            SizedBox(
              height: 70,
              width: 300,
              child: ElevatedButton(
                style: ButtonStyle(backgroundColor: checkAnswer(3)),
                onPressed: () {
                  if(selectedAnswerIndex == -1){
                    selectedAnswerIndex = 3;
                     if (selectedAnswerIndex == allQuestions[currentQuestionIndex]['correctAnswer']) {
                        count++;
                      }
                    setState(() {});
                  }
                },
                child: Text(
                  allQuestions[currentQuestionIndex]['options'][3],
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
            ),
            
              
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:() {
            if (selectedAnswerIndex != -1){
              if(currentQuestionIndex < allQuestions.length - 1) {
                currentQuestionIndex++;
                selectedAnswerIndex = -1;
              }else{
                isQuestionPage = false;
              }
              setState(() {});
            }else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    "Please Select an Option",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
                duration: Duration(seconds: 2),
                backgroundColor: Colors.redAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16),
                  ),
              ),
              ),
              );
            }
          },
          backgroundColor: Colors.blue,
          child: const Text(
            "Next", 
            style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text("Result Screen", style: TextStyle(fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Image.network("https://rukminim2.flixcart.com/image/704/844/j2jbl3k0/trophy-medal/h/4/s/best-student-trophy-award-gift-by-aark-india-pc-00240-by-aark-original-imaetveezwfhqpby.jpeg?q=90&crop=false",
              width: 500,
              height: 400,
              ),
              SizedBox(height: 30),
              Text(
                "Congratulations",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 25),
                Text(
                  "Score : $count/${allQuestions.length}", 
                  style: TextStyle(
                    fontSize: 35, 
                    fontWeight: FontWeight.w700
                    ),
                    ),

                  // Restart Quiz Button
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      currentQuestionIndex = 0;
                      selectedAnswerIndex = -1;
                      isQuestionPage = true;
                      count = 0;
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    ),
                    child: Text(
                      "Restart Quiz",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
             ],
          ),
        ),
      );
    }
  }
}
                
  




