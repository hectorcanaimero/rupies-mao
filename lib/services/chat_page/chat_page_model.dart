import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_page_widget.dart' show ChatPageWidget;
import 'package:flutter/material.dart';
import 'dart:async';

class ChatPageModel extends FlutterFlowModel<ChatPageWidget> {
  ///  Local state fields for this page.

  bool typeText = false;
  bool isRecording = false;
  bool isOtherUserTyping = false;

  // ScrollController for auto-scroll after sending messages.
  ScrollController? chatListController;

  // Typing indicator channel and timer.
  RealtimeChannel? typingChannel;
  Timer? typingTimer;

  ///  State fields for stateful widgets in this page.

  Stream<List<ChatsMessageRow>>? containerSupabaseStream;
  // State field(s) for content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentTextController;
  String? Function(BuildContext, String?)? contentTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in content widget and Icon widget (same insert reused by both triggers).
  ChatsMessageRow? create;
  bool isDataUploading_uploadDataDgg = false;
  FFUploadedFile uploadedLocalFile_uploadDataDgg =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataDgg = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    contentFocusNode?.dispose();
    contentTextController?.dispose();
    typingTimer?.cancel();
    chatListController?.dispose();
    typingChannel?.unsubscribe();
  }
}
