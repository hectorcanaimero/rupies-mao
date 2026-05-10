import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

LatLng parseTextToLatLng(String text) {
  final regex = RegExp(r'LatLng\(lat: ([\-\d\.]+), lng: ([\-\d\.]+)\)');
  final match = regex.firstMatch(text);
  if (match != null) {
    final lat = double.parse(match.group(1)!);
    final lng = double.parse(match.group(2)!);
    return LatLng(lat, lng);
  } else {
    throw FormatException("Formato no válido: $text");
  }
}

String textToImage(String input) {
  return input;
}

bool validateNotUid(
  List<String>? raw,
  String uid,
) {
  if (raw == null || raw.isEmpty) {
    return true;
  }
  try {
    final contains = raw.contains(uid);
    return !contains;
  } catch (e) {
    return true;
  }
}

double calcularMediaPrestador(List<ViewServiceRatingRow> ratings) {
  double suma = 0;
  int contador = 0;

  for (final row in ratings) {
    final rating = row.srPrestadorRating;

    if (rating != null) {
      final value = (rating as num).toDouble();
      if (value.isFinite) {
        suma += value;
        contador++;
      }
    }
  }

  if (contador == 0) return 0.0;
  return suma / contador;
}
