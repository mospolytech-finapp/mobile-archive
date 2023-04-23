import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactUsDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      backgroundColor: Colors.grey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 12),
            Text(
              'Связаться с нами',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color.fromRGBO(174, 216, 255, 1)),
            ),
            SizedBox(height: 12),
            Text(
              'Почта',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Color.fromRGBO(174, 216, 255, 1)),
            ),
            Text(
              'HelpMe@FINAPP.COM',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: 'HelpMe@FINAPP.COM')).then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email скопирован")));
                  });
                },
                icon: Icon(Icons.copy)),
            SizedBox(height: 20),
            Text(
              'Телефон',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Color.fromRGBO(174, 216, 255, 1)),
            ),
            Text(
              '89996663132',
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            IconButton(
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: '89996663132')).then((_) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Телефон скопирован")));
                  });
                },
                icon: Icon(Icons.copy)),
            SizedBox(height: 12),
            ElevatedButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }
}
