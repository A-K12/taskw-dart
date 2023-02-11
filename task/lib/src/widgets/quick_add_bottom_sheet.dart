import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:task/task.dart';

class QuickAddBottomSheet extends StatefulWidget {
  const QuickAddBottomSheet({super.key});

  @override
  _QuickAddState createState() => _QuickAddState();
}

class _QuickAddState extends State<QuickAddBottomSheet> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      show(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }

  void show(BuildContext context) {
    showModalBottomSheet<void>(
        context: context,
        builder: (context) => const AddTaskBottomSheet()
    ).whenComplete(() {
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      } else {
        SystemNavigator.pop();
      }
    });
  }

}
