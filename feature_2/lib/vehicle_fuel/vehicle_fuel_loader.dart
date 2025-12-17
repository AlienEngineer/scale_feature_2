import 'package:flutter/widgets.dart';
import 'package:scale_framework/scale_framework.dart';

class VehicleFuelLoader
    extends LoaderStateManager<VehicleFuel, VehicleFuelDto> {
  VehicleFuelLoader(HttpRequest<VehicleFuelDto> request)
      : super(request, VehicleFuelModelsFactory(), LoaderOptions());
}

class VehicleFuelModelsFactory
    implements LoaderModelsFactory<VehicleFuel, VehicleFuelDto> {
  const VehicleFuelModelsFactory();

  @override
  Map<String, Object>? getInitialArguments() => {};

  @override
  VehicleFuel makeInitialState() => DefaultVehicleFuel();

  @override
  VehicleFuelDto makeOnErrorDto(Object? error) {
    // TODO: implement makeOnErrorDto
    throw UnimplementedError();
  }

  @override
  VehicleFuel map(VehicleFuelDto dto) {
    return CombustionVehicleFuel();
  }
}

class MapperOfVehicleFuelDto implements MapperOf<VehicleFuelDto> {
  @override
  VehicleFuelDto map(String data) {
    // TODO: implement map
    throw UnimplementedError();
  }
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
