import 'package:go_router/go_router.dart';
import '../main_view/main_view.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/main',
  routes: [GoRoute(path: '/main', builder: (context, state) => MainView())],
);
