void main() {
  Map<String, String?> numberPhone = {
    'phone': null,
  };
  if (numberPhone['phone'] == null) {
    print("No phone number Found");
    numberPhone['phone'] = '01013513830';
  }
  print("Phone number lenght:${numberPhone['phone']!.length}");
}
