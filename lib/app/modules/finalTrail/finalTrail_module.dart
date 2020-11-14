import 'package:MegaHackFive/app/modules/finalTrail/finalTrail_controller.dart';
import 'package:MegaHackFive/app/modules/finalTrail/finalTrail_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FinalTrailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FinalTrailController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/finalTrail', child: (_, args) => FinalTrailPage()),
      ];

  static Inject get to => Inject<FinalTrailModule>.of();
}
