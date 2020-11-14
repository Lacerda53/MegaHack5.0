import 'package:MegaHackFive/app/modules/subConfigTrail/subConfigTrail_controller.dart';
import 'package:MegaHackFive/app/modules/subConfigTrail/subConfigTrail_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SubConfigTrailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SubConfigTrailController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/subConfigTrail', child: (_, args) => SubConfigTrailPage()),
      ];

  static Inject get to => Inject<SubConfigTrailModule>.of();
}
