import 'package:flutter/material.dart';

class AlertCustomYesNo extends StatefulWidget {
  const AlertCustomYesNo(
      {super.key, required this.buttonText, required this.descritption});

  final String buttonText;
  final String descritption;

  @override
  State<AlertCustomYesNo> createState() => _AlertCustomYesNoState();
}

class _AlertCustomYesNoState extends State<AlertCustomYesNo> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: Text(widget.buttonText),
          content: Text(widget.descritption),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancelar'),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Confirmar'),
              child: const Text('Confirmar'),
            ),
          ],
        ),
      ),
      child: Text(widget.buttonText,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
