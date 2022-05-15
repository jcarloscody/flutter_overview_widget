import 'package:flutter/material.dart';

class Detalhes2 extends StatefulWidget {
  const Detalhes2({Key? key, required this.nome}) : super(key: key);

  final nome;
  @override
  State<Detalhes2> createState() => _Detalhes2State();
}

class _Detalhes2State extends State<Detalhes2> {
  String params = '';
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
        title: Text('detalhe2   $params   e ${widget.nome}'),
      ),
      body: ElevatedButton(
        child: const Text('VOLTAR'),
        onPressed: () {
          Navigator.of(context).pop('voce é dez');
        },
      ),
    );
  }
}
