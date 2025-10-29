import 'package:flutter/material.dart';
import 'package:task_app/widgets/no_tasks.dart';

class NoTaskState extends StatelessWidget {
  const NoTaskState({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(children: [Spacer(), NoTasks(), Spacer()]));
  }
}
