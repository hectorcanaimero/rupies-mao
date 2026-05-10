import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'edit_portfolio_widget_widget.dart' show EditPortfolioWidgetWidget;
import 'package:flutter/material.dart';

class EditPortfolioWidgetModel
    extends FlutterFlowModel<EditPortfolioWidgetWidget> {
  ///  Local state fields for this component.

  String? image = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  bool isDataUploading_uploadDataU8q1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataU8q1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataU8q1 = '';

  bool isDataUploading_uploadDataU8qq = false;
  FFUploadedFile uploadedLocalFile_uploadDataU8qq =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataU8qq = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<UsersPortfolioRow>? create;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();
  }
}
