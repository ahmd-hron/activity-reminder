import 'package:flutter/material.dart';
import 'package:seriese_reminders/ui/widgets/drawer/sections_list_check.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({super.key});

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  bool showSections = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1),
              ),
            ),
            child: InkWell(
              onTap: () {
                setState(() => showSections = !showSections);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.category),
                  const Text('sections'),
                  showSections
                      ? const Icon(Icons.expand_less_outlined)
                      : const Icon(Icons.expand_circle_down_outlined)
                ],
              ),
            ),
          ),
          if (showSections) const SectionsListCheck()
        ],
      ),
    );
  }
}
