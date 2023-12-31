import 'package:book/app/shared/constant.dart';
import 'package:flutter/material.dart';

class AppBarAssignment extends StatelessWidget implements PreferredSizeWidget {
  const AppBarAssignment({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1,
      backgroundColor: Colors.white,
      title: Text(
        "Assignment",
        style: TextStyle(
          color: purple,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      iconTheme: IconThemeData(color: Colors.grey),
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
