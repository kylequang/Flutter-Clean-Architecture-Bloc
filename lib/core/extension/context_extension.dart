import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension MyContextExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  AppLocalizations get l10n => AppLocalizations.of(this);
}
