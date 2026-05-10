import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/header_widget/header_widget_widget.dart';
import '/widgets/nav_bar_widget/nav_bar_widget_widget.dart';
import 'portfolio_page_widget.dart' show PortfolioPageWidget;
import 'package:flutter/material.dart';

class PortfolioPageModel extends FlutterFlowModel<PortfolioPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for HeaderWidget component.
  late HeaderWidgetModel headerWidgetModel;
  Stream<List<UsersPortfolioRow>>? listViewSupabaseStream;
  // Model for NavBarWidget component.
  late NavBarWidgetModel navBarWidgetModel;

  @override
  void initState(BuildContext context) {
    headerWidgetModel = createModel(context, () => HeaderWidgetModel());
    navBarWidgetModel = createModel(context, () => NavBarWidgetModel());
  }

  @override
  void dispose() {
    headerWidgetModel.dispose();
    navBarWidgetModel.dispose();
  }
}
