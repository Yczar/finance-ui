import 'package:finance_ui/src/res/colors/ui_colors.dart';
import 'package:finance_ui/src/res/svgs/ui_svgs.dart';
import 'package:finance_ui/src/ui/painters/progress_indicator_painter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({Key? key}) : super(key: key);

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColors.backagroundColor,
      appBar: AppBar(
        backgroundColor: UIColors.backagroundColor,
        elevation: 0,
        title: Text(
          'Your Cards',
          style: TextStyle(
            color: Colors.white.withOpacity(0.9),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Container(
                    height: 148,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 53,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF2A233E),
                          Color(0xFF2A233E),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 148,
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.only(
                      left: 42,
                      right: 42,
                      top: 12,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF2A233E),
                          Color(0xFF4E3955),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              '\$ 20,500',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SvgPicture.asset(
                              kMasterCardSVG,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Cost \$14.22',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          width: 148,
                          height: 148,
                          margin: const EdgeInsets.only(
                            top: 99,
                          ),
                          child: CustomPaint(
                            painter: ProgressIndicatorPainter(),
                            child: Container(),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 103,
                          ),
                          child: CircleAvatar(
                            radius: 72,
                            backgroundColor: Colors.white,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '12%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20,
                                    color: UIColors.primaryColor,
                                  ),
                                ),
                                const Text(
                                  'Limit spent%',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xFF636366),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFF2A233E),
                ),
                margin: const EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 20,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 27,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Income',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFFFF9F0A),
                            ),
                          ),
                          Text(
                            '\$ 3,500.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 43,
                    ),
                    SizedBox(
                      height: 52,
                      child: VerticalDivider(
                        width: 1,
                        color: const Color(0xFFEBEBF5).withOpacity(0.6),
                      ),
                    ),
                    const SizedBox(
                      width: 43,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Spent',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color(0xFFFF375F),
                            ),
                          ),
                          Text(
                            '\$ 1,500.00',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  'Last Spendings',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                    ),
                    title: const Text(
                      'Amazon',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      '22.07.21 . 12:00',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    trailing: const Text(
                      '-\$ 16.00',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
