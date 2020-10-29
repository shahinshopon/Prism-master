import 'package:flutter/material.dart';

class InheritedDataProvider extends InheritedWidget {
  final ScrollController scrollController;
  InheritedDataProvider({
    Widget child,
    this.scrollController,
  }) : super(child: child);
  @override
  bool updateShouldNotify(InheritedDataProvider oldWidget) =>
      scrollController != oldWidget.scrollController;
  static InheritedDataProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedDataProvider>();
}
