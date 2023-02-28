import 'package:flutter/material.dart';
import 'package:seriese_reminders/util/size_config.dart';

class EditeForm extends StatelessWidget {
  final String? id;
  const EditeForm({super.key, this.id});

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
          //game type
          //game netowrk type
          //description
          //recomended by
          //time optinal
          //mark as done
          //priority drop down
          //add screenshot optional
        ],
      ),
    );
  }
}
