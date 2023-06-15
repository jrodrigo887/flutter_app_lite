import 'package:flutter/material.dart';

class AppMain extends StatefulWidget {
  final String title;
  const AppMain({super.key, required this.title});

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(child: Text('Main App view')),
    );
  }
}
