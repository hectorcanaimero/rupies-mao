import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/not_image_widget/not_image_widget_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'banner_widget_model.dart';
export 'banner_widget_model.dart';

class BannerWidgetWidget extends StatefulWidget {
  const BannerWidgetWidget({
    super.key,
    this.position,
    double? height,
  }) : this.height = height ?? 300.0;

  final int? position;
  final double height;

  @override
  State<BannerWidgetWidget> createState() => _BannerWidgetWidgetState();
}

class _BannerWidgetWidgetState extends State<BannerWidgetWidget> {
  late BannerWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BannerWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BannersRow>>(
      future: BannersTable().queryRows(
        queryFn: (q) => q
            .eqOrNull(
              'position',
              widget.position,
            )
            .containsOrNull(
              'device',
              '{${'prestador'}}',
            )
            .order('created_at'),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Color(0x004B39EF),
                ),
              ),
            ),
          );
        }
        List<BannersRow> containerBannersRowList = snapshot.data!;

        return Container(
          height: widget.height,
          constraints: BoxConstraints(
            minHeight: widget.height,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(9.0),
          ),
          child: Builder(
            builder: (context) {
              if (containerBannersRowList.isNotEmpty) {
                return Builder(
                  builder: (context) {
                    final banner = containerBannersRowList.toList();

                    return Container(
                      width: double.infinity,
                      height: widget.height,
                      child: CarouselSlider.builder(
                        itemCount: banner.length,
                        itemBuilder: (context, bannerIndex, _) {
                          final bannerItem = banner[bannerIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'BANNER_WIDGET_COMP_Image_kh5lgwzx_ON_TAP');
                              logFirebaseEvent('Image_launch_u_r_l');
                              await launchURL(bannerItem.url!);
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  bannerItem.image,
                                  'https://images.unsplash.com/photo-1519389950473-47ba0277781c',
                                ),
                                width: double.infinity,
                                height: widget.height,
                                fit: BoxFit.cover,
                              ),
                            ),
                          );
                        },
                        carouselController: _model.carouselController ??=
                            CarouselSliderController(),
                        options: CarouselOptions(
                          initialPage: max(0, min(1, banner.length - 1)),
                          viewportFraction: 1.0,
                          disableCenter: true,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.25,
                          enableInfiniteScroll: true,
                          scrollDirection: Axis.horizontal,
                          autoPlay: valueOrDefault<bool>(
                            containerBannersRowList.length > 1,
                            false,
                          ),
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 1000),
                          autoPlayInterval:
                              Duration(milliseconds: (1000 + 4000)),
                          autoPlayCurve: Curves.linear,
                          pauseAutoPlayInFiniteScroll: true,
                          onPageChanged: (index, _) =>
                              _model.carouselCurrentIndex = index,
                        ),
                      ),
                    );
                  },
                );
              } else {
                return wrapWithModel(
                  model: _model.notImageWidgetModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NotImageWidgetWidget(
                    background: FlutterFlowTheme.of(context).alternate,
                    height: widget.height,
                  ),
                );
              }
            },
          ),
        );
      },
    );
  }
}
