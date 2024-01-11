import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soz50/generated/codegen_loader.g.dart';
import 'package:soz50/generated/locale_keys.g.dart';

Future<void> main() async {
  WidgetsFlutterBinding();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      assetLoader: const CodegenLoader(),
      saveLocale: true,
      supportedLocales: const [
        Locale('en'),
        Locale('uz'),
        Locale('ru'),
      ],
      path:
          'lib/assets/strings', // <-- change the path of the translation files
      fallbackLocale: const Locale('en'), child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final controller = PageController();
  List<String> ls = [
    LocaleKeys.word1,
    LocaleKeys.word2,
    LocaleKeys.word3,
    LocaleKeys.word4,
    LocaleKeys.word5,
    LocaleKeys.word6,
    LocaleKeys.word7,
    LocaleKeys.word8,
    LocaleKeys.word9,
    LocaleKeys.word10,
    LocaleKeys.word11,
    LocaleKeys.word12,
    LocaleKeys.word13,
    LocaleKeys.word14,
    LocaleKeys.word15,
    LocaleKeys.word16,
    LocaleKeys.word17,
    LocaleKeys.word18,
    LocaleKeys.word19,
    LocaleKeys.word20,
    LocaleKeys.word21,
    LocaleKeys.word22,
    LocaleKeys.word23,
    LocaleKeys.word24,
    LocaleKeys.word25,
    LocaleKeys.word26,
    LocaleKeys.word27,
    LocaleKeys.word28,
    LocaleKeys.word29,
    LocaleKeys.word30,
    LocaleKeys.word31,
    LocaleKeys.word32,
    LocaleKeys.word33,
    LocaleKeys.word34,
    LocaleKeys.word35,
    LocaleKeys.word36,
    LocaleKeys.word37,
    LocaleKeys.word38,
    LocaleKeys.word39,
    LocaleKeys.word40,
    LocaleKeys.word41,
    LocaleKeys.word42,
    LocaleKeys.word43,
    LocaleKeys.word44,
    LocaleKeys.word45,
    LocaleKeys.word46,
    LocaleKeys.word47,
    LocaleKeys.word48,
    LocaleKeys.word49,
    LocaleKeys.word50,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: context.locale,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      home: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            body: PageView(
              controller: controller,
              children: ls
                  .map(
                    (e) => Center(
                      child: Text(
                        e.tr(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            bottomNavigationBar: BottomAppBar(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.setLocale(const Locale('uz'));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent),
                        alignment: Alignment.center,
                        child: const Text("O'zbekcha"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.setLocale(const Locale('ru'));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent),
                        alignment: Alignment.center,
                        child: const Text("Русский"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.setLocale(const Locale('en'));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blueAccent),
                        alignment: Alignment.center,
                        child: const Text("English"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
