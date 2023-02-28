import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seriese_reminders/models/section.dart';

class SectionView extends StatelessWidget {
  const SectionView({super.key});

  @override
  Widget build(BuildContext context) {
    final section = Provider.of<Section>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        child: InkWell(
          onTap: () => Navigator.of(context).pushNamed(section.routeName),
          child: GridTile(
            key: ValueKey(section.id),
            footer: Container(
              alignment: Alignment.center,
              height: 30,
              color: Colors.black.withOpacity(0.6),
              child: Text(
                section.title,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            child: SizedBox(
              child: ClipRRect(
                child: Image.network(
                  section.imageUrl,
                  errorBuilder: (context, error, stackTrace) =>
                      const Text('Failed getting image'),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
