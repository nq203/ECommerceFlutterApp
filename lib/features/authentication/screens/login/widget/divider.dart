import 'package:flutter/material.dart';

class Cusdevider extends StatelessWidget {
  const Cusdevider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Divider(
              color: Colors.grey,
              thickness: 0.5,
            )),
        Text("Or sign in with"),
        Flexible(
            child: Divider(
              color: Colors.grey,
              thickness: 0.5,
            )),
      ],
    );
  }
}