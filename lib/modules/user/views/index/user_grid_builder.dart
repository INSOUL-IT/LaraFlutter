import 'package:flutter/material.dart';
import 'package:lara_flutter/helpers/layout/device_type.dart';
import 'package:lara_flutter/helpers/layout/responsive.dart';
import 'package:lara_flutter/modules/user/models/user_model.dart';
import 'package:lara_flutter/modules/user/views/index/user_list_card.dart';

class UserGridBuilder extends StatelessWidget {
  final List<UserModel> users;
  const UserGridBuilder({
    Key key,
    this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    // print(deviceWidth);
    DeviceType deviceType = Responsive.getDeviceType(deviceWidth);
    int itemInOneRow = 1;
    if (deviceType == DeviceType.Mobile) {
      itemInOneRow = 1;
    } else if (deviceType == DeviceType.Tablet) {
      itemInOneRow = 2;
    } else if (deviceType == DeviceType.Laptop) {
      itemInOneRow = 3;
    } else if (deviceType == DeviceType.Desktop) {
      itemInOneRow = 4;
    }

    return Expanded(
      flex: 1,
      child: GridView.count(
        childAspectRatio: 3,
        crossAxisCount: itemInOneRow,
        shrinkWrap: true,
        children: List.generate(this.users.length, (index) {
          return UserListCard(
            id: users[index].id,
            name: users[index].name,
            email: users[index].email,
          );
        }),
      ),
    );
  }
}
