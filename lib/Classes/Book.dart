class Book {
  int? _id;
  String? _name;
  String? _author;
  String? _topic;
  int? _pageNumber;

  Book(this._name, this._author, this._topic, this._pageNumber);
  Book.zero() {}
  Book.withId(
      this._id, this._name, this._author, this._topic, this._pageNumber);

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map["name"] = _name;
    map["author"] = _author;
    map["topic"] = _topic;
    map["pageNumber"] = _pageNumber;
    if(_id!=null){
      map["id"] = _id;
    }

    return map;
  }

  Book.fromObject(dynamic o) {
    this.id = int.tryParse(o["id"].toString())!;
    this.name = o["name"];
    this.author = o["author"];
    this.topic = o["topic"];
    this.pageNumber = int.tryParse(o["pageNumber"].toString())!;
  }

  String get topic => _topic!;

  set topic(String value) {
    _topic = value;
  }

  int get pageNumber => _pageNumber!;

  set pageNumber(int value) {
    _pageNumber = value;
  }

  String get author => _author!;

  set author(String value) {
    _author = value;
  }

  String get name => _name!;

  set name(String value) {
    _name = value;
  }

  int get id => _id!;

  set id(int value) {
    _id = value;
  }
}
