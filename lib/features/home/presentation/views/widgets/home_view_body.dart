import 'package:fitness_app/constants.dart';
import 'package:fitness_app/core/utls/app_router.dart';
import 'package:fitness_app/core/utls/styles.dart';
import 'package:fitness_app/features/auth/presentation/views/widgets/logo.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/bluetooth_dropDown_list.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/cards_list_view.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/custom_liner_progress_indicator.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/new_plan_button.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/percent_progress_indicator.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/see_metrics_button.dart';
import 'package:fitness_app/features/home/presentation/views/widgets/workout_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final GlobalKey _bluetoothKey = GlobalKey();
  OverlayEntry? _overlayEntry;
  bool isDropdownOpen = false;
  void _toggleDropdown() {
    if (isDropdownOpen) {
      _removeDropdown();
    } else {
      _showDropdown();
    }
  }

  void _showDropdown() {
    final renderBox =
        _bluetoothKey.currentContext!.findRenderObject() as RenderBox;
    final offset = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    _overlayEntry = OverlayEntry(
      builder: (context) => Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: _removeDropdown,
              behavior: HitTestBehavior.translucent,
            ),
          ),
          Positioned(
            top: offset.dy + size.height + 8,
            right: 16,
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(8),
              child: BluetoothDropdownList(
                onItemSelected: (device) {
                  _removeDropdown();
                },
              ),
            ),
          ),
        ],
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);
    isDropdownOpen = true;
  }

  void _removeDropdown() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    isDropdownOpen = false;
  }

  @override
  void dispose() {
    _removeDropdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(width: 24, height: 27.78),
                  IconButton(
                    key: _bluetoothKey,
                    onPressed: _toggleDropdown,
                    icon: SvgPicture.asset(
                      bluetoothIcon,
                      height: 32,
                      width: 32,
                    ),
                  ),
                ],
              ),
            const  SizedBox(height: 12),
              const CardsListView(),
          const    SizedBox(height: 32),
              CustomLinerProgressIndicator(),
              
            const  WorkoutCards(
                title: 'Your next workout:',
                subTitle: 'Push ups',
                buttonName: 'Start workout',
              ),

              WorkoutCards(
                title: 'Your last workout:',
                titleStyle: Styles.mediumTextStyle16.copyWith(
                  color: const Color(0xffA1A1AA),
                ),
                buttonName: 'Redo workout',
                subTitle: 'Pull ups',
                center: const Alignment(1.3, -0.5),
              ),
              const SizedBox(height: 20),
              const NewPLanButton(),
              SeeMetricsButton(
                onPressed: () =>
                    GoRouter.of(context).push(AppRouter.kMetricsView),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
