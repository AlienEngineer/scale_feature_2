import 'package:feature_2/feature_2.dart';
import 'package:scale_framework/scale_framework.dart';

class CapabilitiesModule extends FeatureModule {
  @override
  void setup(PublicRegistry registry) {
    registry.addGlobalStateManager(CapabilitiesStateManager());
  }
}
