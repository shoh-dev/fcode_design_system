import 'package:myspace_design_system/src/ui/components/component/component.dart';
import 'package:myspace_design_system/utils/helpers/context.dart';
import 'package:flutter/material.dart';

class DisabledComponent extends Component {
  const DisabledComponent({
    super.key,
    this.isDisabled = true,
    required this.child,
  });

  final bool isDisabled;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobilePlatform();

    if (isMobile) {
      return _absorbPointer();
    }
    return MouseRegion(
      cursor: isDisabled ? SystemMouseCursors.forbidden : MouseCursor.defer,
      child: _absorbPointer(),
    );
  }

  Widget _absorbPointer() {
    return AbsorbPointer(
      absorbing: isDisabled,
      child: child,
    );
  }
}
