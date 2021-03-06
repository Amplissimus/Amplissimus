import 'package:flutter_test/flutter_test.dart';

import 'package:amplissimus/langs/language.dart';
import 'package:amplissimus/langs/english.dart';
import 'package:amplissimus/langs/german.dart';
import 'package:amplissimus/subject.dart';

import 'testlib.dart';

TestCase subParseTestCase(Language lang, String raw, String out) => () async {
      Language.current = lang;
      expect(parseSubject(raw), out);
    };

List<TestCase> languageTestCases = [
  subParseTestCase(German(), '', ''),
  subParseTestCase(German(), ' ', ' '),
  subParseTestCase(German(), '1337', '1337'),
  subParseTestCase(German(), '1e3', '1Englisch3'),
  subParseTestCase(German(), 'psy_2_69', 'Psychologie_2_69'),
  subParseTestCase(German(), 'Kath', 'Katholische Religion'),
  subParseTestCase(German(), '1337etH', '1337Ethik'),
  subParseTestCase(German(), 'W/R', 'Wirtschaft/Recht'),
  subParseTestCase(English(), '1e d3ku_che5mu9L',
      '1English German3Art_Chemistry5Music9Latin'),
];

void main() {
  tests(languageTestCases, 'subject');
}
