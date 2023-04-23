import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactUsDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF3589d7), Color(0xFF02c98d)])),
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 50),
                        const Text(
                          'Связаться с нами',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(Icons.cancel_rounded))
                      ],
                    )),
                    const SizedBox(height: 12),
                    const Text(
                      'Почта',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 13, color: Color(0xFF7DEDCB)),
                    ),
                    GestureDetector(
                      child: const Text(
                        'HELPME@FINAPP.COM',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 15, color: Colors.white, decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        Clipboard.setData(const ClipboardData(text: 'HELPME@FINAPP.COM')).then((_) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text("Email скопирован", style: TextStyle(color: Colors.white))));
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Телефон',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 13, color: Color(0xFF7DEDCB)),
                    ),
                    GestureDetector(
                      child: const Text(
                        '89996663132',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 15, color: Colors.white, decoration: TextDecoration.underline),
                      ),
                      onTap: () {
                        Clipboard.setData(const ClipboardData(text: '89996663132')).then((_) {
                          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text(
                            "Телефон скопирован",
                            style: TextStyle(color: Colors.white),
                          )));
                        });
                      },
                    ),
                    const SizedBox(height: 30)
                  ],
                ))));
  }
}
