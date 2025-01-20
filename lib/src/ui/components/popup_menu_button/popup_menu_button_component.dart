import 'package:flutter/material.dart';
import 'package:myspace_design_system/myspace_design_system.dart';

class PopupMenuButtonComponent<T> extends Component {
  const PopupMenuButtonComponent({
    super.key,
    required this.items,
    this.onSelected,
  });

  final Iterable<DropdownItem<T>> items;
  final ValueChanged<DropdownItem<T>?>? onSelected;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<DropdownItem<T>>(
      position: PopupMenuPosition.under,
      tooltip: "",
      onSelected: onSelected,
      itemBuilder: (context) {
        return [
          for (final item in items)
            PopupMenuItem(
              value: item,
              child: Text(item.label),
            ),
        ];
      },
      child: AbsorbPointer(
        absorbing: true,
        child: ButtonComponent.iconOutlined(
          icon: Icons.more_vert_rounded,
          onPressed: () {},
        ),
      ),
    );
  }
}