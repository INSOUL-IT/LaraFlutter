part of ii_responsive;

enum DeviceType { MOBILE, TABLET, LAPTOP, DESKTOP }

class Device {
  double width;
  Device(this.width);

  DeviceType type() {
    if (width < mobileTabletBreakpoint) {
      return DeviceType.MOBILE;
    } else if (mobileTabletBreakpoint < width &&
        width < tabletLaptopBreakpoint) {
      return DeviceType.TABLET;
    } else if (tabletLaptopBreakpoint < width &&
        width < laptopDesktopBreakpoint) {
      return DeviceType.LAPTOP;
    } else {
      return DeviceType.DESKTOP;
    }
  }
}
