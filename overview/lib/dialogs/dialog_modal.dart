import 'package:flutter/material.dart';

class DialogModal extends Dialog {
  DialogModal(BuildContext context)
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              children: [
                Text('data'),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Fechar'),
                ),
              ],
            ),
          ),
        );
}
