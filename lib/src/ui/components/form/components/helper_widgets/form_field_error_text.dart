import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';
import 'package:myspace_design_system/utils/helpers/theme.dart';

class FormFieldErrorText extends Component {
  const FormFieldErrorText(
    this.errorText, {
    super.key,
  });

  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Text(
      errorText,
      style: context.textTheme.bodySmall!
          .copyWith(color: context.colorScheme.error),
    );
  }
}