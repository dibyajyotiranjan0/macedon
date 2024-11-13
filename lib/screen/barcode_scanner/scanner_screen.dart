import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:macedon/view_model/scanner/scanner_viewmodel.dart';

class ScannerScreen extends ConsumerWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scanner"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            // height: 300,
            width: double.infinity,
            "assets/image/barcode_scanner_template.png",
            fit: BoxFit.contain,
          ),
          ElevatedButton(
              onPressed: () {
                // context.push('/scanner/barcode', extra: {'id': "2"});
                ref.watch(scannerProvider.notifier).scanBarcodeFunc();
              },
              child: Text("Scan"))
        ],
      ),
    );
  }
}
