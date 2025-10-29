import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_app/model/note_model.dart';
import 'package:task_app/widgets/list_notes.dart';
import 'package:task_app/widgets/no_task_state.dart';
import 'package:task_app/widgets/task_creator.dart';
import 'package:task_app/widgets/no_tasks.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController task = TextEditingController();
  late DateTime date;
  NoteApp noteApp = NoteApp();
  List<Note> Notes = NoteApp().Notes;

  @override
  void initState() {
    super.initState();
    date = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Tasks",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        backgroundColor: Color(0xff9EF3E3),
      ),
      body: Column(
        children: [
          noteApp.Notes.isEmpty
              ? Center(child: NoTasks())
              : ListNotes(notes: noteApp.Notes),
          Spacer(),
          TaskCreator(
            task: task,
            onchange: (Note task) {
              noteApp.addNote(task);
              print(noteApp.Notes.length);
            },
          ),
        ],
      ),
    );
  }
}
