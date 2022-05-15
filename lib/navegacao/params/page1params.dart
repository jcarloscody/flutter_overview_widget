import 'package:flutter/material.dart';
import 'package:overv/navegacao/pages/page2.dart';

class Page1Params extends StatefulWidget {
  const Page1Params({Key? key}) : super(key: key);

  @override
  State<Page1Params> createState() => _Page1ParamsState();
}

class _Page1ParamsState extends State<Page1Params> {
  //MELHOR FORMA DE PEGAR PARAMETROS
  late String parametroInitState;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        final nome = ModalRoute.of(context)!.settings.arguments as Map;
        parametroInitState = nome['nome'];
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final parametros = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 4 - PARAMETROS"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("pop"),
          ),
          Center(
            child: Text(parametros['nome']),
          )
        ],
      )),
    );
  }
}
