import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HabitTile extends StatelessWidget {
  final String title;
  final bool isDone;
  final void Function(bool?) onChanged;
  final void Function(BuildContext)? onDelete;
  const HabitTile({
    super.key,
    required this.title,
    required this.isDone,
    required this.onChanged,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: onDelete,
              icon: Icons.delete,
              spacing: 6,
              backgroundColor: Colors.red,
              label: 'Delete',
              borderRadius: BorderRadius.circular(14),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.blue.shade400,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              Checkbox(
                hoverColor: Colors.blueGrey,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                activeColor: Colors.black,
                focusColor: Colors.blue,
                value: isDone,
                onChanged: onChanged,
                side: BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
