import 'package:flutter/material.dart';
import 'package:habit_tracker_app/components/habit_tile.dart';
import 'package:habit_tracker_app/components/my_floating_action_button.dart';
import 'package:habit_tracker_app/components/my_new_habbit.dart';
import 'package:habit_tracker_app/data/habit_data.dart';
import 'package:hive_flutter/adapters.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HabitData db = HabitData();
  final _myBox = Hive.box("habit_tracker_app");

  @override
  void initState() {
    super.initState();
    if (_myBox.get("CURRENT_HABIT_LIST") == null) {
      db.defaultData();
    } else {
      db.loadData();
    }
  }

  void onChanged(bool? value, int index) {
    setState(() {
      db.habitDone[index][1] = value!;
    });
    db.updateData();
  }

  final newHabbitController = TextEditingController();

  void addNewHabbit() {
    showDialog(
      context: context,
      builder: (context) {
        return MyNewHabbit(
          controller: newHabbitController,
          onSaveNewHabbit: onSaveNewHabbit,
          onCancel: onCancel,
        );
      },
    );
  }

  void onSaveNewHabbit() {
    setState(() {
      db.habitDone.add([newHabbitController.text, false]);
    });
    newHabbitController.clear();
    Navigator.of(context).pop();
    db.updateData();
  }

  void onCancel() {
    newHabbitController.clear();
    Navigator.of(context).pop();
  }

  void onDelete(int index) {
    setState(() {
      db.habitDone.removeAt(index);
    });
    db.updateData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingActionButton(
        onPressed: addNewHabbit,
      ),
      body: ListView.builder(
        itemCount: db.habitDone.length,
        itemBuilder: (context, index) {
          return HabitTile(
            title: db.habitDone[index][0],
            isDone: db.habitDone[index][1],
            onChanged: (value) => onChanged(value, index),
            onDelete: (value) => onDelete(index),
          );
        },
      ),
    );
  }
}
