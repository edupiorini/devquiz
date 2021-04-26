import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              child: CircularProgressIndicator(
                strokeWidth: 8,
                value: 0.23,
                backgroundColor: AppColors.chartSecondary,
                valueColor:
                    AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
              ),
            ),
          ),
          Center(
            child: Text(
              "23%",
              style: AppTextStyles.heading,
            ),
          )
        ],
      ),
    );
  }
}
