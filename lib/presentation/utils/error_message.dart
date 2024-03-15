import 'package:flutter/material.dart';

class ErrorMessage {
  static Future<void> showAlert(
    BuildContext context,
    String title,
    String message,
    Color buttonClr,
  ) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Center(
            child: Text(title, textAlign: TextAlign.center),
          ),
          content: Text(message, textAlign: TextAlign.center),
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: IntrinsicWidth(
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width * 0.2,
                    height: 40,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(backgroundColor: buttonClr),
                      onPressed: () {
                        Navigator.of(context).pop(); // Dismiss the alert dialog
                      },
                      child: const Text(
                        'Close',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
