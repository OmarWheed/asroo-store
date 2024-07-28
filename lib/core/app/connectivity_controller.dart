import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isConnect(result);
    Connectivity().onConnectivityChanged.listen(isConnect);
  }

  bool isConnect(List<ConnectivityResult> resultStatus) {
    if (resultStatus.contains(ConnectivityResult.none)) {
      isConnected = ValueNotifier(false);
      return false;
    } else if (resultStatus.contains(ConnectivityResult.wifi) ||
        resultStatus.contains(ConnectivityResult.mobile)) {
      isConnected = ValueNotifier(true);
      return true;
    }
    return false;
  }
}
