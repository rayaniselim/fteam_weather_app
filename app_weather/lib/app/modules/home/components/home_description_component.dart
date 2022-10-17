import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeDescriptionComponent extends StatelessWidget {
  const HomeDescriptionComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final altura = MediaQuery.of(context).size.height;
    final largura = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            width: largura * 0.93,
            height: altura * 0.098,
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '40%',
                          style: AppFontTheme(16).textWhite,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Humidity',
                          style: AppFontTheme(12).textWhite,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: altura * 0.025,
                  child: const VerticalDivider(
                    color: Colors.white70,
                    thickness: 0.3,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '11km',
                          style: AppFontTheme(16).textWhite,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Visibility',
                          style: AppFontTheme(12).textWhite,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: altura * 0.025,
                  child: const VerticalDivider(
                    color: Colors.white70,
                    thickness: 0.3, //espesura da borda
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '10km/h',
                          style: AppFontTheme(16).textWhite,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Wind',
                          style: AppFontTheme(12).textWhite,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
