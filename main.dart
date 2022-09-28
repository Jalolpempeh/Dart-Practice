import 'dart:math';
import 'dart:core';
import 'dart:io';
String? prompt(String promptText)
{}
double? promptDouble(String promptText)
{
  print(promptText);
 double myNum = double.parse(stdin.readLineSync()!);
 return myNum; 
}
class mathQuestion{
  
 String? question;
 double? answer;
   mathQuestion(String question,
  double answer)
  {
    this.question = question;
  this.answer = answer;
  }
}
void main() {
  List<mathQuestion> questions = [ 
    mathQuestion("3 + 5",8.0),
    mathQuestion("10 - 7",3.0),
    mathQuestion("100 * 5",500.0)];
  for(mathQuestion questionText in questions)
  { double? userAnswer = promptDouble(questionText.question);
   if(userAnswer == questionText.answer)
   {print("Correct!");}
   else{
     print("The correct answer is ${questionText.answer}");
   }
  }
    
}
