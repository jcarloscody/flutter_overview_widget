import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  String texto = '';

  final formKey =
      GlobalKey<FormState>(); //não pode ser alocado para dois ou mais forms
  final nameEditeController = TextEditingController(); //
  @override
  void dispose() {
    super.dispose();
    nameEditeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  texto = value;
                  setState(() {});
                },
              ),
              Text(texto),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: nameEditeController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Nome completo ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  isDense: true,
                ),
                maxLines: null, //aumento dinâmico com null
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha o campo';
                  }
                },
              ),
              TextFormField(
                controller: nameEditeController,
                onChanged: (value) {},
                decoration: InputDecoration(
                  labelText: 'Password ',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.amber),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                  labelStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  isDense: true,
                ),
                //maxLines: null, //não pode com o obscureText
                obscureText: true,
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Preencha o campo';
                  }
                },
              ),
              DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(
                    child: const Text('Text1'),
                    value: ("categoria1"),
                  ),
                  DropdownMenuItem(
                    child: Text('Text1'),
                    value: "categoria",
                  ),
                ],
                onChanged: (v) {
                  print(v);
                },
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'saudades';
                  }
                },
                value: 'Categoria',
              ),
              ElevatedButton(
                onPressed: () {
                  print(
                      "Formulário Valido? ${formKey.currentState?.validate()}");
                  var valor = formKey.currentState?.validate() ?? false;
                  if (valor) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Formulário Válido')),
                    );
                  }
                  print(nameEditeController.text);
                },
                child: const Text('salvar'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
