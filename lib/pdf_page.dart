import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';

class PdfPage extends StatelessWidget {
  const PdfPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pdfController = PdfController(
      document: PdfDocument.openAsset('assets/documents/cv-joshua-meyer.pdf'),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Joshua Meyer's CV"),
      ),
      body: Center(
          child: PdfView(
        controller: pdfController,
      )),
    );
  }
}
