import 'package:dev_quiz/challenge/widgets/prev_next_button/prev_next_button_widget.dart';
import 'package:dev_quiz/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:dev_quiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              QuestionIndicatorWidget(),
            ],
          ),
        ),
      ),
      body: QuizWidget(title: "O que o Fluter faz em sua totalidade?"),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: PrevNextButtonWidget.white(
                label: "Fácil",
                onTap: () {},
              )),
              SizedBox(
                width: 7,
              ),
              Expanded(
                  child: PrevNextButtonWidget.green(
                label: "Confirmar",
                onTap: () {},
              ))
            ],
          ),
        ),
      ),
    );
  }
}
