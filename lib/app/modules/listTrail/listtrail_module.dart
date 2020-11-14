
import 'package:MegaHackFive/app/modules/listTrail/listtrail_controller.dart';
import 'package:MegaHackFive/app/modules/listTrail/listtrail_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ListTrailModule extends ChildModule{
  @override
  List<Bind> get binds => [
        Bind((i)=> ListtrailController()),
      ];

 @override
  List<ModularRouter> get routers => [
        ModularRouter('/listTrail', child: (_, args) => ListTrailPage()),
      ];

  static Inject get to => Inject<ListTrailModule>.of();
}