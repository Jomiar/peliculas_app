import 'package:flutter/material.dart';

class DetaeilsScreen extends StatelessWidget {
  const DetaeilsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: Cambiar luego por una instancia de movie
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';
    return Scaffold(
      body: Container(
        child: Center(
          child: Center(
            child: Text(movie),
            // child: Text('$movie'),
            // child: Text('Details Screen'),
          ),
        ),
      ),
    );
  }
}
