import 'package:flutter/widgets.dart';
import 'package:scale_framework/scale_framework.dart';

import 'brand.dart';

class VehicleBrandWidget extends StatelessWidget {
  const VehicleBrandWidget({super.key});

  @override
  Widget build(BuildContext context) => StateBuilder<Brand>(
        builder: (context, brand) => Text(brand.name),
      );
}
