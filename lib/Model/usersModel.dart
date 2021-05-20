
class User {

  String status;
  String message;
  List<String> data;

   User({
    this.status,
    this.message,
    this.data,
  });

  factory User.fromJson(Map json) => User(
        status: json["status"],
        message: json["message"],
        data: List<String>.from(json["data"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x)),
      };
  
}
