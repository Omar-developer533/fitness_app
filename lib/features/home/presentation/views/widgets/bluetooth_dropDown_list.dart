import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BluetoothDropdownList extends StatelessWidget {
  final Function(String) onItemSelected;

const  BluetoothDropdownList({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          gradient: const LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        width: 220,
        child: Column(
          children: [
            ListTile(
              horizontalTitleGap: 2,
              leading: SvgPicture.asset(connectIcon, height: 20, width: 20),
              title:const Text(
                'Tavon’s fitbit',
                style: Styles.mediumTextStyle14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                'Device ID: 1200393a23r',
                style: Styles.regularTextStyle14.copyWith(
                  color: const Color(0xffD4D4D8),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: GestureDetector(
                child: Text(
                  'Connected',
                  style: Styles.mediumTextStyle10.copyWith(
                    color: const Color(0xff52C76C),
                  ),
                ),
              ),
            ),
            ListTile(
              horizontalTitleGap: 2,
              leading: SvgPicture.asset(connectIcon, height: 20, width: 20),
              title:const Text(
                'AppleWat...',
                style: Styles.mediumTextStyle14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                'Device ID: 1200393a23r',
                style: Styles.regularTextStyle14.copyWith(
                  color: const Color(0xffD4D4D8),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: GestureDetector(
                child: Text(
                  'Connected',
                  style: Styles.mediumTextStyle10.copyWith(
                    color: const Color(0xff52C76C),
                  ),
                ),
              ),
            ),
            ListTile(
              horizontalTitleGap: 2,
              leading: SvgPicture.asset(connectIcon, height: 20, width: 20),
              title:const Text(
                'Tavon’s fitbit',
                style: Styles.mediumTextStyle14,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                'Device ID: 1200393a23r',
                style: Styles.regularTextStyle14.copyWith(
                  color: const Color(0xffD4D4D8),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: GestureDetector(
                child: Text(
                  'Connected',
                  style: Styles.mediumTextStyle10.copyWith(
                    color: const Color(0xff52C76C),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Center(
                child: Text(
                  'Add a device',
                  style: Styles.mediumTextStyle12.copyWith(
                    color: const Color(0xffFFA05C),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
