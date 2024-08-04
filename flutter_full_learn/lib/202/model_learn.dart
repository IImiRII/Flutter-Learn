// https://jsonplaceholder.typicode.com/posts
class PostModel1 {
  // array ile basliyor ve 4 farkli icerik aliyor
  // dart dilinde degerler initilaze edilmek zorunda
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  PostModel2(this.userId, this.id, this.title, this.body);

  int userId;
  int id;
  String title;
  String body;
}

class PostModel3 {
  PostModel3(this.userId, this.id, this.title, this.body);
  // final koyarsak sadece constructor cagrildiginda icerikler atanabilir
  final int userId;
  final int id;
  final String title;
  final String body;
}

class PostModel4 {
  PostModel4(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  final int userId;
  final int id;
  final String title;
  final String body;
}

class PostModel5 {
  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;

  // encapsulation
  int get userId => _userId;

  final int _userId;
  final int _id;
  final String _title;
  final String _body;
  /*
  {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
   */
}

class PostModel6 {
  PostModel6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
// late --> bu deger sonradan gelecek
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;
}

class PostModel7 {
  PostModel7({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  }) {
    _userId = userId;
    _id = id;
    _title = title;
    _body = body;
  }
// late --> bu deger sonradan gelecek
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;
}

// en dogru kullanim!
class PostModel8 {
  PostModel8({this.userId, this.id, this.title, this.body});

  void updateBody(String? data) {
    //data.length; bu kisimda hata verdi
    if (data != null && data.isNotEmpty) {
      //data.length; ancak burada hata vermedi cunku artik data bir string
      body = data;
    }
  }

  final int? userId;
  final int? id;
  final String? title;
  String? body;

  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
