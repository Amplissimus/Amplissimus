import 'dart:collection';

import 'package:Amplessimus/dsbapi.dart';
import 'package:Amplessimus/langs/english.dart';
import 'package:Amplessimus/langs/german.dart';
import 'package:Amplessimus/timetable/timetables.dart';

abstract class Language {
  String get code;
  String get name;

  //
  //these are all of the translations hardcoded into the language classes
  //
  String get lightsOn;
  String get lightsOff;
  String get lightsUseSystem;
  String get lightsNoSystem;
  String get changeAppearance;
  String get changeLanguage;
  String get changeLogin;
  String get changeLoginPopup;
  String get username;
  String get password;
  String get save;
  String get cancel;
  String get selectClass;
  String get settingsAppInfo;
  String get appInfo;
  String get start;
  String get settings;
  String get dsbListErrorTitle;
  String get dsbListErrorSubtitle;
  String get noLogin;
  String get allClasses;
  String get empty;
  String get widgetValidatorFieldEmpty;
  String get widgetValidatorInvalid;
  String get firstStartupDone;
  String get timetable;
  String get darkMode;
  String get setupTimetable;
  String get setupTimetableTitle;
  String get noSubs;
  String get subject;
  String get notes;
  String get editHour;
  String get teacher;
  String get freeLesson;
  String get filterTimetables;
  String get edit;
  String get substitution;
  String get changedAppearance;
  String get show;
  String get useForDsb;
  String dsbSubtoTitle(DsbSubstitution sub);
  String dsbSubtoSubtitle(DsbSubstitution sub);
  String catchDsbGetData(dynamic e);
  LinkedHashMap<String, String> get subjectLut;

  static final List<Language> _langs = [English(), German()];
  static List<Language> get all => _langs;

  static Language fromCode(String code) {
    if (code == null) return _langs[0];
    for (var lang in _langs)
      if (code.contains(lang.code) || lang.code.contains(code)) return lang;
    return _langs[0];
  }

  String ttDayToString(TTDay day);

  @override
  String toString() => name;
}