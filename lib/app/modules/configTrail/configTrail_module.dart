import 'package:MegaHackFive/app/modules/configTrail/configTrail_controller.dart';
import 'package:MegaHackFive/app/modules/configTrail/configTrail_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ConfigTrailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ConfigTrailController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/configTrail', child: (_, args) => ConfigTrailPage()),
      ];

  static Inject get to => Inject<ConfigTrailModule>.of();
}
