import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension AppLocalizationsExtension on BuildContext {
    AppLocalizations? get l10nOrNull => AppLocalizations.of(this);
    AppLocalizations get l10n => AppLocalizations.of(this)!;
} 