import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalPushNotificationHelper {
  // static final FlutterLocalNotificationsPlugin
  //     _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  // static Future<void> initialize() async {
  //   // Initialize the plugin
  //   const initializationSettingsAndroid =
  //       AndroidInitializationSettings('@mipmap/ic_launcher');
  //   final initializationSettingsIOS = MacOSInitializationSettings();
  //   final initializationSettings = InitializationSettings(
  //       android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
  //   await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  // }

  // static Future<void> showNotification({
  //   int id = 0,
  //   String title = '',
  //   String body = '',
  // }) async {
  //   // Configure the notification
  //   final androidPlatformChannelSpecifics = AndroidNotificationDetails(
  //       'channel_id', 'channel_name',
  //       importance: Importance.max, priority: Priority.high);
  //   final iOSPlatformChannelSpecifics = IOSInitializationSettings();
  //   final platformChannelSpecifics = NotificationDetails(
  //       android: androidPlatformChannelSpecifics,
  //       iOS: iOSPlatformChannelSpecifics);

  //   // Show the notification
  //   await _flutterLocalNotificationsPlugin.show(
  //       id, title, body, platformChannelSpecifics);
  // }

  // static Future<void> cancelNotification(int id) async {
  //   // Cancel a specific notification
  //   await _flutterLocalNotificationsPlugin.cancel(id);
  // }

  // static Future<void> cancelAllNotifications() async {
  //   // Cancel all notifications
  //   await _flutterLocalNotificationsPlugin.cancelAll();
  // }
}
