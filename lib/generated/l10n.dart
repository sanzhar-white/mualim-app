// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Main Menu`
  String get main_menu {
    return Intl.message(
      'Main Menu',
      name: 'main_menu',
      desc: '',
      args: [],
    );
  }

  /// `Practice`
  String get practice {
    return Intl.message(
      'Practice',
      name: 'practice',
      desc: '',
      args: [],
    );
  }

  /// `Schedule`
  String get schedule {
    return Intl.message(
      'Schedule',
      name: 'schedule',
      desc: '',
      args: [],
    );
  }

  /// `Leaderboard`
  String get leaderboard {
    return Intl.message(
      'Leaderboard',
      name: 'leaderboard',
      desc: '',
      args: [],
    );
  }

  /// `Mualim`
  String get mualim {
    return Intl.message(
      'Mualim',
      name: 'mualim',
      desc: '',
      args: [],
    );
  }

  /// `Current\nStreak`
  String get current_streak {
    return Intl.message(
      'Current\nStreak',
      name: 'current_streak',
      desc: '',
      args: [],
    );
  }

  /// `Lessons\nCompleted`
  String get lessons_completed {
    return Intl.message(
      'Lessons\nCompleted',
      name: 'lessons_completed',
      desc: '',
      args: [],
    );
  }

  /// `Continue Practice`
  String get continue_practice {
    return Intl.message(
      'Continue Practice',
      name: 'continue_practice',
      desc: '',
      args: [],
    );
  }

  /// `Lessons`
  String get lessons {
    return Intl.message(
      'Lessons',
      name: 'lessons',
      desc: '',
      args: [],
    );
  }

  /// `Alphabet`
  String get alphabet {
    return Intl.message(
      'Alphabet',
      name: 'alphabet',
      desc: '',
      args: [],
    );
  }

  /// `Learn the Arabic alphabet`
  String get alphabet_des {
    return Intl.message(
      'Learn the Arabic alphabet',
      name: 'alphabet_des',
      desc: '',
      args: [],
    );
  }

  /// `Harakats`
  String get harakats {
    return Intl.message(
      'Harakats',
      name: 'harakats',
      desc: '',
      args: [],
    );
  }

  /// `Learn Arabic harakats`
  String get harakats_des {
    return Intl.message(
      'Learn Arabic harakats',
      name: 'harakats_des',
      desc: '',
      args: [],
    );
  }

  /// `Words`
  String get words {
    return Intl.message(
      'Words',
      name: 'words',
      desc: '',
      args: [],
    );
  }

  /// `Practice common Arabic words`
  String get words_des {
    return Intl.message(
      'Practice common Arabic words',
      name: 'words_des',
      desc: '',
      args: [],
    );
  }

  /// `Phrases`
  String get phrases {
    return Intl.message(
      'Phrases',
      name: 'phrases',
      desc: '',
      args: [],
    );
  }

  /// `Master basic Arabic phrases`
  String get phrases_des {
    return Intl.message(
      'Master basic Arabic phrases',
      name: 'phrases_des',
      desc: '',
      args: [],
    );
  }

  /// `Practice with AI (Coming soon)`
  String get practice_ai {
    return Intl.message(
      'Practice with AI (Coming soon)',
      name: 'practice_ai',
      desc: '',
      args: [],
    );
  }

  /// `Chat with Mualim AI`
  String get chat_ai {
    return Intl.message(
      'Chat with Mualim AI',
      name: 'chat_ai',
      desc: '',
      args: [],
    );
  }

  /// `Learn the Tajweed`
  String get learn_taj {
    return Intl.message(
      'Learn the Tajweed',
      name: 'learn_taj',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
