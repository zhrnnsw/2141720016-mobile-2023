

import '../models/data_layer.dart';
import 'package:flutter/material.dart';

class PlanScreen extends StatefulWidget {
  const PlanScreen({super.key});

  @override
  State createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen>{
  Plan plan = Plan();
  late ScrollController scrollController;

  @override
  void initState(){
    super.initState();
    scrollController = ScrollController()   
      ..addListener((){
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Master Plan Zahra'),
      ),
      body:_buildList(),
      floatingActionButton: _buildAddTaskButton(),
    );
  }


  Widget _buildAddTaskButton(){
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        setState(() {
          plan = Plan(
            name: plan.name,
            tasks: List.from(plan.tasks)..add(Task()),
          );
        });
      },
    );
  }

  Widget _buildList(){
    return ListView.builder(
      controller: scrollController,
      keyboardDismissBehavior: Theme.of(context).platform == TargetPlatform.iOS
        ? ScrollViewKeyboardDismissBehavior.onDrag
        : ScrollViewKeyboardDismissBehavior.manual,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) => _buildTaskTile(plan.tasks[index],index),
    );
  }

  Widget _buildTaskTile(Task task, int index){
    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: task.description,
                  complete: selected ?? false,
                ),
            );
          });
        }
      ),
      title: TextFormField(
        initialValue: task.description,
        decoration: const InputDecoration(
          hintText: 'Enter task description',
        ),
        onChanged: (text) {
          setState(() {
            plan = Plan(
              name: plan.name,
              tasks: List<Task>.from(plan.tasks)
                ..[index] = Task(
                  description: text,
                  complete: task.complete,
                ),
            );
          });
        },
      )
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}