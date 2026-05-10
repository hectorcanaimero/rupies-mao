import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/header_widget/header_widget_widget.dart';
import '/widgets/nav_bar_widget/nav_bar_widget_widget.dart';
import '/index.dart';
import 'reservations_page_widget.dart' show ReservationsPageWidget;
import 'package:flutter/material.dart';

class ReservationsPageModel extends FlutterFlowModel<ReservationsPageWidget> {
  ///  Local state fields for this page.

  List<String> categories = [];
  void addToCategories(String item) => categories.add(item);
  void removeFromCategories(String item) => categories.remove(item);
  void removeAtIndexFromCategories(int index) => categories.removeAt(index);
  void insertAtIndexInCategories(int index, String item) =>
      categories.insert(index, item);
  void updateCategoriesAtIndex(int index, Function(String) updateFn) =>
      categories[index] = updateFn(categories[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in ReservationsPage widget.
  List<UsersSkillRow>? dataSkills;
  // Model for HeaderWidget component.
  late HeaderWidgetModel headerWidgetModel;
  // State field(s) for TabBAr widget.
  TabController? tabBArController;
  int get tabBArCurrentIndex =>
      tabBArController != null ? tabBArController!.index : 0;
  int get tabBArPreviousIndex =>
      tabBArController != null ? tabBArController!.previousIndex : 0;

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
    tabBArController?.dispose();
    navBarWidgetModel.dispose();
  }
}
