// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:developer';
import 'dart:html' as html;
import 'package:flutter/services.dart';

class PDFService {
  static Future<void> downloadFromAssets(
      String assetPath, String fileName) async {
    try {
      // Load asset as bytes
      final ByteData data = await rootBundle.load(assetPath);
      final Uint8List bytes = data.buffer.asUint8List();

      // Create blob with PDF MIME type
      final blob = html.Blob([bytes], 'application/pdf');

      _triggerDownload(blob, fileName);
    } catch (e) {
      log('Error downloading PDF from assets: $e');
      rethrow;
    }
  }

  static void _triggerDownload(html.Blob blob, String fileName) {
    // Ensure filename ends with .pdf
    if (!fileName.toLowerCase().endsWith('.pdf')) {
      fileName = '$fileName.pdf';
    }

    // Create download URL
    final url = html.Url.createObjectUrlFromBlob(blob);

    // Create anchor element with specific attributes
    final anchor = html.AnchorElement()
      ..href = url
      ..style.display = 'none'
      ..download = fileName
      ..setAttribute('download', fileName)
      ..setAttribute('target', '_blank')
      ..setAttribute('type', 'application/pdf');

    // Add to document body
    html.document.body?.children.add(anchor);

    // Trigger download
    anchor.click();

    // Clean up with a small delay to ensure download starts
    Future.delayed(const Duration(milliseconds: 100), () {
      html.document.body?.children.remove(anchor);
      html.Url.revokeObjectUrl(url);
    });
  }
}
