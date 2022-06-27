class Correct {
  Correct({
    required this.message,
    required this.data,
    required this.errors,
    required this.code,
  });
  late final String message;
  late final String data;
  late final List<dynamic> errors;
  late final int code;

  Correct.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'];
    errors = List.castFrom<dynamic, dynamic>(json['errors']);
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['data'] = data;
    _data['errors'] = errors;
    _data['code'] = code;
    return _data;
  }
}
