import 'package:flutter/material.dart';

extension ThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);
}

extension TextFocusExt on BuildContext {
  void nextEditableTextFocus() {
    do {
      FocusScope.of(this).nextFocus();
    } while (FocusScope.of(this).focusedChild!.context!.widget is! EditableText);
  }
}
