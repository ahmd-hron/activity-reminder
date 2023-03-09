import 'package:flutter/material.dart';
import 'package:seriese_reminders/ui/screen/sections%20screens/gaming/components/edite_form.dart';
import 'package:seriese_reminders/ui/widgets/close_icon.dart';

class GameForm extends StatefulWidget {
  final String? id;
  const GameForm({this.id, super.key});

  @override
  State<GameForm> createState() => _GameFormState();
}

class _GameFormState extends State<GameForm> {
  bool editeMode = false;

  @override
  void initState() {
    editeMode = widget.id != null;
    super.initState();
  }

  Future<bool> willPop() async {
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: willPop,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_back_ios),
          ),
          title: Text(editeMode ? 'Edite Game' : 'Add a game'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.check,
                  size: 24,
                ))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(child: EditeForm(id: widget.id)),
              ),
            ),
            SizedBox(
              height: 50,
              width: double.maxFinite,
              // child: ElevatedButton(
              //   onPressed: () {},
              //   child: const Text('Add to List'),
              // ),
            )
          ],
        ),
      ),
    );
  }
}
