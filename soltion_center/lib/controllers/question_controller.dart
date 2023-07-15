import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:soltion_center/services/question_service.dart';

import '../models/answer_model.dart';
import '../models/category_model.dart';
import '../models/question_model.dart';
import '../models/user_model.dart';

class QuestionController with ChangeNotifier {
  final QuestionServices questionService = QuestionServices();

  List<QuestionModel> _allQuestions = [];

  // get all questions
  Future<List<QuestionModel>> getAllQuestions() async {
    _allQuestions = await questionService.getAllQuestions();
    return _allQuestions;
  }

   // get the users of the question
  Future<List<UserModel>> getQuestionUsers(String questionID) async {
    return await questionService.getQuestionUsers(questionID);
  }


//search question by categories (categories [])
   Future<List<QuestionModel>> searchQuestionsByCategory(List<CategoryModel> categories) async {
    return await questionService.searchQuestionsByCategory(categories);
   }

//update the answer counter
  Future<void> updateAnswerCounter(String qId, String answerID, int counter) async {
    return await questionService.updateAnswerCounter(qId, answerID, counter);
  }

//search question by categories (categories [], current User ID)
  Future<List<QuestionModel>> getQuestionsByCategoryForTheUser(List<CategoryModel> categories,
   String userID) async {

    return await questionService.getQuestionsByCategoryForTheUser(categories, userID);
  }


// get user question (User id)
  Future<List<QuestionModel>> getUserQuestions(String uId) async {

    return await questionService.getUserQuestions(uId);
  }

//Get Categories of Question
Future<List<CategoryModel>?> getAllCategoryOfQuestion(String questionID) async {
  return await questionService.getAllCategoryOfQuestion(questionID);
}

//Add question
  Future<void> addQuestion(QuestionModel question) async {
    return await questionService.addQuestion(question);
  }

  //update the user list of the question
  Future<void> updateQuestionUsers(String questionID, List<String>? userList, String? currentUserID) async {
    return await questionService.updateQuestionUsers(questionID, userList, currentUserID);
  }

//add answer to question (questionID)
  Future<void> addQuestionAnswer(QuestionModel question,AnswerModel answer,) async {

    return await questionService.addQuestionAnswer(question, answer);
  }

//get question Answers
  Future<List<AnswerModel>> getAllAnswerOfQuestion(String qId) async {

    return await questionService.getAllAnswerOfQuestion(qId);
  }

 ///delete
  Future<void> deleteQuestion(String questionId) async {
    return await questionService.deleteQuestion(questionId);
  }

//delete answer
  Future<void> deleteAnswerOfQuestion(String questionId, String answerId) async {
        return await questionService.deleteAnswerOfQuestion(questionId, answerId);
      }

//delete user from question  (userID)
  Future<void> deleteUserOfQuestion(String questionId, String userId) async {

    return await questionService.deleteUserOfQuestion(questionId, userId);
  }

//delete category from question (categoryID)
  Future<void> deleteCategoryOfQuestion(String questionId, String categoryId) async {

    return await questionService.deleteCategoryOfQuestion(questionId, categoryId);
  }
}
