import 'package:flutter/material.dart';

class NavigationCard extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const NavigationCard({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: ListTile(
        title: Text(text),
        subtitle: Text('Flutter Everywhere'),
        onTap:
            // Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage())); - Basic Navigation using Flutter

            //Now implementing Navigation using GetX
            // Get.to(() => SecondPage());

            //Using Getx Routes
            onPressed,
      ),
    );
  }
}
