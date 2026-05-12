import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/widgets/banner_widget/banner_widget_widget.dart';
import '/widgets/card_service_widget/card_service_widget_widget.dart';
import '/widgets/header_widget/header_widget_widget.dart';
import '/widgets/nav_bar_widget/nav_bar_widget_widget.dart';
import '/widgets/pop_up_widget/pop_up_widget_widget.dart';
import '/widgets/rating_widget/rating_widget_widget.dart';
import '/widgets/servicos_aceitos_widget/servicos_aceitos_widget_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'HomePage'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('HOME_PAGE_PAGE_HomePage_ON_INIT_STATE');
      await Future.wait([
        Future(() async {
          if (FFAppState().user.endRegister) {
            logFirebaseEvent('HomePage_backend_call');
            _model.usuario = await UsersTable().queryRows(
              queryFn: (q) => q.eqOrNull(
                'id',
                currentUserUid,
              ),
            );
            logFirebaseEvent('HomePage_update_app_state');
            FFAppState().updateUserStruct(
              (e) => e
                ..rating = _model.usuario?.firstOrNull?.rating
                ..seloProfImg = getJsonField(
                  _model.usuario?.firstOrNull?.seloProf,
                  r'''$.image''',
                ).toString()
                ..seloProfText = getJsonField(
                  _model.usuario?.firstOrNull?.seloProf,
                  r'''$.text''',
                ).toString(),
            );
            safeSetState(() {});
          } else {
            logFirebaseEvent('HomePage_navigate_to');

            context.goNamed(
              AccountProfileWidget.routeName,
              extra: <String, dynamic>{
                '__transition_info__': TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.bottomToTop,
                ),
              },
            );
          }
        }),
        Future(() async {
          logFirebaseEvent('HomePage_backend_call');
          _model.service = await ServicesTable().queryRows(
            queryFn: (q) => q
                .eqOrNull(
                  'userAproved',
                  currentUserUid,
                )
                .eqOrNull(
                  'condition',
                  Conditions.Finished.name,
                ),
          );
          if (_model.service!.length > 0) {
            logFirebaseEvent('HomePage_bottom_sheet');
            await showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              enableDrag: false,
              context: context,
              builder: (context) {
                return GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                  child: Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: RatingWidgetWidget(
                      service: _model.service!.firstOrNull!,
                    ),
                  ),
                );
              },
            ).then((value) => safeSetState(() {}));
          }
        }),
        Future(() async {
          if (!FFAppState().popup) {
            logFirebaseEvent('HomePage_backend_call');
            _model.setting = await SettingsTable().queryRows(
              queryFn: (q) => q
                  .eqOrNull(
                    'active',
                    true,
                  )
                  .eqOrNull(
                    'type',
                    'popup',
                  )
                  .eqOrNull(
                    'device',
                    1,
                  ),
            );
            if (_model.setting?.length == 1) {
              logFirebaseEvent('HomePage_alert_dialog');
              await showDialog(
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: GestureDetector(
                      onTap: () {
                        FocusScope.of(dialogContext).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: PopUpWidgetWidget(),
                    ),
                  );
                },
              );
              FFAppState().popup = true;
            }
          }
        }),
        Future(() async {
          logFirebaseEvent('HomePage_backend_call');
          await UsersTable().update(
            data: {
              'fcm_token': FFAppState().fcmToken,
            },
            matchingRows: (rows) => rows.eqOrNull(
              'id',
              currentUserUid,
            ),
          );
          if (!isWeb) {
            logFirebaseEvent('HomePage_custom_action');
            await actions.appReview(
              context,
            );
          }
        }),
      ]);
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  Future<void> _refreshFeed() async {
    safeSetState(() => _model.requestCompleter = null);
    await WidgetsBinding.instance.endOfFrame;
    try {
      await _model.requestCompleter?.future
          .timeout(const Duration(seconds: 10));
    } catch (_) {
      // FutureBuilder shows the error state — nothing else to do here.
    }
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                      child: wrapWithModel(
                        model: _model.headerWidgetModel,
                        updateCallback: () => safeSetState(() {}),
                        child: HeaderWidgetWidget(),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(),
                        child: RefreshIndicator(
                          onRefresh: _refreshFeed,
                          color: FlutterFlowTheme.of(context).primary,
                          child: SingleChildScrollView(
                            physics: const AlwaysScrollableScrollPhysics(),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 15.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(9.0),
                                    ),
                                    child: wrapWithModel(
                                      model: _model.bannerWidgetModel,
                                      updateCallback: () => safeSetState(() {}),
                                      child: BannerWidgetWidget(
                                        position: 11,
                                        height: 200.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                  ),
                                  child: wrapWithModel(
                                    model: _model.servicosAceitosWidgetModel,
                                    updateCallback: () => safeSetState(() {}),
                                    child: ServicosAceitosWidgetWidget(),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 6.0),
                                    child: Text(
                                      'Serviços Disponíveis',
                                      style: FlutterFlowTheme.of(context)
                                          .titleLarge
                                          .override(
                                            font: GoogleFonts.urbanist(
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleLarge
                                                      .fontStyle,
                                            ),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: FutureBuilder<
                                      List<
                                          ViewServicesWithCategoriesFilteredExcludeRow>>(
                                    future: (_model.requestCompleter ??= Completer<
                                            List<
                                                ViewServicesWithCategoriesFilteredExcludeRow>>()
                                          ..complete(
                                              ViewServicesWithCategoriesFilteredExcludeTable()
                                                  .queryRows(
                                            queryFn: (q) => q
                                                .eqOrNull(
                                                  'endRegister',
                                                  true,
                                                )
                                                .eqOrNull(
                                                  'endRegister',
                                                  true,
                                                )
                                                .order('condition',
                                                    ascending: true)
                                                .order('created_at'),
                                          )))
                                        .future,
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return ListView.builder(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 6, 0, 100),
                                          primary: false,
                                          shrinkWrap: true,
                                          itemCount: 5,
                                          itemBuilder: (_, __) =>
                                              const widgets
                                                  .ServiceCardSkeleton(),
                                        );
                                      }
                                      if (snapshot.hasError) {
                                        FirebaseCrashlytics.instance
                                            .recordError(
                                          snapshot.error,
                                          snapshot.stackTrace,
                                          reason: 'home_feed_query_failed',
                                          fatal: false,
                                        );
                                        return widgets.FeedStateWidget(
                                          height: 400,
                                          variant: widgets
                                              .FeedStateVariant.error,
                                          message:
                                              'Não foi possível carregar os serviços. Verifique sua conexão e tente novamente.',
                                          actionLabel: 'Tentar novamente',
                                          onAction: _refreshFeed,
                                        );
                                      }
                                      final allRows =
                                          snapshot.data ?? const [];
                                      final rows = allRows
                                          .where((row) =>
                                              functions.validateNotUid(
                                                  row.candidatedIds.toList(),
                                                  currentUserUid))
                                          .toList();
                                      if (rows.isEmpty) {
                                        return widgets.FeedStateWidget(
                                          height: 400,
                                          message: 'Sem Dados a Mostrar',
                                          actionLabel: 'Atualizar',
                                          onAction: _refreshFeed,
                                        );
                                      }
                                      return ListView.builder(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 6, 0, 100),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: rows.length,
                                        itemBuilder: (context, listViewIndex) {
                                          final row = rows[listViewIndex];
                                          return Container(
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model
                                                  .cardServiceWidgetModels
                                                  .getModel(
                                                listViewIndex.toString(),
                                                listViewIndex,
                                              ),
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: CardServiceWidgetWidget(
                                                key: Key(
                                                  'Key17o_${listViewIndex.toString()}',
                                                ),
                                                data: row,
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(),
                  child: wrapWithModel(
                    model: _model.navBarWidgetModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBarWidgetWidget(
                      btn1: true,
                      btn2: false,
                      btn3: false,
                      btn4: false,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
