import 'package:finance_ui/src/res/colors/ui_colors.dart';
import 'package:finance_ui/src/res/images/ui_images.dart';
import 'package:finance_ui/src/res/svgs/ui_svgs.dart';
import 'package:finance_ui/src/ui/screens/cards_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  late GlobalKey _paymentTextKey;
  late ValueNotifier<Size?> _paymentTextSizeNotifier;
  @override
  void initState() {
    super.initState();
    _paymentTextKey = GlobalKey();
    _paymentTextSizeNotifier = ValueNotifier(null);
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _paymentTextSizeNotifier.value = _paymentTextKey.currentContext?.size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.backagroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                kWelcomeImage,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 19.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'The new era\nof electronic',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Payments',
                      key: _paymentTextKey,
                      style: TextStyle(
                        color: UIColors.primaryColor,
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    ValueListenableBuilder(
                      valueListenable: _paymentTextSizeNotifier,
                      builder: (_, Size? size, __) {
                        return Container(
                          width: size?.width,
                          height: 4,
                          decoration: BoxDecoration(
                            color: UIColors.primaryColor,
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'New level finance product with\nnew functionality.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 45,
                    ),
                    UnconstrainedBox(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => const CardsScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: UIColors.primaryColor,
                          padding: const EdgeInsets.only(
                            left: 54,
                            top: 6,
                            bottom: 6,
                            right: 6,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(300),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Start',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 29,
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.white.withOpacity(0.3),
                              child: SvgPicture.asset(
                                kArrowRightSVG,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
