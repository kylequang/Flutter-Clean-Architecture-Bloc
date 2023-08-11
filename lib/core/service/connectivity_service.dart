// import 'dart:async';
// import 'dart:io';

// import 'package:connectivity_plus/connectivity_plus.dart';

// class NetworkConnectivity {
//   NetworkConnectivity._();
//   static final _instance = NetworkConnectivity._();
//   static NetworkConnectivity get instance => _instance;
//   final _networkConnectivity = Connectivity();

//   final _controller = BehaviorSubject<Map<ConnectivityResult, bool>>();
//   Stream<Map<ConnectivityResult, bool>> get myStream => _controller.stream;
//   bool isShowDialog = false;
//   Future<bool> initial() async {
//     final ConnectivityResult result =
//         await _networkConnectivity.checkConnectivity();
//     final bool status = await _checkStatus(result);
//     _networkConnectivity.onConnectivityChanged.listen((result) async {
//       await _checkStatus(result);
//       if (isShowDialog && result != ConnectivityResult.none) {
//         getIt<AppRouter>().navigatorKey.currentContext!.popRoute();
//         isShowDialog = false;
//       }
//     });
//     return status;
//   }

//   Future<bool> _checkStatus(ConnectivityResult result) async {
//     bool isOnline = false;
//     try {
//       final result = await InternetAddress.lookup('google.com');
//       isOnline = result.isNotEmpty && result[0].rawAddress.isNotEmpty;
//     } on SocketException catch (_) {
//       isOnline = false;
//     }
//     final Map<ConnectivityResult, bool> data = {result: isOnline};
//     _controller.sink.add(data);
//     if (result == ConnectivityResult.none && isShowDialog == false) {
//       isShowDialog = true;
//       showDialog(
//         barrierDismissible: false,
//         context: getIt<AppRouter>().navigatorKey.currentContext!,
//         builder: (context) => RequestPermissionDialog(
//           context: context,
//           titleText: context.l10n.noInternetConnection,
//           contentText: context.l10n.pleaseConnectInternet,
//           buttonText: context.l10n.goToSetting,
//           pathImage: Assets.images.permissions.wifiNetwrok.path,
//           onButtonTap: () async {},
//           onClosed: () {},
//         ),
//       );
//     }

//     return isOnline;
//   }

//   void disposeStream() => _controller.close();
// }
