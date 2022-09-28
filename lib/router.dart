import 'package:cw_live_map/ui/screens/add_event.dart';
import 'package:cw_live_map/ui/screens/realtime_map.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:flutter/material.dart';

/// Caches and Exposes a [GoRouter]
final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    // For demo purposes
    refreshListenable: router,
    // This notifiies `GoRouter` for refresh events
    initialLocation: '/',
    routes: router._routes,
    /*errorBuilder: (context, state) => ErrorScreen(
      exception: state.error,
    ),*/
  );
});

/// My favorite approach: ofc there's room for improvement, but it works fine.
/// What I like about this is that `RouterNotifier` centralizes all the logic.
/// The reason we use `ChangeNotifier` is because it's a `Listenable` object,
/// as required by `GoRouter`'s `refreshListenable` parameter.
/// Unluckily, it is not possible to use a `StateNotifier` here, since it's
/// not a `Listenable`. Recall that `StateNotifier` is to be preferred over
/// `ChangeNotifier`, see https://riverpod.dev/docs/concepts/providers/#different-types-of-providers
/// There are other approaches to solve this, and they can
/// be found in the `/others` folder.
class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  /// This implementation exploits `ref.listen()` to add a simple callback that
  /// calls `notifyListeners()` whenever there's change onto a desider provider.
  RouterNotifier(this._ref) {}

  List<GoRoute> get _routes => [
        GoRoute(
          path: RealtimeMap.routeName,
          builder: (context, state) => const RealtimeMap(),
        ),
        GoRoute(
          path: AddEventScreen.routeName,
          builder: (context, state) => const AddEventScreen(),
        ),
    // GoRoute(
    //   path: EventsStats.routeName,
    //   builder: (context, state) => const EventsStatsScreen(),
    // ),
      ];
}
