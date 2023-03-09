import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Scaffold.of(context).openDrawer(),
      icon: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(
                width: 1,
                color: Theme.of(context).appBarTheme.iconTheme!.color!)),
        child: const Icon(
          Icons.menu_sharp,
        ),
      ),
    );
  }
}
