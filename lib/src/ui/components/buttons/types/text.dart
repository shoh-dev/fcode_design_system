import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';
import 'package:myspace_design_system/src/ui/components/shared/disabled_component.dart';

Widget _disabled(Widget child, VoidCallback? onPressed) {
  return DisabledComponent(
    isDisabled: onPressed == null,
    child: child,
  );
}

class TextButtonComponent extends ButtonComponent {
  const TextButtonComponent({
    super.key,
    super.onPressed,
    required String text,
    super.icon,
  }) : super(text: text);

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return _disabled(
        TextButton.icon(
          onPressed: onPressed,
          label: Text(text!),
          icon: Icon(icon),
        ),
        onPressed,
      );
    }
    return _disabled(
      TextButton(
        onPressed: onPressed,
        child: Text(text!),
      ),
      onPressed,
    );
  }
}