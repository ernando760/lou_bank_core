import 'package:flutter/material.dart';
import 'package:lou_bank_core/src/controllers/bottom_navigation_bar_controller.dart';
import 'package:lou_bank_core/src/widgets/lou_bank_bottom_navigation_bar/lou_bank_button_navigation_bar.dart';

class LouBankNavigationBarItem {
  final Widget icon;
  final Widget activeIcon;

  LouBankNavigationBarItem({required this.icon, Widget? activeIcon})
      : activeIcon = activeIcon ?? icon;
}

class LouBankNavigationBar extends StatefulWidget {
  const LouBankNavigationBar({
    super.key,
    this.currentIndex = 0,
    required this.navigationBarButtons,
    this.onChangePage,
    this.disableIcon = false,
  });

  final int currentIndex;
  final List<LouBankNavigationBarItem> navigationBarButtons;
  final void Function(int page)? onChangePage;
  final bool disableIcon;
  @override
  State<LouBankNavigationBar> createState() => _LouBankNavigationBarState();
}

class _LouBankNavigationBarState extends State<LouBankNavigationBar> {
  late final LouBankBottonNavigationBarController bottonNavigationBarController;
  @override
  void initState() {
    super.initState();
    bottonNavigationBarController = LouBankBottonNavigationBarController(
        initialPage: widget.currentIndex, disableIcon: widget.disableIcon);
  }

  @override
  void dispose() {
    bottonNavigationBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: bottonNavigationBarController,
      builder: (context, child) {
        return Container(
          constraints: const BoxConstraints(maxHeight: 82, minHeight: 35),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), topRight: Radius.circular(12)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: widget.navigationBarButtons.indexed
                .map((e) => Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (widget.onChangePage != null) {
                            widget.onChangePage!(e.$1);
                          }
                        },
                        child: LouBankNavigationBarButton(
                            shape: bottonNavigationBarController.disableIcon
                                ? const RoundedRectangleBorder()
                                : RoundedRectangleBorder(
                                    borderRadius: widget
                                                .navigationBarButtons[e.$1] ==
                                            widget.navigationBarButtons.first
                                        ? const BorderRadius.only(
                                            topLeft: Radius.circular(12),
                                          )
                                        : widget.navigationBarButtons[e.$1] ==
                                                widget.navigationBarButtons.last
                                            ? const BorderRadius.only(
                                                topRight: Radius.circular(12),
                                              )
                                            : const BorderRadius.all(
                                                Radius.zero),
                                  ),
                            child: e.$1 ==
                                        bottonNavigationBarController
                                            .position &&
                                    !bottonNavigationBarController.disableIcon
                                ? e.$2.activeIcon
                                : e.$2.icon,
                            onPressed: () =>
                                bottonNavigationBarController.jumpToPage(e.$1)),
                      ),
                    ))
                .toList(),
          ),
        );
      },
    );
  }
}
