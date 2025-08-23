void main() {
  Map<String, String?> environment = {
    'status': null,
    'user': 'Hanin',
  };
  String Status = environment['status'] ?? 'test';
  Status = Status.toUpperCase();
  String User = environment['user'] ?? 'guest';
  User = User.toUpperCase();

  print("Status :$Status");
  print("User: $User");

  if (Status == 'Prod') {
    print("Prod Ready");
  } else {
    print("Non-prod");
  }
}
