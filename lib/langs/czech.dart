import 'dart:collection';

import 'package:Amplessimus/stringsisabadname.dart' as AmpStrings;
import 'package:dsbuntis/dsbuntis.dart';
import 'package:Amplessimus/langs/language.dart';

class Czech extends Language {
  @override
  String get appInfo =>
      'Amplissimus je aplikace, která umožňuje přehledné prohlížení suplovacích plánů přes DSBMobile';

  @override
  String get code => 'cz';

  @override
  String get settings => 'Nastavení';

  @override
  String get start => 'Start';

  @override
  String get name => 'Čeština';

  @override
  String get settingsAppInfo => 'Informace o aplikaci';

  @override
  String get changeAppearance => 'Změnit vzhled aplikace';

  @override
  String get changeLogin => 'Přihlašovací údaje';

  @override
  String get changeLoginPopup => 'Údaje k DSBMobile';

  @override
  String get selectClass => 'zvolit třídu';

  @override
  String get lightsUseSystem => 'použít vzhled systému';

  @override
  String get filterTimetables => 'filtrovat rozvrh hodin';

  @override
  String get edit => 'upravit';

  @override
  String get substitution => 'suplování';

  @override
  String dsbSubtoSubtitle(Substitution sub) {
    if (sub == null) return 'null';
    return sub.isFree ? 'volná hodina' : 'Supluje ${sub.subTeacher}';
  }

  @override
  String catchDsbGetData(e) => 'Ověřte zda jste připojeni k síti. (Fehler: $e)';

  @override
  String get noLogin => 'nebyly zadány žádné přihlašovací údaje.';

  @override
  String get empty => 'prázdné';

  @override
  String get password => 'heslo';

  @override
  String get username => 'Uživatelské jméno';

  @override
  String get save => 'uložit';

  @override
  String get cancel => 'zrušit';

  @override
  String get allClasses => 'všechny třídy';

  @override
  String get widgetValidatorFieldEmpty => 'Pole je prázdné!';

  @override
  String get widgetValidatorInvalid => 'Neplatné zadání!';

  @override
  String get changeLanguage => 'změnit jazyk';

  @override
  String get done => 'hotovo';

  @override
  String get timetable => 'Rozvrh hodin';

  @override
  String get setupTimetable => 'nastavit\nrozvrh hodin';

  @override
  String get setupTimetableTitle => 'nastavit rozvrh hodin';

  @override
  String get subject => 'předmět';

  @override
  String get notes => 'zápisky';

  @override
  String get editHour => 'upravit hodinu';

  @override
  String get teacher => 'učitel';

  @override
  String get freeLesson => 'volná hodina';

  @override
  LinkedHashMap<String, String> get subjectLut => LinkedHashMap.from({
        'spo': 'tělesná výchova',
        'e': 'Anglický jazyk',
        //TODO: get an actually accurate translation
        'ev': 'Evangelický',
        'd': 'Německý jazyk',
        'i': 'Informatika',
        'g': 'Dějepis',
        'geo': 'Zeměpis',
        'l': 'Latinský jazyk',
        'it': 'Italský jazyk',
        'f': 'Francouzský jazyk',
        'so': 'Společenské vědy',
        'sk': 'Společenské vědy',
        'm': 'Matematika',
        'mu': 'Hudební výchova',
        'b': 'Biologie',
        //TODO: see above
        'bwl': 'Obchodní administrativa',
        'c': 'Chemie',
        'k': 'Výtvarná výchova',
        //TODO: see above
        'ka': 'třída katolického náboženství',
        'p': 'Fyzika',
        'w': 'Ekonomika a právo',
        'nut': 'Příroda a technika',
        'spr': 'Konverzační hodina',
      });

  @override
  String get darkMode => 'tmavý režim';

  @override
  String dayToString(Day day) {
    if (day == null) return '';
    switch (day) {
      case Day.Null:
        return '';
      case Day.Monday:
        return 'Pondělí';
      case Day.Tuesday:
        return 'Úterý';
      case Day.Wednesday:
        return 'Středa';
      case Day.Thursday:
        return 'Čtvrtek';
      case Day.Friday:
        return 'Pátek';
      default:
        throw UnimplementedError('Neznámý den!');
    }
  }

  @override
  String get noSubs => 'žádné suplování';

  @override
  String get changedAppearance => 'Vzhled rozvrhu hodin byl změněn!';

  @override
  String get show => 'Ukázat';

  @override
  String get useForDsb => 'Použít pro DSB (nedoporučeno)';

  //TODO: see above
  @override
  String get dismiss => 'Zavrhnout';

  @override
  String get open => 'Otevřeno';

  @override
  String get update => 'Update';

  @override
  //TODO: see above
  String get plsUpdate => 'Je k dispozici nová verze ${AmpStrings.appTitle}.';

  @override
  String get wpemailDomain => 'WPEmail-Domain';

  @override
  // TODO: see above
  String get openPlanInBrowser => 'otevřete plán v prohlížeči';

  @override
  //TODO: see above
  String get addWpeDomain => 'Přidat WPEmail-Domain';
}
