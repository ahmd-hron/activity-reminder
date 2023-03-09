import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriese_reminders/business_logic/providers/theme_provider.dart';
import 'package:seriese_reminders/business_logic/util/size_config.dart';
import 'package:seriese_reminders/business_logic/util/string_extentions.dart';

class AppDropDown extends StatelessWidget {
  final List<String> items;
  final void Function(String?) onChanged;
  final String? hint;
  final String? value;
  const AppDropDown(
      {required this.items,
      super.key,
      required this.onChanged,
      this.value,
      this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 0, right: 10, top: 5, bottom: 5),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: DropdownButton<String>(
        dropdownColor: Provider.of<ThemeProvider>(context).dropDownColor,
        underline: const SizedBox(),
        //adds padding around dropdownButton
        icon: null,
        iconSize: 0,
        borderRadius: BorderRadius.circular(10),
        isDense: true,
        isExpanded: false,
        value: value,
        hint: Text(hint ?? ''),
        items: menuOptions,
        onChanged: onChanged,
        elevation: 0,
        menuMaxHeight: getPercentScreenHeight(20),
        enableFeedback: true,
        selectedItemBuilder: (context) {
          return items
              .map(
                (e) => SizedBox(
                  width: getPercentScreenWidth(50),
                  child: Text(e.captlaize),
                ),
              )
              .toList();
        },
      ),
    );
  }

  List<DropdownMenuItem<String>> get menuOptions {
    final options = <DropdownMenuItem<String>>[];
    for (var i = 0; i < items.length; i++) {
      var item = DropdownMenuItem<String>(
        value: items[i],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                items[i].captlaize,
              ),
            ),
            if (i != items.length - 1) const Divider()
          ],
        ),
      );
      options.add(item);
    }

    return options;
  }
}
