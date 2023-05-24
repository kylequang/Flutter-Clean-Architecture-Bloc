import 'package:permission_handler/permission_handler.dart';

class RequestPermissionManager {
  // Method to request a single permission
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }

  // Method to request multiple permissions
  static Future<Map<Permission, PermissionStatus>> requestPermissions(
      List<Permission> permissions) async {
    final statuses = await permissions.request();
    return statuses;
  }

  // Method to check if a permission is granted
  static Future<bool> isPermissionGranted(Permission permission) async {
    final status = await permission.status;
    return status.isGranted;
  }
}
