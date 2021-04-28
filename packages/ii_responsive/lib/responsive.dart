part of ii_responsive;

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

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        Device device = Device(constraints.maxWidth);
        switch (device.type()) {
          case DeviceType.MOBILE:
            return mobile;
            break;
          case DeviceType.TABLET:
            return tablet;
            break;
          case DeviceType.LAPTOP:
            return laptop;
            break;
          case DeviceType.DESKTOP:
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
