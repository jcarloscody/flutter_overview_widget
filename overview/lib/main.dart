import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:overv/lendo_json/cidades_page.dart';
import 'package:overv/popup_menu_button/container/container_page.dart';
import 'package:overv/navegacao/pages/page1.dart';
import 'package:overv/navegacao/params/page1params.dart';
import 'package:overv/popup_menu_button/start.dart';

import 'navegacao/pages/page2.dart';
import 'navegacao/pages/page3.dart';
import 'navegacao/pages/page4.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Imagem(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePageblbl(),
        '/pagina1': (context) => const Page1(),
        '/pagina2': (context) => const Page2(),
        '/pagina3': (context) => const Page3(),
        '/pagina4': (context) => const Page4(),
        '/pagina1params': (context) => const Page1Params(),
        '/lendo_json': ((context) => const CidadesPage()),
      },
    );
  }
}
