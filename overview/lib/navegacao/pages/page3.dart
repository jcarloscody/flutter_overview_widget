import 'package:flutter/material.dart';
import 'package:overv/navegacao/pages/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 3"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (builder) {
                    return const Page4();
                  },
                  settings: const RouteSettings(name: "pagina4"),
                ),
              );
            },
            child: const Text("pagina 4 - via page - replacement"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed('/pagina4');
            },
            child: const Text("pagina 4 - via named - replacement"),
          ),
        ],
      )),
    );
  }
}
