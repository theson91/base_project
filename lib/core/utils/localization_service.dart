import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LocalizationService {
  static final LocalizationService _instance = LocalizationService._internal();

  late AppLocalizations _l10n;

  LocalizationService._internal();

  static LocalizationService get instance => _instance;

  void init(AppLocalizations l10n) {
    _l10n = l10n;
  }

  void update(AppLocalizations l10n) {
    _l10n = l10n;
  }

  AppLocalizations get l10n => _l10n;
}
