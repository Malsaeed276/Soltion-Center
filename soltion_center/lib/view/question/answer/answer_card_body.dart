import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soltion_center/controllers/question_controller.dart';
import 'package:soltion_center/models/answer_model.dart';

class AnswerCardBody extends StatelessWidget {
  const AnswerCardBody({Key? key, required this.answer})
      : super(key: key);
  final AnswerModel answer;


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final questionProvider = Provider.of<QuestionController>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${answer.answerTitle}',
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          '${answer.answerDescription}',
          style: theme.textTheme.titleSmall,
        ),
        const SizedBox(
          height: 8,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: ElevatedButton(
              style: TextButton.styleFrom(
                primary: theme.colorScheme.onSecondaryContainer,
                onSurface: theme.colorScheme.onSecondaryContainer,
                //padding: const EdgeInsets.all(16.0),
                elevation: 0,
                backgroundColor: theme.colorScheme.secondaryContainer,
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(8.0),
                // ),
              ),
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  backgroundColor: theme.colorScheme.background,
                  title: Center(
                    child: Text(
                      'Vote for the  answer',
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'If this answer is working please vote for working and if it is not wokring vote',
                        style: theme.textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: TextButton.styleFrom(
                              primary: theme.colorScheme.onPrimary,
                              onSurface: theme.colorScheme.onBackground,
                              //padding: const EdgeInsets.all(16.0),
                              backgroundColor:
                              theme.colorScheme.primary,
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(8.0),
                              // ),
                            ),
                            onPressed: () async {
                              await questionProvider.updateAnswerCounter(
                                  answer.questionId!, answer.sId!, 1);
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Working',
                              style: theme.textTheme

                                  .bodyMedium!
                                  .copyWith(
                                  color: theme
                                      .colorScheme.onPrimary),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          OutlinedButton(
                            onPressed: () async {
                              await questionProvider.updateAnswerCounter(
                                  answer.questionId!, answer.sId!, -1);
                              Navigator.pop(context);
                            },
                            child: const Text(
                              'Not working',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              child: Text(
                'Vote',
                style: theme.textTheme.titleSmall,
              )),
        ),
      ],
    );
  }
}
