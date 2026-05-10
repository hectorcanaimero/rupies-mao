import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'service_candidated_page_widget.dart' show ServiceCandidatedPageWidget;
import 'package:flutter/material.dart';

class ServiceCandidatedPageModel
    extends FlutterFlowModel<ServiceCandidatedPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ServicesCandidatedRow? create;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  NotificationsRow? notification;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
