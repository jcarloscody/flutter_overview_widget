import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:overv/dialogs/dialog_modal.dart';

class DialogsWidget extends StatelessWidget {
  const DialogsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            // barrierDismissible: false,
            builder: (context) => DialogModal(context),
          );
        },
        child: Text('dialogd'),
      ),
    );
  }
}
