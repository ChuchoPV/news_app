import 'package:flutter/material.dart';

class ScreenNotification {
  final NotifyType type;
  final String description;

  ScreenNotification({required this.type, required this.description});

  SnackBar get snackbar {
    return SnackBar(
      content: Text(
        description,
        style: const TextStyle(color: Colors.white),
      ),
      backgroundColor: type.color,
      showCloseIcon: true,
      closeIconColor: Colors.white,
    );
  }
}

enum NotifyType {
  info,
  warning,
  success,
  error;

  Color get color {
    switch (this) {
      case NotifyType.info:
        return const Color(0xFF0080E8);
      case NotifyType.warning:
        return const Color(0xFFE89A1B);
      case NotifyType.success:
        return const Color(0xFF2D9D78);
      case NotifyType.error:
        return const Color(0xFFD41818);
    }
  }
}
