import 'package:flutter/widgets.dart';
import 'package:scale_framework/scale_framework.dart';

import 'capability.dart';

class CapabilitiesWidget extends StatelessWidget {
  const CapabilitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StateBuilder<CapabilitiesStateManager, List<Capability>>(
      builder: (context, state) {
        return Column(
          children: state.map((e) {
            if (e.name1 == "asdasdsad") {
              return Text(e.name1 + "asdasd");
            }
            return Text(e.name1);
          }).toList(),
        );
      },
    );
  }
}

class CapabilitiesStateManager extends StateManager<List<Capability>> {
  CapabilitiesStateManager(DataConsumer<List<Capability>> onChange)
      : super([]) {
    onChange.listen((capabilities) => pushNewState((_) => capabilities));
  }
}
