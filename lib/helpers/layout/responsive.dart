import 'package:flutter/material.dart';

import 'device_size_constants.dart';
import 'device_type.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget laptop;
  final Widget desktop;

  Responsive({
    Key key,
    @required this.mobile,
    @required this.tablet,
    @required this.laptop,
    @required this.desktop,
  }) : super(key: key);

  static DeviceType getDeviceType(double width) {
    if (width < mobileTabletBreakpoint) {
      return DeviceType.Mobile;
    } else if (mobileTabletBreakpoint < width &&
        width < tabletLaptopBreakpoint) {
      return DeviceType.Tablet;
    } else if (tabletLaptopBreakpoint < width &&
        width < laptopDesktopBreakpoint) {
      return DeviceType.Laptop;
    } else {
      return DeviceType.Desktop;
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        DeviceType deviceType = getDeviceType(constraints.maxWidth);
        switch (deviceType) {
          case DeviceType.Mobile:
            return mobile;
            break;
          case DeviceType.Tablet:
            return tablet;
            break;
          case DeviceType.Laptop:
            return laptop;
            break;
          case DeviceType.Desktop:
            return desktop;
            break;
          default:
            return Container(
              child: Text("Device Size Error"),
            );
        }
      },
    );
  }
}
