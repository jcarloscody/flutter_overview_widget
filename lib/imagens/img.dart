import 'package:flutter/material.dart';
import 'package:overv/navegacao/pages/page1.dart';

class Imagem extends StatelessWidget {
  const Imagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("lllllllllllllllllllllllll");
    print(MediaQuery.of(context).devicePixelRatio);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 200,
              child: Image.asset(
                "assets/img/jc.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://img.freepik.com/fotos-gratis/imagem-aproximada-em-tons-de-cinza-de-uma-aguia-careca-americana-em-um-fundo-escuro_181624-31795.jpg?w=2000",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(
                "pai",
                style: TextStyle(
                  color: Colors.amber,
                  backgroundColor: Colors.blue.withOpacity(0.6),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/img/jc.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Text(
                "pai",
                style: TextStyle(
                  color: Colors.amber,
                  backgroundColor: Colors.blue.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
