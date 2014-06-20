'use strict'

angular.module('interviewappApp')
.controller 'SearchCtrl',['$scope', 'Questions', 'QuestionsKeys', 'Portfolio', ($scope, Questions, QuestionsKeys, Portfolio) ->
    if Questions.questionsobject is undefined
      Questions.getquestions()
    if QuestionsKeys.questionskeysobject is undefined
      QuestionsKeys.getquestionskeys()
    $scope.search = {}
    $scope.questions = Questions
    $scope.filterlimit = 50
    $scope.questionskeys = QuestionsKeys
    $scope.Portfolio = Portfolio
  ]