import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriese_reminders/providers/section_provider.dart';
import 'package:seriese_reminders/util/size_config.dart';

class SectionsListCheck extends StatelessWidget {
  const SectionsListCheck({super.key});

  @override
  Widget build(BuildContext context) {
    final sectionsP = Provider.of<SectionsProvider>(context);
    print('should build ${sectionsP.allSections.length} item now ');
    return Container(
      color: Colors.grey.shade300,
      height: 400,
      padding: const EdgeInsets.only(left: 1, right: 1),
      child: ListView(
        children: sectionsP.allSections
            .map(
              (e) => Column(children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Checkbox(value: false, onChanged: (v) {}),
                      Text(e.title),
                      Icon(e.icon),
                    ],
                  ),
                ),
                const Divider()
              ]),
            )
            .toList(),
      ),
    );
  }
}
