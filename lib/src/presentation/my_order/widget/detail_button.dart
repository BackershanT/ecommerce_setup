import 'package:flutter/material.dart';

class DetailButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const DetailButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (onPressed: onTap,

      style: ElevatedButton.styleFrom(
          side: BorderSide(

        ),
      ), child: Text(title,style: TextStyle(color: Colors.black),));

  }
}
