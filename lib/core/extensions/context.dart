import 'package:flutter/material.dart';
import 'package:flutter_chat_app/config/constants.dart';

extension AppBuildContext on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);

  double? get iconSize => IconTheme.of(this).size;

  EdgeInsets get padding => MediaQuery.of(this).padding;

  double responsive(double size, {Axis axis = Axis.vertical}) {
    final currentSize =
        axis == Axis.horizontal ? screenSize.width : screenSize.height;
    final designSize = axis == Axis.horizontal
        ? AppConstants.designScreenSize.width
        : AppConstants.designScreenSize.height;
    return size * currentSize / designSize;
  }

  // showModelBottomSheet
  void showModel(Widget child) {
    showModalBottomSheet<dynamic>(
      context: this,
      backgroundColor: Colors.transparent,
      builder: (context) => child,
    );
  }
}
