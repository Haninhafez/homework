void main() {
  List<String> animals = ["Cat", "Dog", "Mouse"];
  animals.add("penguin");
  animals.removeLast();
  animals[1] = "Owl";
  print(animals);
  print(animals.length);
}
