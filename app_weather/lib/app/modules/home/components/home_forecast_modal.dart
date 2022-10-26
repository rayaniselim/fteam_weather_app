import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeForecastModal extends StatelessWidget {
  const HomeForecastModal({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        CustomPaint(
          painter: RPSCustomPainter(Size(size.width, 320)),
          child: Column(
            children: [
              Container(
                width: size.width,
                height: 46,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.horizontal_rule_rounded,
                    color: LightColors.colorsTextGrey,
                  ),
                  onPressed: () {
                    showModal(context, size: size);
                  },
                ),
              ),
              Container(
                height: 16,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  RPSCustomPainter(this.size);

  final Size size;

  @override
  void paint(Canvas canvas, Size _) {
    Paint paint0 = Paint()..color = const Color(0xFFFFFFFF);

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.1442857);
    path0.quadraticBezierTo(size.width * -0.0020583, size.height * -0.0007571,
        size.width * 0.0826667, 0);
    path0.quadraticBezierTo(size.width * 0.2919750, size.height * 0.0433571,
        size.width * 0.5007333, size.height * 0.0441286);
    path0.quadraticBezierTo(size.width * 0.7089417, size.height * 0.0436714,
        size.width * 0.9172500, 0);
    path0.quadraticBezierTo(size.width * 0.9999000, size.height * 0.0022286,
        size.width, size.height * 0.1440857);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

void showModal(BuildContext context, {required Size size}) {
  print('porressa: ${size.height * 0.27}');
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: Colors.transparent,
    elevation: 0,
    barrierColor: Colors.black12,
    constraints: const BoxConstraints(
      maxHeight: 204,
    ),
    builder: (BuildContext context) {
      return CustomPaint(
        painter: RPSCustomPainter(Size(size.width, 320)),
        child: Column(
          children: [
            SizedBox(
              height: 46,
              child: IconButton(
                icon: const Icon(
                  Icons.horizontal_rule_rounded,
                  color: LightColors.colorsTextGrey,
                ),
                onPressed: () {
                  showModal(context, size: size);
                },
              ),
            ),
            Container(
              color: Theme.of(context).backgroundColor,
              child: Column(
                children: [
                  const Text(
                    'Weather Today',
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        HourFive(),
                        HourSix(),
                        HourSeven(),
                        HourEight(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
