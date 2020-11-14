import 'package:MegaHackFive/app/modules/congratulations/congratulations_module.dart';
import 'package:MegaHackFive/app/modules/myTrail/myTrail_module.dart';
import 'package:MegaHackFive/app/modules/subConfigTrail/subConfigTrail_module.dart';
import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:MegaHackFive/app/app_widget.dart';
import 'package:MegaHackFive/app/modules/login/login_module.dart';
import 'package:MegaHackFive/app/modules/home/home_module.dart';
import 'package:MegaHackFive/app/modules/welcome/welcome_module.dart';
import 'package:MegaHackFive/app/modules/listTrail/listtrail_module.dart';
import 'package:MegaHackFive/app/modules/configTrail/configTrail_module.dart';
import 'package:MegaHackFive/app/modules/detailsTrail/detailsTrail_module.dart';
import 'package:MegaHackFive/app/modules/finalTrail/finalTrail_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter('/home', module: HomeModule()),
        ModularRouter('/login', module: LoginModule()),
        ModularRouter('/welcome', module: WelcomeModule()),
        ModularRouter('/listTrail', module: ListTrailModule()),
        ModularRouter('/detailsTrail', module: DetailsTrailModule()),
        ModularRouter('/configTrail', module: ConfigTrailModule()),
        ModularRouter('/finalTrail', module: FinalTrailModule()),
        ModularRouter('/myTrail', module: MyTrailModule()),
        ModularRouter('/subConfigTrail', module: SubConfigTrailModule()),
        ModularRouter('/congratulations', module: CongratulationsModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
