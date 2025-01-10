import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:flutter/material.dart';

class StackComponent extends LayoutComponent {
  const StackComponent({
    super.key,
    required super.children,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      key: key,
      children: children,
    );
  }
}