import 'package:flutter/material.dart';

import 'package:dev_quiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int length;
  final int score;

  const ResultPage({
    Key? key,
    required this.title,
    required this.score,
    required this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(top: 100),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
                  "Parabéns!",
                  style: AppTextStyles.heading40,
                ),
                SizedBox(
                  height: 16,
                ),
                Text.rich(
                  TextSpan(
                    text: "Você concluiu ",
                    children: [
                      TextSpan(
                        text: "\n${title}",
                        style: AppTextStyles.bodyBold,
                      ),
                      TextSpan(
                        text: "\ncom ${score} de ${length} acertos.",
                        style: AppTextStyles.bodyBold,
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.purple(
                          label: "Compartilhar", onTap: () {}),
                    )),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.white(
                          label: "Voltar ao início",
                          onTap: () {
                            Navigator.pop(context);
                          }),
                    )),
                  ],
                ),
              ],
            )
          ]),
    ));
  }
}
