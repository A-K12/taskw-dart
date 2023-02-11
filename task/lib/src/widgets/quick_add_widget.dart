import 'package:flutter/material.dart';

import 'package:task/task.dart';

class QuickAddWidget extends StatelessWidget {
  const QuickAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          backgroundColor: Colors.transparent,
        ),
        darkTheme: ThemeData.dark(),
        home: const QuickAddBottomSheet()
    );
  }
}