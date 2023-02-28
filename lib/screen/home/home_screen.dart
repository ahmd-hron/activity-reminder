import 'package:flutter/material.dart';
import 'package:seriese_reminders/screen/home/components/sections_list.dart';
import 'package:seriese_reminders/util/size_config.dart';
import 'package:seriese_reminders/widgets/drawer/drawer_icon.dart';
import 'package:seriese_reminders/widgets/drawer/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.instance.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        leading: const DrawerIcon(),
      ),
      body: const SectinoList(),
      drawer: const MainDrawer(),
    );
  }
}
