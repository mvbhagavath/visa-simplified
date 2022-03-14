// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(rupeeUnicode) =>
      "Collection must be at least ${rupeeUnicode}1";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "acceptPaymentsWithSwipe": MessageLookupByLibrary.simpleMessage(
            "Accept Payments now with just a swipe"),
        "allow": MessageLookupByLibrary.simpleMessage("Allow"),
        "amount": MessageLookupByLibrary.simpleMessage("Amount"),
        "bluetoothRequestSubtext":
            MessageLookupByLibrary.simpleMessage("Lorem Ipsum dolor sit amet."),
        "bluetoothRequestText": MessageLookupByLibrary.simpleMessage(
            "Vitt India wants to turn on Bluetooth"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "collectPayment":
            MessageLookupByLibrary.simpleMessage("Collect Payment"),
        "collectionMustBeAtleast": m0,
        "deny": MessageLookupByLibrary.simpleMessage("Deny"),
        "deviceNotReady":
            MessageLookupByLibrary.simpleMessage("Device Not Ready"),
        "enterAmountToCollect":
            MessageLookupByLibrary.simpleMessage("Enter the amount to collect"),
        "enterPin": MessageLookupByLibrary.simpleMessage("Enter Pin"),
        "oopsNoInternet":
            MessageLookupByLibrary.simpleMessage("Oops ! \n No Internet"),
        "pairWithSwipeReader": MessageLookupByLibrary.simpleMessage(
            "Pair Vitt India Swipe Reader"),
        "pairingInProgress":
            MessageLookupByLibrary.simpleMessage("Pairing with reader..."),
        "pairingWithDevice":
            MessageLookupByLibrary.simpleMessage("Pairing with device"),
        "pleaseCheckYourInternet": MessageLookupByLibrary.simpleMessage(
            "Please check your Internet connection"),
        "pressAgainToExit":
            MessageLookupByLibrary.simpleMessage("Press again to exit"),
        "readyToSwipe": MessageLookupByLibrary.simpleMessage("Ready to Swipe"),
        "readyToSwipeSubtext": MessageLookupByLibrary.simpleMessage(
            "Please Swipe, Insert or Tap your card onto the reader"),
        "requestedBy": MessageLookupByLibrary.simpleMessage("Requested by"),
        "somethingWentWrongTxt":
            MessageLookupByLibrary.simpleMessage("Something went wrong!!"),
        "swipeOrTap": MessageLookupByLibrary.simpleMessage(
            "Swipe or Tap Debit/Credit Card.")
      };
}
