import 'package:flutter/material.dart';

class Detalhes extends StatefulWidget {
  const Detalhes({Key? key, required this.nome}) : super(key: key);

  final nome;
  @override
  State<Detalhes> createState() => _DetalhesState();
}

class _DetalhesState extends State<Detalhes> {
  late String params;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var p = ModalRoute.of(context)?.settings.arguments as String;
      params = p;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('detalhe   $params   e ${widget.nome}'),
      ),
      body: ElevatedButton(
        child: const Text('para home'),
        onPressed: () {
          Navigator.of(context)
              .pushNamed('/', arguments: {'args': 'chegou na home'});
        },
      ),
    );
  }
}
