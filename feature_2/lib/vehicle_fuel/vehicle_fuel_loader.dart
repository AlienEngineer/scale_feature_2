import 'package:flutter/widgets.dart';
import 'package:scale_framework/scale_framework.dart';

class VehicleFuelModelsFactory
    implements LoaderModelsFactory<VehicleFuel, VehicleFuelDto> {
  const VehicleFuelModelsFactory();

  @override
  Map<String, Object>? getInitialArguments() => {};

  @override
  VehicleFuel makeInitialState() => DefaultVehicleFuel();

  @override
  VehicleFuelDto makeOnErrorDto(Object? error) {
    print(error);
    return VehicleFuelDto();
  }

  @override
  VehicleFuel map(VehicleFuelDto dto) {
    return CombustionVehicleFuel();
  }
}

class MapperOfVehicleFuelDto implements MapperOf<VehicleFuelDto> {
  @override
  VehicleFuelDto map(String data) => VehicleFuelDto();
}

class VehicleFuelDto {}

abstract class VehicleFuel {
  Widget build();
}

class DefaultVehicleFuel implements VehicleFuel {
  const DefaultVehicleFuel();

  @override
  build() => const SizedBox.shrink();
}

class CombustionVehicleFuel implements VehicleFuel {
  @override
  Widget build() {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ElectricVehicleFuel implements VehicleFuel {
  @override
  Widget build() {
    // TODO: implement build
    throw UnimplementedError();
  }
}
