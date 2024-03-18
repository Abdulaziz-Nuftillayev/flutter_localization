import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class KoreanJapan extends StatelessWidget {
  const KoreanJapan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    const Locale("ja", "JP"),
                  );
                },
                child: const Text('Japanese'),
              ),
              MaterialButton(
                color: Colors.greenAccent,
                onPressed: () {
                  context.setLocale(
                    const Locale("ko", "KR"),
                  );
                },
                child: const Text('Korean'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
