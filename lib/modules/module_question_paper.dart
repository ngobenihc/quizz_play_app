class QuestionPaperModuleAnswers {
  String? id;
  String? tittle;
  String? imageUrl;
  String? description;
  int timeSeconds;
  List<Question>? questions;

  QuestionPaperModuleAnswers(
      {this.id,
      this.tittle,
      this.imageUrl,
      this.description,
      required this.timeSeconds,
      required this.questions});

  QuestionPaperModuleAnswers.fromJson(Map<String, dynamic> json) :
    id = json["id"],
    tittle = json["tittle"],
    imageUrl = json["imageUrl"],
    description = json["description"],
    timeSeconds = json["timeSeconds"],

    questions = (json["questuins"] as List).map((dynamic e) => Question.fromJson(e as Map<String, dynamic>)).toList();



  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["tittle"] = this.tittle;
    data["image_Url"] = this.imageUrl;
    data["description"] = this.description;
    data["timeSecond"] = this.timeSeconds;
    // if(this.questions != null){
    //   data["questions"] = this.questions.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}

class Question{
  String? id;
  String? question;
  List<Answers> answers;
  String? correctAnswer;

  Question(this.id,this.question,this.answers,this.correctAnswer);
  Question.fromJson(Map<String, dynamic> json) :
    id = json["id"],
    question = json["questin"],
  
    answers = (json["answers"] as List).map((e) => Answers.fromJson(e)).toList(),
      
   correctAnswer = json["correctAnswer"];
  

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["question"] = this.question;
    

    if(this.answers = !=null){
      data["answers"] = this.answers.map((v) => v.toJson()).toList();
    }
    data["correctAnswer"] = this.correctAnswer;
    return data;
  }

}

class Answers{
  String? indetifier;
  String? answer;
  Answers({this.indetifier, this.answer});
  Answers.fromJson(Map<String, dynamic>json):
    indetifier = json["indentifier"],
    answer =json["Answer"];

  
  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["indentifier"] = this.indetifier;
    data["Answer"]= this.answer;
    return data;

  }
}
