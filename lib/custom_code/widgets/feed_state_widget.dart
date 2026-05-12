// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

enum FeedStateVariant { empty, error }

class FeedStateWidget extends StatelessWidget {
  const FeedStateWidget({
    super.key,
    this.width,
    this.height,
    required this.message,
    this.actionLabel,
    this.onAction,
    this.variant = FeedStateVariant.empty,
  });

  final double? width;
  final double? height;
  final String message;
  final String? actionLabel;
  final VoidCallback? onAction;
  final FeedStateVariant variant;

  @override
  Widget build(BuildContext context) {
    final theme = FlutterFlowTheme.of(context);
    final hasAction = actionLabel != null && onAction != null;

    return Container(
      width: width ?? double.infinity,
      height: height ?? 380,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (variant == FeedStateVariant.error)
            Icon(
              Icons.cloud_off_rounded,
              size: 56,
              color: theme.error,
            )
          else
            Lottie.asset(
              'assets/jsons/Data_Analysis.json',
              width: 220,
              height: 200,
              fit: BoxFit.contain,
              reverse: true,
              animate: true,
            ),
          const SizedBox(height: 12),
          Text(
            message,
            textAlign: TextAlign.center,
            style: theme.headlineSmall.override(
              font: GoogleFonts.urbanist(
                fontWeight: FontWeight.w600,
                fontStyle: theme.headlineSmall.fontStyle,
              ),
              fontSize: 18,
              letterSpacing: 0,
            ),
          ),
          if (hasAction) ...[
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onAction,
              style: ElevatedButton.styleFrom(
                backgroundColor: variant == FeedStateVariant.error
                    ? theme.error
                    : theme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
              ),
              child: Text(
                actionLabel!,
                style: GoogleFonts.urbanist(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
