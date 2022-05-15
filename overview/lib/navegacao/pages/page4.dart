import 'package:flutter/material.dart';
import 'package:overv/navegacao/pages/page1.dart';
import 'package:overv/navegacao/pages/page4.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagina 4"),
      ),
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (builder) {
                    return const Page1();
                  },
                  settings: const RouteSettings(name: "pagina1"),
                ),
                ModalRoute.withName("pagina2"),
              );
            },
            child: const Text(
                "pagina 1 - via page - pushAndRemoveUntil, até pagina 2 e push na pagina 1"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("pop"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/pagina1',
                ModalRoute.withName("/pagina2"),
              );
            },
            child: const Text(
                "pagina 1 - via named - pushAndRemoveUntil, até pagina 2 e push na pagina 1"),
          )
        ],
      )),
    );
  }
}
