import 'package:flutter/material.dart';

class Cusfooter extends StatelessWidget {
  const Cusfooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.g_mobiledata_rounded,
              size: 40,
            )),
        const SizedBox(
          width: 20,
        ),
        IconButton(onPressed: () => {}, icon: const Icon(Icons.facebook)),
      ],
    );
  }
}




