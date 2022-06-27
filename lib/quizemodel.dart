class Quizee {
  Quizee({
    required this.message,
    required this.data,
    required this.errors,
    required this.code,
  });
  late final String message;
  late final Data data;
  late final List<dynamic> errors;
  late final int code;

  Quizee.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = Data.fromJson(json['data']);
    errors = List.castFrom<dynamic, dynamic>(json['errors']);
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data.toJson();
    _data['errors'] = errors;
    _data['code'] = code;
    return _data;
  }
}

class Data {
  Data({
    required this.questions,
  });
  late final Questions questions;

  Data.fromJson(Map<String, dynamic> json) {
    questions = Questions.fromJson(json['questions']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['questions'] = questions.toJson();
    return _data;
  }
}

class Questions {
  Questions({
    required this.image,
    required this.nextAd,
    required this.options,
    required this.question,
    required this.questionId,
    required this.quizId,
    required this.quizName,
  });
  late final String image;
  late final bool nextAd;
  late final Options options;
  late final String question;
  late final int questionId;
  late final int quizId;
  late final String quizName;

  Questions.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    nextAd = json['next_ad'];
    options = Options.fromJson(json['options']);
    question = json['question'];
    questionId = json['question_id'];
    quizId = json['quiz_id'];
    quizName = json['quiz_name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image'] = image;
    _data['next_ad'] = nextAd;
    _data['options'] = options.toJson();
    _data['question'] = question;
    _data['question_id'] = questionId;
    _data['quiz_id'] = quizId;
    _data['quiz_name'] = quizName;
    return _data;
  }
}

class Options {
  Options({
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
  });
  late final Option1 option1;
  late final Option2 option2;
  late final Option3 option3;
  late final Option4 option4;

  Options.fromJson(Map<String, dynamic> json) {
    option1 = Option1.fromJson(json['option1']);
    option2 = Option2.fromJson(json['option2']);
    option3 = Option3.fromJson(json['option3']);
    option4 = Option4.fromJson(json['option4']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['option1'] = option1.toJson();
    _data['option2'] = option2.toJson();
    _data['option3'] = option3.toJson();
    _data['option4'] = option4.toJson();
    return _data;
  }
}

class Option1 {
  Option1({
    required this.id,
    required this.text,
  });
  late final int id;
  late final List<String> text;

  Option1.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = List.castFrom<dynamic, String>(json['text']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['text'] = text;
    return _data;
  }
}

class Option2 {
  Option2({
    required this.id,
    required this.text,
  });
  late final int id;
  late final List<String> text;

  Option2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = List.castFrom<dynamic, String>(json['text']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['text'] = text;
    return _data;
  }
}

class Option3 {
  Option3({
    required this.id,
    required this.text,
  });
  late final int id;
  late final List<String> text;

  Option3.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = List.castFrom<dynamic, String>(json['text']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['text'] = text;
    return _data;
  }
}

class Option4 {
  Option4({
    required this.id,
    required this.text,
  });
  late final int id;
  late final List<String> text;

  Option4.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = List.castFrom<dynamic, String>(json['text']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['text'] = text;
    return _data;
  }
}
