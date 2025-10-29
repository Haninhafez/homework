import 'package:intl/intl.dart';

class Note {
  String title;

  var date = DateTime.now();
  Note(this.title);

  void CreateNote(String Title) {
    title = Title;

    date;
  }
}

class NoteApp {
  List<Note> Notes = [];
  void addNote(Note newNote) {
    Notes.add(newNote);
  }

  void deleteNote(bool isDeleted) {
    Notes.removeWhere((item) => isDeleted == true);
  }
}
