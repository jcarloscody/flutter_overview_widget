import 'package:flutter/material.dart';
import 'package:overv/popup_menu_button/container/container_page.dart';

import '../../navegacao/pages/page1.dart';

enum PopupMenuPages { container }

class HomePageblbl extends StatelessWidget {
  const HomePageblbl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teste"),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (value) {
              switch (value) {
                case PopupMenuPages.container:
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Container222(),
                  ));
                  break;
                default:
              }
            },
            itemBuilder: (context) => <PopupMenuItem<PopupMenuPages>>[
              const PopupMenuItem<PopupMenuPages>(
                child: Text('text 1'),
                value: PopupMenuPages.container,
              ),
              const PopupMenuItem<PopupMenuPages>(
                child: Text('text 2'),
                value: PopupMenuPages.container,
              ),
            ],
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
                //borderRadius: BorderRadius.circular(100),
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
