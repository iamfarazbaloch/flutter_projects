import 'package:hive/hive.dart';

final _myBox = Hive.box('habit_tracker_app');

class HabitData {
  List<List<dynamic>> habitDone = [];

  void defaultData() {
    habitDone = [
      ["Run", false],
      ["Walk", false],
    ];
    updateData();
  }

  void loadData() {
    habitDone = List<List<dynamic>>.from(
      _myBox.get("CURRENT_HABIT_LIST"),
    );
  }

  void updateData() {
    _myBox.put("CURRENT_HABIT_LIST", habitDone);
  }
}
