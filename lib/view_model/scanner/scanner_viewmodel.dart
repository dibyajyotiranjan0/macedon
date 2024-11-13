import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../static/flutter_toast_message/toast_messge.dart';

final scannerProvider = StateNotifierProvider<ScannerNotifier, String>(
  (ref) => ScannerNotifier(),
);

class ScannerNotifier extends StateNotifier<String> {
  ScannerNotifier() : super("");
  String barcodeResult = 'Unknown'; //barcode scanning

  // @override
  // void initState() {
  //   super.initState();
  //   scanBarcodeNormal();
  // }

  Future<void> scanBarcodeFunc() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
      print(barcodeScanRes);
      ShowToast(msg: barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;
    barcodeScanRes = barcodeScanRes;
    state = barcodeScanRes;
  }
}
