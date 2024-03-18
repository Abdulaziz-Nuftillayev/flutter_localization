import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/pages/korean_japan.dart';

class FrenchLang extends StatelessWidget {
  const FrenchLang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KoreanJapan(),
                  ),
                );
              },
              icon: const Icon(
                Icons.navigate_next,
                size: 40,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            const Text(
              "str_welcome_to_uzbekistan",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ).tr(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    context.setLocale(
                      const Locale("en", "US"),
                    );
                  },
                  child: const Text('EN'),
                ),
                MaterialButton(
                  color: Colors.blueAccent,
                  onPressed: () {
                    context.setLocale(
                      const Locale("ru", "RU"),
                    );
                  },
                  child: const Text('RU'),
                ),
                MaterialButton(
                  color: Colors.greenAccent,
                  onPressed: () {
                    context.setLocale(
                      const Locale("uz", "UZ"),
                    );
                  },
                  child: const Text('UZ'),
                ),
                MaterialButton(
                  color: Colors.pinkAccent,
                  onPressed: () {
                    context.setLocale(
                      const Locale("fr", "FR"),
                    );
                  },
                  child: const Text('FR'),
                ),
              ],
            )
          ],
        ));
  }
}
