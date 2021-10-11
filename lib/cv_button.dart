import 'package:flutter/material.dart';
import 'package:contact_joshua_app/pdf_page.dart';
import 'package:contact_joshua_app/constants.dart' as constants;

class CVButton extends StatelessWidget {
  const CVButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(
        Icons.description_rounded,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PdfPage()),
        );
      },
      label: const Text(
        'CV',
        style: TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      ),
      backgroundColor: constants.accentPrimary,
    );
  }
}
