import 'package:flutter/material.dart';
import 'package:seriese_reminders/core/enums/game_network_type.dart';
import 'package:seriese_reminders/core/enums/game_type.dart';
import 'package:seriese_reminders/util/convert_enum.dart';
import 'package:seriese_reminders/util/size_config.dart';
import 'package:seriese_reminders/widgets/dropdown/app_dropdown.dart';
import 'package:seriese_reminders/widgets/photo_preview.dart';

class EditeForm extends StatefulWidget {
  final String? id;

  const EditeForm({super.key, this.id});

  @override
  State<EditeForm> createState() => _EditeFormState();
}

class _EditeFormState extends State<EditeForm> {
  String? gameNetworkType;
  String? ratingValue;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 30)),
          SizedBox(
            width: getPercentScreenWidth(90),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Title'),
              style: const TextStyle(color: Color.fromRGBO(62, 66, 71, 1)),
            ),
          ),
          SizedBox(height: getPercentScreenHeight(2)),
          SizedBox(
            width: getPercentScreenWidth(90),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Short description'),
              style: const TextStyle(color: Color.fromRGBO(62, 66, 71, 1)),
            ),
          ),
          SizedBox(height: getPercentScreenHeight(2)),
          SizedBox(
            width: getPercentScreenWidth(90),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Recommended by'),
              style: const TextStyle(color: Color.fromRGBO(62, 66, 71, 1)),
            ),
          ),
          SizedBox(height: getPercentScreenHeight(2)),
          Container(
            height: 50,
            width: getPercentScreenWidth(90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).inputDecorationTheme.fillColor,
              border: Border.all(
                width: 1,
              ),
            ),
            child: Container(
              width: getPercentScreenWidth(45),
              padding: const EdgeInsets.all(10),
              child: AppDropDown(
                hint: 'game type',
                value: gameNetworkType,
                items: enumToStringList(GameType.values),
                onChanged: (v) {
                  setState(() => gameNetworkType = v);
                },
              ),
            ),
          ),
          SizedBox(height: getPercentScreenHeight(2)),
          SizedBox(
            width: getPercentScreenWidth(90),
            child: TextFormField(
              decoration: const InputDecoration(hintText: 'Discription'),
              style: const TextStyle(color: Color.fromRGBO(62, 66, 71, 1)),
            ),
          ),
          SizedBox(height: getPercentScreenHeight(2)),
          Container(
            height: 50,
            width: getPercentScreenWidth(90),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).inputDecorationTheme.fillColor,
              border: Border.all(
                width: 1,
              ),
            ),
            child: Container(
              width: getPercentScreenWidth(45),
              padding: const EdgeInsets.all(10),
              child: AppDropDown(
                hint: 'Rating',
                value: ratingValue,
                items: stringRating,
                onChanged: (v) {
                  setState(() => ratingValue = v);
                },
              ),
            ),
          ),
          SizedBox(height: getPercentScreenHeight(2)),
          const PhotoPreview()
        ],
      ),
    );
  }
}
