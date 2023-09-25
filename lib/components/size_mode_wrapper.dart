import 'package:flutter/material.dart';
import 'package:wequil_editor/core/core.dart';

class SizeModeWrapper extends StatelessWidget {
  final SizeMode sizeMode;
  final Widget child;

  const SizeModeWrapper({super.key, required this.sizeMode, required this.child});

  Size getWidthRatioForSizeMode(SizeMode mode) {
    switch (mode) {
      case SizeMode.small:
        return const Size(0.6, 0.6);
      case SizeMode.normal:
        return const Size(0.7, 1.0);
      case SizeMode.large:
        return const Size(0.8, 1.2);
      case SizeMode.massive:
        return const Size(1.0, 1.4);
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size constraint = MediaQuery.sizeOf(context);
    final Size sizeRatio = getWidthRatioForSizeMode(sizeMode);
    final double widthConstraints = constraint.width * sizeRatio.width;
    return Center(
      child: Container(
        constraints: BoxConstraints(
            minWidth: widthConstraints,
            maxWidth: widthConstraints,
            maxHeight: constraint.width * sizeRatio.height),
        child: child,
      ),
    );
  }
}
