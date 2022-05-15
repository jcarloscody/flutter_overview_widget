import 'package:flutter/material.dart';

import '../../navegacao/pages/page1.dart';

enum PopupMenuPages { container }

class Container222 extends StatelessWidget {
  const Container222({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CONTAINERRRR 222"),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            itemBuilder: (context) => <PopupMenuItem<PopupMenuPages>>[],
          ),
        ],
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
