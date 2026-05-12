import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/notifications_page/notifications_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_widget_model.dart';
export 'header_widget_model.dart';

class HeaderWidgetWidget extends StatefulWidget {
  const HeaderWidgetWidget({super.key});

  @override
  State<HeaderWidgetWidget> createState() => _HeaderWidgetWidgetState();
}

class _HeaderWidgetWidgetState extends State<HeaderWidgetWidget> {
  late HeaderWidgetModel _model;
  Future<int>? _notificationCountFuture;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderWidgetModel());

    _notificationCountFuture = SupaFlow.client
        .from('notifications')
        .select('id')
        .eq('recipient_id', currentUserUid)
        .eq('is_read', false)
        .then<int>((data) => (data as List).length);

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF9E9E9E),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
                    child: Container(
                      width: 40.0,
                      height: 40.0,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        imageUrl: valueOrDefault<String>(
                          FFAppState().user.photoUrl,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/rupies-profissional-93jipj/assets/i2ozq2kadrah/dog_avatar.gif',
                        ),
                        fit: BoxFit.cover,
                        fadeInDuration: const Duration(milliseconds: 200),
                        placeholder: (context, url) => Container(
                          color: const Color(0xFF9E9E9E),
                        ),
                        errorWidget: (context, url, error) => Container(
                          color: const Color(0xFF9E9E9E),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.person,
                            size: 24.0,
                            color: FlutterFlowTheme.of(context)
                                .primaryBackground,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        FFAppState().user.displayName,
                        'Nome e Sobrenome',
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            font: GoogleFonts.urbanist(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .fontStyle,
                            ),
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                    ),
                    RatingBarIndicator(
                      itemBuilder: (context, index) => Icon(
                        Icons.star_rounded,
                        color: FlutterFlowTheme.of(context).warning,
                      ),
                      direction: Axis.horizontal,
                      rating: valueOrDefault<double>(
                        FFAppState().user.rating,
                        5.0,
                      ),
                      unratedColor: FlutterFlowTheme.of(context).accent1,
                      itemCount: 5,
                      itemSize: 18.0,
                    ),
                  ],
                ),
              ),
              if (FFAppState().user.seloProfImg != '')
                Container(
                  decoration: BoxDecoration(),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: CachedNetworkImage(
                          imageUrl: FFAppState().user.seloProfImg,
                          width: 30.0,
                          height: 30.0,
                          fit: BoxFit.cover,
                          fadeInDuration: const Duration(milliseconds: 200),
                          placeholder: (context, url) => const SizedBox(
                            width: 30.0,
                            height: 30.0,
                          ),
                          errorWidget: (context, url, error) => const SizedBox(
                            width: 30.0,
                            height: 30.0,
                          ),
                        ),
                      ),
                      Text(
                        FFAppState().user.seloProfText,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.urbanist(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                            ),
                      ),
                    ].divide(SizedBox(width: 6.0)),
                  ),
                ),
              FutureBuilder<int>(
                future: _notificationCountFuture,
                builder: (context, snapshot) {
                  final unreadCount = snapshot.data ?? 0;
                  return Stack(
                    clipBehavior: Clip.none,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.notifications_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 26.0,
                        ),
                        onPressed: () => context
                            .pushNamed(NotificationsPageWidget.routeName),
                      ),
                      if (unreadCount > 0)
                        Positioned(
                          right: 6,
                          top: 6,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).error,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Text(
                                unreadCount > 9 ? '9+' : '$unreadCount',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ].divide(SizedBox(width: 9.0)),
          ),
        ),
      ),
    );
  }
}
