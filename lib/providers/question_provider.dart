import 'package:flutter/material.dart';
import 'package:test_drive/model/questions.dart';

class QuestionProvider extends ChangeNotifier {
  final List<Question> _questions = sample_data
      .map((item) => Question(
          id: item['id'],
          question: item['question'],
          options: item['options'],
          answer: item['answer_index']))
      .toList();

  late List<Question> questions;

  Future<List<Question>> getData() async {
    await Future.delayed(const Duration(seconds: 10));
    questions = _questions;
    return questions;
  }
}
