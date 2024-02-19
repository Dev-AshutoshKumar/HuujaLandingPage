import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title, content;
  final IconData icons;

  const CustomCard({super.key, required this.title, required this.content, required this.icons});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 350,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            child: Icon(
              icons,
              color: Colors.lightBlue,
              size: 18,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Text(
                    content,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
