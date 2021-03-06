import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 80,
          width: 80,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: 80,
                  width: 80,
                  constraints: BoxConstraints(
                    maxWidth: 80,
                    maxHeight: 80,
                  ),
                  child: CircularProgressIndicator(
                      strokeWidth: 10,
                      value: 0.25,
                      backgroundColor: AppColors.chartSecondary,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.chartPrimary)),
                ),
              ),
              Center(
                child: Text(
                  "25%",
                  style: AppTextStyles.heading,
                ),
              ),
            ],
          )),
    );
  }
}
