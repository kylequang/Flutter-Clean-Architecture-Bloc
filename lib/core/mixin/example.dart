import 'package:flutter/material.dart';

/// Base mixin for common functionality.
mixin BaseMixin<T extends StatefulWidget> on State<T> {
  /// Show a dialog with the given message.
  Future<void> showDialogMessage(String message) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(message),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  /// Show a progress indicator.
  void showProgressIndicator() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 16.0),
              Text('Loading...'),
            ],
          ),
        );
      },
    );
  }

  /// Hide the progress indicator.
  void hideProgressIndicator() {
    Navigator.of(context).pop();
  }
}
