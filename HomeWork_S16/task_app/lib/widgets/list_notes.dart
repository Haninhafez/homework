import 'package:flutter/material.dart';
import 'package:task_app/model/note_model.dart';
import 'package:task_app/widgets/task_card.dart';

class ListNotes extends StatelessWidget {
  final List<Note> notes;
  ListNotes({super.key, required this.notes});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TaskCard(note: notes[index]);
      },
      itemCount: notes.length,
    );
  }
}
