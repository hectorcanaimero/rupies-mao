import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/bubble_chat_widget/bubble_chat_widget_widget.dart';
import 'card_service_widget_widget.dart' show CardServiceWidgetWidget;
import 'package:flutter/material.dart';

class CardServiceWidgetModel extends FlutterFlowModel<CardServiceWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BubbleChatWidget component.
  late BubbleChatWidgetModel bubbleChatWidgetModel;

  @override
  void initState(BuildContext context) {
    bubbleChatWidgetModel = createModel(context, () => BubbleChatWidgetModel());
  }

  @override
  void dispose() {
    bubbleChatWidgetModel.dispose();
  }
}
