import 'package:devquiz/core/core.dart';
import 'package:flutter/material.dart';

import '../widgets.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AnswerWidget(
              title: "Kit de desenvolvimento de interface de usuário",
              isRight: true,
              isSelected: true),
          AnswerWidget(
              title: "Kit de desenvolvimento de interface de usuário",
              isRight: false,
              isSelected: false)
        ],
      ),
    );
  }
}
