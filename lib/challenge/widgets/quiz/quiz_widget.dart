import 'package:dev_quiz/challenge/widgets/answer/answer_widget.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;
  final VoidCallback onChange;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          ...question.awnsers
              .map(
                (e) => AnswerWidget(
                  title: e.title,
                  isRight: e.isRight,
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
