import 'package:feature_2/vehicle_fuel/vehicle_fuel_loader.dart';
import 'package:scale_framework/scale_framework.dart';

class VehicleFuelModule implements FeatureModule {
  @override
  void setup(PublicRegistry registry) {
    registry.addLoader(
      mapper: MapperOfVehicleFuelDto(),
      factory: VehicleFuelModelsFactory(),
      uri: 'vehicle/{VIN}/fuel',
      requires: ['VehicleModel'],
      options: LoaderOptions(
        initializeOnAppStart: true,
      ),
    );
  }
}
