import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final dynamic color;
  final dynamic textColor;
  final String buttonText;
  final dynamic buttonTapped;

  const MyButton({
    required this.buttonTapped,
    required this.color,
    required this.buttonText,
    required this.textColor,
    super.key,
  });

  @override
  build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTapped,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ClipRRect(borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor, fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
