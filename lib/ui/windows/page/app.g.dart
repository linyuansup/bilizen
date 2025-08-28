// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$homePageRoute];

RouteBase get $homePageRoute => GoRouteData.$route(
  path: '/',
  factory: _$HomePageRoute._fromState,
  routes: [
    GoRouteData.$route(path: '/video', factory: _$VideoPageRoute._fromState),
  ],
);

mixin _$HomePageRoute on GoRouteData {
  static HomePageRoute _fromState(GoRouterState state) => HomePageRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

mixin _$VideoPageRoute on GoRouteData {
  static VideoPageRoute _fromState(GoRouterState state) => VideoPageRoute();

  @override
  String get location => GoRouteData.$location('/video');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}
