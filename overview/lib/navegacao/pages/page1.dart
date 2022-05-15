import 'package:flutter/material.dart';
import 'package:overv/navegacao/pages/page2.dart';
import 'package:overv/navegacao/params/page1params.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 1"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) {
                    return const Page2();
                  },
                  settings: const RouteSettings(name: "pagina2"),
                ),
              );
            },
            child: const Text("pagina 2 - via page"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/pagina2');
            },
            child: const Text("pagina 2 - via named"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/pagina1params',
                arguments: {'nome': 'carlos'},
              );
            },
            child: const Text("pagina 2 - via named - parametro "),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const Page1Params(),
                  settings: const RouteSettings(
                      name: 'pagina1params', arguments: {'nome': 'josue'}),
                ),
              );
            },
            child: const Text("pagina 2 - via page - com params"),
          )
        ],
      )),
    );
  }
}
