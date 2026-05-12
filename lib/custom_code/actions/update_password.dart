// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<bool> updatePassword(String newPassword) async {
  if (newPassword.length < 8) {
    return false;
  }
  try {
    final supabase = SupaFlow.client;

    final response = await supabase.auth.updateUser(
      UserAttributes(
        password: newPassword,
      ),
    );

    return response.user != null;
  } catch (e, stack) {
    debugPrint('Error updating password');
    FirebaseCrashlytics.instance.recordError(
      e,
      stack,
      reason: 'updatePassword failed',
      fatal: false,
    );
    return false;
  }
}
