import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/contractor_widget/contractor_widget_widget.dart';
import '/widgets/not_image_widget/not_image_widget_widget.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'service_id_page_widget.dart' show ServiceIdPageWidget;
import 'package:flutter/material.dart';

class ServiceIdPageModel extends FlutterFlowModel<ServiceIdPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for NotImageWidget component.
  late NotImageWidgetModel notImageWidgetModel;
  // Model for ContractorWidget component.
  late ContractorWidgetModel contractorWidgetModel;
  // Stores action output result for [Backend Call - Delete Row(s)] action in RETIRAR widget.
  List<ServicesCandidatedRow>? delepet;

  @override
  void initState(BuildContext context) {
    notImageWidgetModel = createModel(context, () => NotImageWidgetModel());
    contractorWidgetModel = createModel(context, () => ContractorWidgetModel());
  }

  @override
  void dispose() {
    notImageWidgetModel.dispose();
    contractorWidgetModel.dispose();
  }
}
