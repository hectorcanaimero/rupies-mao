import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/banner_widget/banner_widget_widget.dart';
import '/widgets/card_service_widget/card_service_widget_widget.dart';
import '/widgets/header_widget/header_widget_widget.dart';
import '/widgets/nav_bar_widget/nav_bar_widget_widget.dart';
import '/widgets/servicos_aceitos_widget/servicos_aceitos_widget_widget.dart';
import '/index.dart';
import 'dart:async';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<List<ViewServicesWithCategoriesFilteredExcludeRow>>?
      requestCompleter;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<UsersRow>? usuario;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<ServicesRow>? service;
  // Stores action output result for [Backend Call - Query Rows] action in HomePage widget.
  List<SettingsRow>? setting;
  // Model for HeaderWidget component.
  late HeaderWidgetModel headerWidgetModel;
  // Model for BannerWidget component.
  late BannerWidgetModel bannerWidgetModel;
  // Model for ServicosAceitosWidget component.
  late ServicosAceitosWidgetModel servicosAceitosWidgetModel;
  // Models for CardServiceWidget dynamic component.
  late FlutterFlowDynamicModels<CardServiceWidgetModel> cardServiceWidgetModels;
  // Model for NavBarWidget component.
  late NavBarWidgetModel navBarWidgetModel;

  @override
  void initState(BuildContext context) {
    headerWidgetModel = createModel(context, () => HeaderWidgetModel());
    bannerWidgetModel = createModel(context, () => BannerWidgetModel());
    servicosAceitosWidgetModel =
        createModel(context, () => ServicosAceitosWidgetModel());
    cardServiceWidgetModels =
        FlutterFlowDynamicModels(() => CardServiceWidgetModel());
    navBarWidgetModel = createModel(context, () => NavBarWidgetModel());
  }

  @override
  void dispose() {
    headerWidgetModel.dispose();
    bannerWidgetModel.dispose();
    servicosAceitosWidgetModel.dispose();
    cardServiceWidgetModels.dispose();
    navBarWidgetModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
