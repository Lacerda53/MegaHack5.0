import 'package:MegaHackFive/app/modules/myTrail/myTrail_controller.dart';
import 'package:MegaHackFive/app/modules/myTrail/myTrail_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyTrailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => MyTrailController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/myTrail', child: (_, args) => MyTrailPage()),
      ];

  static Inject get to => Inject<MyTrailModule>.of();
}
