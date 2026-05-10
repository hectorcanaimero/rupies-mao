import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rating_widget_widget.dart' show RatingWidgetWidget;
import 'package:flutter/material.dart';

class RatingWidgetModel extends FlutterFlowModel<RatingWidgetWidget> {
  ///  Local state fields for this component.

  String? setMessage;

  ///  State fields for stateful widgets in this component.

  Stream<List<MessageCommentRow>>? containerSupabaseStream;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ServicesRatingRow>? createPrestador;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ServicesRow>? atualizacondition;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
