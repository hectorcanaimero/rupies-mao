import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/header_widget/header_widget_widget.dart';
import '/widgets/nav_bar_widget/nav_bar_widget_widget.dart';
import '/index.dart';
import 'services_page_widget.dart' show ServicesPageWidget;
import 'package:flutter/material.dart';

class ServicesPageModel extends FlutterFlowModel<ServicesPageWidget> {
  ///  Local state fields for this page.

  List<ViewServicesWithCategoriesFilteredRow> data = [];
  void addToData(ViewServicesWithCategoriesFilteredRow item) => data.add(item);
  void removeFromData(ViewServicesWithCategoriesFilteredRow item) =>
      data.remove(item);
  void removeAtIndexFromData(int index) => data.removeAt(index);
  void insertAtIndexInData(
          int index, ViewServicesWithCategoriesFilteredRow item) =>
      data.insert(index, item);
  void updateDataAtIndex(int index,
          Function(ViewServicesWithCategoriesFilteredRow) updateFn) =>
      data[index] = updateFn(data[index]);

  ///  State fields for stateful widgets in this page.

  // Model for HeaderWidget component.
  late HeaderWidgetModel headerWidgetModel;
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
