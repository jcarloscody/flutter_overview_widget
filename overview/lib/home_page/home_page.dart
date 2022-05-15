import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:overv/imagens/img.dart';

import '../navegacao/pages/page1.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste"),
        backgroundColor: Colors.black54,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.ac_unit_rounded),
          )
        ],
      ),
      endDrawer: const Drawer(
        backgroundColor: Colors.black38,
        child: Center(
          child: Text("k"),
        ),
      ),
      drawer: Drawer(
        width: 50,
        backgroundColor: Colors.blue[500],
        child: const Center(child: Text("R")),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const Page1(),
                    settings: RouteSettings(name: "pagina1")),
              );
            },
            child: const Text('page1'),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.amber,
                border: const Border(
                  bottom: BorderSide(
                    width: 5,
                    color: Colors.black45,
                  ),
                  left: BorderSide(
                    width: 5,
                    color: Colors.brown,
                  ),
                  top: BorderSide(
                    width: 5,
                    color: Colors.blue,
                  ),
                  right: BorderSide(
                    width: 5,
                    color: Colors.green,
                  ),
                ),
                borderRadius: BorderRadius.circular(100),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(2, 2),
                  ),
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(-5, 5),
                    blurRadius: 10,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
