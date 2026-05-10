import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'account_profile_widget.dart' show AccountProfileWidget;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AccountProfileModel extends FlutterFlowModel<AccountProfileWidget> {
  ///  Local state fields for this page.

  CepStruct? cep;
  void updateCepStruct(Function(CepStruct) updateFn) {
    updateFn(cep ??= CepStruct());
  }

  String? uid;

  String? image;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Nickname widget.
  FocusNode? nicknameFocusNode;
  TextEditingController? nicknameTextController;
  String? Function(BuildContext, String?)? nicknameTextControllerValidator;
  // State field(s) for TipoDoc widget.
  String? tipoDocValue;
  FormFieldController<String>? tipoDocValueController;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfTextController;
  late MaskTextInputFormatter cpfMask;
  String? Function(BuildContext, String?)? cpfTextControllerValidator;
  // State field(s) for cnpj widget.
  FocusNode? cnpjFocusNode;
  TextEditingController? cnpjTextController;
  late MaskTextInputFormatter cnpjMask;
  String? Function(BuildContext, String?)? cnpjTextControllerValidator;
  // State field(s) for Phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberTextController;
  late MaskTextInputFormatter phonenumberMask;
  String? Function(BuildContext, String?)? phonenumberTextControllerValidator;
  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for PIX widget.
  FocusNode? pixFocusNode;
  TextEditingController? pixTextController;
  String? Function(BuildContext, String?)? pixTextControllerValidator;
  // State field(s) for Bio widget.
  FocusNode? bioFocusNode;
  TextEditingController? bioTextController;
  String? Function(BuildContext, String?)? bioTextControllerValidator;
  bool isDataUploading_uploadDataProfile = false;
  FFUploadedFile uploadedLocalFile_uploadDataProfile =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataProfile = '';

  Completer<List<UsersRow>>? requestCompleter2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsersRow>? pprofileBasic;
  // State field(s) for Categories widget.
  String? categoriesValue;
  FormFieldController<String>? categoriesValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Categories widget.
  UsersSkillRow? create1;
  Completer<List<ViewUsersSkillWithCategoriesRow>>? requestCompleter1;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<UsersSkillRow>? delete;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<UsersRow>? update;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    nicknameFocusNode?.dispose();
    nicknameTextController?.dispose();

    cpfFocusNode?.dispose();
    cpfTextController?.dispose();

    cnpjFocusNode?.dispose();
    cnpjTextController?.dispose();

    phonenumberFocusNode?.dispose();
    phonenumberTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    pixFocusNode?.dispose();
    pixTextController?.dispose();

    bioFocusNode?.dispose();
    bioTextController?.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
