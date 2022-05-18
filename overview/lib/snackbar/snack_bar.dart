import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SnackBars extends StatelessWidget {
  const SnackBars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Usuário salvo com sucesso'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Simple Snack')),
          ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Usuário salvo com sucesso'),
                  backgroundColor: Colors.amber,
                  action: SnackBarAction(
                    label: 'Desfazer',
                    onPressed: () {
                      print('Clicado');
                    },
                  ),
                );
                
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
//quando usar vários SnackBar, poderás usar o remover o anterior. TEMO OUTROS MÉTODOS POR AI
                ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Action Snack')),
        ],
      ),
    );
  }
}
