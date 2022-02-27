class User {
  final String username;
  final String email;
  final String password;

  const User({
    required this.username,
    required this.email,
    required this.password,
  });
}

List<User> users = const [
  User(
    email: "email01@gmail.com",
    username: "email01",
    password: "1234",
  ),
  User(
    email: "email02@gmail.com",
    username: "email02",
    password: "1234",
  )
];
