import 'package:flutter/material.dart';

class CloseIcon extends StatelessWidget {
  const CloseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
                width: 1,
                color: Theme.of(context).appBarTheme.iconTheme!.color!)),
        child: const Icon(
          Icons.close,
        ),
      ),
    );
  }
}
