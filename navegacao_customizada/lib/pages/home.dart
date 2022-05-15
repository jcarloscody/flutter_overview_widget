import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var p = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    return Scaffold(
      appBar: AppBar(
        title: Text('home ${p?['args']} }'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            child: const Text('para detalhe '),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed('/detalhes', arguments: 'chegou no detalhes');
            },
          ),
          ElevatedButton(
            child: const Text('para detalhe2 '),
            onPressed: () async {
              print(" O CARA ENTROU EM DETALHE");

              final retorno = await Navigator.of(context)
                  .pushNamed('/detalhes2', arguments: 'chegou no detalhes');

              print(" O CARA VOLTOU DO DETALHE");
              print(" retornou ${retorno}");
            },
          ),
        ],
      ),
    );
  }
}
