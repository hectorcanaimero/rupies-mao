import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'not_image_widget_model.dart';
export 'not_image_widget_model.dart';

class NotImageWidgetWidget extends StatefulWidget {
  const NotImageWidgetWidget({
    super.key,
    Color? background,
    double? height,
  })  : this.background = background ?? const Color(0x98DFEDEC),
        this.height = height ?? 300.0;

  final Color background;
  final double height;

  @override
  State<NotImageWidgetWidget> createState() => _NotImageWidgetWidgetState();
}

class _NotImageWidgetWidgetState extends State<NotImageWidgetWidget> {
  late NotImageWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotImageWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height,
      decoration: BoxDecoration(
        color: widget.background,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Lottie.asset(
          'assets/jsons/not-image.json',
          width: 300.0,
          height: widget.height,
          fit: BoxFit.contain,
          repeat: false,
          animate: true,
        ),
      ),
    );
  }
}
