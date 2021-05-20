
class Calender {
  String status;
  String message;
  List<Datas> data1;

  Calender({
    this.status,
    this.message,
    this.data1,
  });

  factory Calender.fromJson(Map json) {
    return Calender(
        status: json['status'],
        message: json["message"],
        data1: List<Datas>.from(json["data"].map((x) => Datas.fromJson(x))));
  }
}

class Datas {
  int id;
  String title;
  DateTime date;

  Datas({
    this.id,
    this.title,
    this.date,
  });
  factory Datas.fromJson(Map json) => Datas(
        id: json["id"],
        title: json["title"],
        date: DateTime.parse(json["date"]),
      );
}
