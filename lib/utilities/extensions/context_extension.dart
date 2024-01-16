import 'package:flutter/cupertino.dart';

extension ContextExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
  double dynamicSize(double val) => MediaQuery.of(this).size.width * val;
}

extension NumberExtension on BuildContext {
  double get lowValue => dynamicHeight(0.01);
  double get mediumValue => dynamicHeight(0.03);
  double get highValue => dynamicHeight(0.05);
}

extension PaddingExtension on BuildContext {
  EdgeInsets get paddingAllow => EdgeInsets.all(dynamicHeight(0.1));
}

extension EmptyWidget on BuildContext {
  Widget get emptyWidgetHeight => SizedBox(
        height: lowValue,
      );
}
