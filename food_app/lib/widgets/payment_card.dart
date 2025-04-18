import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final String imagePath;
  final String value;
  final String groupValue;
  final ValueChanged<String?> onChanged;

  const PaymentCard({
    super.key,
    required this.imagePath,
    required this.value,
    required this.groupValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = value == groupValue;

    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Image.asset(imagePath, height: 50),
            SizedBox(width: 16),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Credit Card',
                  style: TextStyle(
                    color:
                        isSelected
                            ? Colors.white
                            : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '5105 **** **** 0505',
                  style: TextStyle(
                    color:
                        isSelected
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(),
            Radio<String>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              fillColor: WidgetStateProperty.resolveWith((
                states,
              ) {
                return Colors.black;
              }),
              visualDensity: VisualDensity.compact,
            ),
          ],
        ),
      ),
    );
  }
}
