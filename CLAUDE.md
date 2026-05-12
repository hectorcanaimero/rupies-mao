# CLAUDE.md — `apps/mobile-mao/`

Guía para Claude Code al trabajar en esta app. Complementa el `CLAUDE.md` raíz del monorepo.

## Project Overview

`mobile-mao` (pubspec name: `rupies_profissional`) es la app Flutter para el lado **prestador / profissional** del marketplace Rupies en Brasil. Generada por FlutterFlow con capas custom. Es el contraparte de `mobile-empresa` (lado contratante).

## Tech Stack

| Layer | Technology |
|-------|-----------|
| SDK | Flutter / Dart `>=3.0.0 <4.0.0` |
| State | Provider 6.1.5 + ChangeNotifier (`FFAppState`) |
| Routing | GoRouter 12.1.3 |
| Auth & DB | Supabase Cloud (`ejnzgjczritznohpdnxl.supabase.co`), JWT |
| Firebase | Project `rupies-brasil` — Crashlytics, Analytics, Messaging, Performance |
| Maps & Location | `google_maps_flutter 2.12.2`, `geolocator 14.0.1`, `flutter_google_places` |
| Auth providers | `sign_in_with_apple 7.0.1` |
| Cloud Functions | Node.js (`firebase/functions/index.js`) |

## Common Commands

```bash
cd apps/mobile-mao

flutter pub get                # deps
flutter run                    # device/emulator
flutter test                   # tests
flutter analyze                # lint
flutter build apk              # Android
flutter build ios              # iOS
flutter build web              # Web

# Cloud Functions
cd firebase/functions
npm install
firebase deploy --only functions
```

## Architecture

### `lib/` layout

| Directorio | Propósito |
|-----------|-----------|
| `auth/supabase_auth/` | Supabase auth setup |
| `backend/supabase/` | Supabase client, tables, queries |
| `backend/firebase/` | Firebase config |
| `backend/firebase_analytics/` | Analytics wrappers |
| `backend/api_requests/` | HTTP API requests |
| `backend/schema/` | Models, structs, enums |
| `pages/` | Soporte/legal: `home_page`, `menu_page`, `sac_page`, `termos_page` |
| `users/` | **Auth & profile pages**: `sign_in_page`, `sign_up_page`, `forgot_pwd_widget`, `reset_senha_page`, `account_profile`, `portfolio_page`, `avaliacoes_page` |
| `services/` | **Marketplace core pages**: `services_page`, `service_id_page`, `service_candidated_page`, `reservations_page`, `chat_page` |
| `widgets/` | Componentes UI compartidos |
| `custom_code/actions/` | Lógica custom (FCM, in-app update, tracking, password, review) |
| `flutter_flow/` | FF utilities (routing, animations, i18n) |

> **OJO**: en mobile-mao las "pages" están distribuidas en TRES dirs (`pages/`, `users/`, `services/`), NO solo en `pages/`. Convención no estándar de FF — buscar en los tres al editar screens.

### Widgets (`lib/widgets/`)

`banner_widget`, `bubble_chat_widget`, `cancel_reservation_confirm`, `card_service_widget`, `contractor_widget`, `create_portfolio_widget`, `edit_portfolio_widget`, `header_widget`, `load_widget`, `nav_bar_widget`, `not_found_component`, `not_image_widget`, `pop_up_widget`, `rating_widget`, `reserva_success_widget`, `servicos_aceitos_widget`

### Custom actions (`lib/custom_code/actions/`)

`app_review`, `app_tracking`, `in_app_update`, `set_f_c_m_token`, `update_password` (5 actions + `index.dart`).

## App Initialization Order (`lib/main.dart`)

1. `WidgetsFlutterBinding.ensureInitialized()`
2. `usePathUrlStrategy()` (web)
3. `await initFirebase()`
4. `await SupaFlow.initialize()`
5. `FFAppState().initializePersistedState()`
6. `FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError` (no web)
7. `await actions.setFCMToken()`
8. `await actions.inAppUpdate()`
9. `await actions.appTracking()`
10. `runApp(ChangeNotifierProvider(create: ... appState))`

## Diferencias vs `mobile-empresa`

| Atributo | mobile-mao (prestador) | mobile-empresa (contratante) |
|----------|------------------------|------------------------------|
| Android pkg | `com.rupies.profissional` | `com.rupies.companies` |
| Pubspec name | `rupies_profissional` | `rupies_empresas` |
| Custom actions | 5 (mínimo) | 15 (extendido) |
| Módulos exclusivos | `chat`, `portfolio`, `avaliacoes`, `service_candidated`, `reservations` | `lead/`, `subscription/`, `providers/`, `components/` |
| Local packages | (ninguno) | `dependencies/ff_commons`, `ff_theme`, `utility_functions_library_8g4bud` |

**No existe en mobile-mao:** `lead/`, `subscription/`, `providers/`, `components/`, `dependencies/`. No buscar/asumir convenciones de empresa acá.

## Important Conventions

- **FlutterFlow codegen**: la mayoría de `lib/` es generada. Custom code va en `lib/custom_code/` (actions, widgets, functions). NO editar `lib/flutter_flow/` ni `_widget.dart`/`_model.dart` salvo donde FF lo permita.
- **Analyzer exclusions** (`analysis_options.yaml`): `lib/custom_code/**` y `lib/flutter_flow/custom_functions.dart` excluidos del análisis Dart.
- **Page pattern**: cada page = `*_widget.dart` (UI) + `*_model.dart` (state/logic).
- **Backend**: auth con Supabase JWT. Firebase NO se usa para auth ni DB primaria — solo hosting/analytics/crashlytics/FCM/functions.
- **Apple sign-in**: vía `sign_in_with_apple 7.0.1`.

## UI Conventions (hereda root)

- **Loading states**: usar `shimmer ^3.0.0`. Nunca `Container` estático con color `alternate`.
- `highlightColor` con `.withValues(alpha:)` — NO `.withOpacity()` (deprecated).

## Skills (auto-load)

Cargar ANTES de escribir código:

| Contexto | Skill |
|----------|-------|
| Cualquier tarea Rupies — dominio, entidades, business rules | `~/.claude/skills/rupies-platform/SKILL.md` |
| FlutterFlow / Flutter custom code | `~/.claude/skills/flutterflow/SKILL.md` |

## Key Configuration

- **Supabase**: `https://ejnzgjczritznohpdnxl.supabase.co` (anon key embed en `lib/backend/supabase/supabase.dart`)
- **Firebase project**: `rupies-brasil` (config en `firebase/firebase.json`, sin `.firebaserc` propio)
- **Android package**: `com.rupies.profissional`
- **Versión**: `pubspec.yaml` campo `version` (actual: `1.0.3+14`)
- **Cloud Functions**: `firebase/functions/` (Node.js, `api_manager.js` + `index.js`)
