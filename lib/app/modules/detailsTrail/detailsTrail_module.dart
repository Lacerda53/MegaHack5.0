import 'package:MegaHackFive/app/modules/detailsTrail/detailsTrail_controller.dart';
import 'package:MegaHackFive/app/modules/detailsTrail/detailsTrail_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailsTrailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => DetailsTrailController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/detailsTrail', child: (_, args) => DetailsTrailPage()),
      ];

  static Inject get to => Inject<DetailsTrailModule>.of();
}
