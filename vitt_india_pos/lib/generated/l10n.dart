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

  /// `Something went wrong!!`
  String get somethingWentWrongTxt {
    return Intl.message(
      'Something went wrong!!',
      name: 'somethingWentWrongTxt',
      desc: '',
      args: [],
    );
  }

  /// `Oops ! \n No Internet`
  String get oopsNoInternet {
    return Intl.message(
      'Oops ! \n No Internet',
      name: 'oopsNoInternet',
      desc: '',
      args: [],
    );
  }

  /// `Please check your Internet connection`
  String get pleaseCheckYourInternet {
    return Intl.message(
      'Please check your Internet connection',
      name: 'pleaseCheckYourInternet',
      desc: '',
      args: [],
    );
  }

  /// `Collect Payment`
  String get collectPayment {
    return Intl.message(
      'Collect Payment',
      name: 'collectPayment',
      desc: '',
      args: [],
    );
  }

  /// `Collection must be at least {rupeeUnicode}1`
  String collectionMustBeAtleast(Object rupeeUnicode) {
    return Intl.message(
      'Collection must be at least ${rupeeUnicode}1',
      name: 'collectionMustBeAtleast',
      desc: '',
      args: [rupeeUnicode],
    );
  }

  /// `Enter the amount to collect`
  String get enterAmountToCollect {
    return Intl.message(
      'Enter the amount to collect',
      name: 'enterAmountToCollect',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Press again to exit`
  String get pressAgainToExit {
    return Intl.message(
      'Press again to exit',
      name: 'pressAgainToExit',
      desc: '',
      args: [],
    );
  }

  /// `Vitt India wants to turn on Bluetooth`
  String get bluetoothRequestText {
    return Intl.message(
      'Vitt India wants to turn on Bluetooth',
      name: 'bluetoothRequestText',
      desc: '',
      args: [],
    );
  }

  /// `Lorem Ipsum dolor sit amet.`
  String get bluetoothRequestSubtext {
    return Intl.message(
      'Lorem Ipsum dolor sit amet.',
      name: 'bluetoothRequestSubtext',
      desc: '',
      args: [],
    );
  }

  /// `Allow`
  String get allow {
    return Intl.message(
      'Allow',
      name: 'allow',
      desc: '',
      args: [],
    );
  }

  /// `Deny`
  String get deny {
    return Intl.message(
      'Deny',
      name: 'deny',
      desc: '',
      args: [],
    );
  }

  /// `Accept Payments now with just a swipe`
  String get acceptPaymentsWithSwipe {
    return Intl.message(
      'Accept Payments now with just a swipe',
      name: 'acceptPaymentsWithSwipe',
      desc: '',
      args: [],
    );
  }

  /// `Pair Vitt India Swipe Reader`
  String get pairWithSwipeReader {
    return Intl.message(
      'Pair Vitt India Swipe Reader',
      name: 'pairWithSwipeReader',
      desc: '',
      args: [],
    );
  }

  /// `Pairing with reader...`
  String get pairingInProgress {
    return Intl.message(
      'Pairing with reader...',
      name: 'pairingInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Swipe or Tap Debit/Credit Card.`
  String get swipeOrTap {
    return Intl.message(
      'Swipe or Tap Debit/Credit Card.',
      name: 'swipeOrTap',
      desc: '',
      args: [],
    );
  }

  /// `Device Not Ready`
  String get deviceNotReady {
    return Intl.message(
      'Device Not Ready',
      name: 'deviceNotReady',
      desc: '',
      args: [],
    );
  }

  /// `Ready to Swipe`
  String get readyToSwipe {
    return Intl.message(
      'Ready to Swipe',
      name: 'readyToSwipe',
      desc: '',
      args: [],
    );
  }

  /// `Please Swipe, Insert or Tap your card onto the reader`
  String get readyToSwipeSubtext {
    return Intl.message(
      'Please Swipe, Insert or Tap your card onto the reader',
      name: 'readyToSwipeSubtext',
      desc: '',
      args: [],
    );
  }

  /// `Pairing with device`
  String get pairingWithDevice {
    return Intl.message(
      'Pairing with device',
      name: 'pairingWithDevice',
      desc: '',
      args: [],
    );
  }

  /// `Enter Pin`
  String get enterPin {
    return Intl.message(
      'Enter Pin',
      name: 'enterPin',
      desc: '',
      args: [],
    );
  }

  /// `Requested by`
  String get requestedBy {
    return Intl.message(
      'Requested by',
      name: 'requestedBy',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
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
