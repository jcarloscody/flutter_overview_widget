import 'package:flutter/material.dart';
import 'package:overv/navegacao/pages/page2.dart';
import 'package:overv/navegacao/pages/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 2"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (builder) {
                    return const Page3();
                  },
                  settings: const RouteSettings(name: "pagina3"),
                ),
              );
            },
            child: const Text("pagina 3 - via page"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/pagina3');
            },
            child: const Text("pagina 3 - via named"),
          ),
        ],
      )),
    );
  }
}
