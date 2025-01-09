import 'package:fcode_design_system/fcode_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'Hard Coded Text', type: TextComponent)
Widget buildHardCodedText(BuildContext context) {
  return TextComponent(value: HardCodedTextComponentValue("Hard Coded Text"));
}

@widgetbook.UseCase(name: 'Number Text', type: TextComponent)
Widget buildNumberText(BuildContext context) {
  return const TextComponent(value: NumberTextComponentValue(12000));
}

@widgetbook.UseCase(name: 'Currency Text', type: TextComponent)
Widget buildCurrencyText(BuildContext context) {
  return const TextComponent(value: CurrencyTextComponentValue(12000));
}

@widgetbook.UseCase(name: 'Any Data Text', type: TextComponent)
Widget buildAnyDataText(BuildContext context) {
  return const TextComponent(value: AnyDataTextComponentValue("London, UK"));
}
