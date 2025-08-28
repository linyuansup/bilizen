import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@singleton
class HomepageRouter {
  final homePageKindStream = BehaviorSubject.seeded(
    RouterInfo(HomePageKind.home, ''),
  );

  void navigateTo(HomePageKind kind, [String addOn = '']) {
    homePageKindStream.add(RouterInfo(kind, addOn));
  }
}

class RouterInfo {
  final HomePageKind kind;
  final String addOn;

  RouterInfo(this.kind, this.addOn);
}

enum HomePageKind {
  home,
  focus,
  self,
  setting,
  search,
}
