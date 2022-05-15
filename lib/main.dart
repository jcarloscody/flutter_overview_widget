import 'package:flutter/material.dart';
import 'package:overv/home_page/home_page.dart';
import 'package:overv/imagens/img.dart';
import 'package:overv/navegacao/pages/page1.dart';
import 'package:overv/navegacao/params/page1params.dart';

import 'navegacao/pages/page2.dart';
import 'navegacao/pages/page3.dart';
import 'navegacao/pages/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Imagem(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/pagina1': (context) => const Page1(),
        '/pagina2': (context) => const Page2(),
        '/pagina3': (context) => const Page3(),
        '/pagina4': (context) => const Page4(),
        '/pagina1params': (context) => const Page1Params(),
      },
    );
  }
}
