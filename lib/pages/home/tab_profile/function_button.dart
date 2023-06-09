import 'package:flutter/material.dart';
import 'package:happy_house/pages/home/tab_profile/function_button_widget.dart';

import 'function_button_data.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 1,
      spacing: 1,
      children: list.map((item) => FunctionButtonWidget(data: item)).toList(),
    );
  }
}
