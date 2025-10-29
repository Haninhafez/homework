import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_app/model/note_model.dart';

class TaskCard extends StatefulWidget {
  final Note note;
  const TaskCard({super.key, required this.note});

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  late String formattedDate;
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    formattedDate = DateFormat('dd/MM/yyyy').format(widget.note.date);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
        shadowColor: Colors.grey,
        child: ListTile(
          title: Text(
            widget.note.title,
            style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              decoration: isChecked
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
            ),
          ),
          subtitle: Text(
            "Created: $formattedDate",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          leading: Checkbox(
            activeColor: Color(0xff006C60),

            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = !isChecked;
              });
            },
          ),
          trailing: Icon(
            Icons.delete_outline_sharp,
            color: Color.fromARGB(255, 224, 127, 112),
            size: 30,
          ),
        ),
      ),
    );
  }
}
