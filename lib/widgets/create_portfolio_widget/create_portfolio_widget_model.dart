import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_portfolio_widget_widget.dart' show CreatePortfolioWidgetWidget;
import 'package:flutter/material.dart';

class CreatePortfolioWidgetModel
    extends FlutterFlowModel<CreatePortfolioWidgetWidget> {
  ///  Local state fields for this component.

  String? image;

  ///  State fields for stateful widgets in this component.

  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  bool isDataUploading_uploadDataU8q = false;
  FFUploadedFile uploadedLocalFile_uploadDataU8q =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataU8q = '';

  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  UsersPortfolioRow? create;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();
  }
}
