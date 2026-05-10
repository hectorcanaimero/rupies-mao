import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/not_image_widget/not_image_widget_widget.dart';
import 'banner_widget_widget.dart' show BannerWidgetWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerWidgetModel extends FlutterFlowModel<BannerWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // Model for NotImageWidget component.
  late NotImageWidgetModel notImageWidgetModel;

  @override
  void initState(BuildContext context) {
    notImageWidgetModel = createModel(context, () => NotImageWidgetModel());
  }

  @override
  void dispose() {
    notImageWidgetModel.dispose();
  }
}
