import 'package:feature_2/vehicle_fuel/vehicle_fuel.dart';
import 'package:flutter/widgets.dart';
import 'package:scale_framework/scale_framework.dart';

class VehicleFuelWidget extends LoaderWidget<VehicleFuel> {
  const VehicleFuelWidget({super.key});

  @override
  Widget loaded(BuildContext context, VehicleFuel data) =>
      Text('loaded fuel data');

  @override
  Widget loading(BuildContext context) => Text('loading fuel data');

  @override
  Widget onError(BuildContext context, VehicleFuel data) =>
      Text('unable to load fuel data');
}
