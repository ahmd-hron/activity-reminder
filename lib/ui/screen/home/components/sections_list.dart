import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriese_reminders/business_logic/providers/section_provider.dart';
import 'package:seriese_reminders/ui/screen/home/components/section_view.dart';

class SectinoList extends StatefulWidget {
  const SectinoList({super.key});

  @override
  State<SectinoList> createState() => _SectinoListState();
}

class _SectinoListState extends State<SectinoList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sectionP = Provider.of<SectionsProvider>(context);
    print(sectionP.sections.length);
    return SizedBox(
      child: GridView.builder(
        itemCount: sectionP.sections.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 3,
        ),
        itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
          value: sectionP.sections[i],
          builder: (ctx, _) => const SectionView(),
        ),
      ),
    );
  }
}
