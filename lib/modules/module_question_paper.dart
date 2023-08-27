class QuestionPaperModuleAnswers {
  final String? id;
  final String? tittle;
  final String? imageUrl;
  final String? description;
  final int timeSeconds;
  List<Question> questions;

  QuestionPaperModuleAnswers(
      {this.id,
      this.tittle,
      this.imageUrl,
      this.description,
      this.timeSeconds,
      this.questions});

  QuestionPaperModuleAnswers.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    tittle = json["tittle"];
    imageUrl = json["imageUrl"];
    description = json["description"];
    timeSeconds = json["timeSeconds"];

    if (json["questions"] != null) {
      question = new List<Question>();
      json["questions"].forEach((v) {
        question.add(new Questions.fromJson((v)));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["tittle"] = this.tittle;
    data["image_Url"] = this.imageUrl;
    data["description"] = this.description;
    data["timeSecond"] = this.timeSeconds;
    if(this.question = !=null){
      data["questions"] = this.questions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Question{
  final String? id;
  final String? question;
  List<Answers> answers;
  final String? correctAnswers;

  Question(this.id,this.question,this.answers,this.correctAnswers);
  Question.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    question = json["questin"];
  

    if (json["answers"] != null) {
      answers = new List<Anwers>();
      json["questions"].forEach((v) {
        question.add(new answers.fromJson((v)));
      })
}
