class User {
  final String id;
  final String name;
  final String email;
  final String role;
  final String token;
  final String username;
  final String phone;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
    required this.token,
    required this.username,
    required this.phone
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["_id"] ?? "",
    name: json["name"] ?? "",
    email: json["email"] ?? "",
    role: json["role"] ?? "",
    token: json["token"] ?? "",
    phone: json["phone"] ?? "",
    username: json["username"] ?? ""
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "email": email,
    "role": role,
    "token": token,
    "phone": phone,
    "username": username
  };
}
