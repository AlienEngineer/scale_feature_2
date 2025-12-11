import 'package:feature_2/vehicle_brand/vehicle_brand_state_manager.dart';
import 'package:scale_framework/scale_framework.dart';

import 'brand.dart';

class VehicleBrandModule extends FeatureModule {
  final DataConsumer<Brand> onBrandChange;

  VehicleBrandModule({required this.onBrandChange});

  @override
  void setup(PublicRegistry registry) {
    registry.addGlobalStateManager(
      VehicleBrandStateManager(onBrandChange),
    );
  }
}
