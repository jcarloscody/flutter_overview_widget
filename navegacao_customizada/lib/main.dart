import 'package:flutter/material.dart';
import 'package:navegacao_customizada/core/navigator_observer_custom.dart';
import 'package:navegacao_customizada/pages/detalhe.dart';
import 'package:navegacao_customizada/pages/detalhe2.dart';
import 'package:navegacao_customizada/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => const HomePage(),
          );
        }

        if (settings.name == '/detalhes') {
          var nome = settings.arguments;
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => Detalhes(nome: nome),
          );
        }

        if (settings.name == "/detalhes2") {
          var nome = settings.arguments;
          return MaterialPageRoute(
            builder: (context) => Detalhes2(nome: nome),
            settings: settings,
          );
        }
      },
      navigatorObservers: [NavigatorObserverCustom()],
    );
  }
}
