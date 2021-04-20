import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String title;
  final bool isRight;
  final bool isSelected;

  const AnswerWidget(
      {Key? key,
      required this.title,
      required this.isSelected,
      required this.isRight})
      : super(key: key);

  bool get isCorrect => isSelected && isRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isCorrect ? AppColors.lightGreen : AppColors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.fromBorderSide(
          BorderSide(color: AppColors.border),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(title,
                style: isCorrect
                    ? AppTextStyles.body.copyWith(
                        color: AppColors.darkGreen,
                      )
                    : AppTextStyles.body),
          ),
          Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: isCorrect ? AppColors.darkGreen : Colors.black,
            ),
            child: isSelected
                ? isCorrect
                    ? Icon(
                        Icons.check,
                        color: AppColors.white,
                      )
                    : Icon(Icons.close)
                : null,
          ),
        ],
      ),
    );
  }
}
