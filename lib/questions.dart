import 'package:flutter/material.dart';

final List<Question> booleanQuestions = [
  Question('The Earth is flat.', false),
  Question('The Sun is a star.', true),
  Question('Water boils at 100 degrees Celsius.', true),
  Question('The Great Wall of China is visible from space.', false),
  Question('The human body has four lungs.', false),
  Question('Mount Kilimanjaro is the tallest mountain in the world.', false),
  Question('Dolphins are mammals.', true),
  Question(
      'Abraham Lincoln was the first President of the United States.', false),
  Question('The chemical symbol for oxygen is "O2".', true),
  Question('Venus is the closest planet to the Sun.', false),
  Question('Bananas grow on trees.', false),
  Question('The human skeleton is made up of less than 100 bones.', false),
  Question('Ostriches can fly.', false),
  Question('Rome is the capital of Italy.', true),
  Question('The speed of light is about 300,000 km/s.', true),
  Question('The Amazon River is the longest river in the world.', false),
  Question('Gold is an element.', true),
  Question('Albert Einstein discovered gravity.', false),
  Question('The Declaration of Independence was signed in 1776.', true),
  Question('A centipede has 100 legs.', false),
  Question('The moon orbits the Earth.', true),
  Question('The Pacific Ocean is the largest ocean on Earth.', true),
  Question('The human brain weighs approximately 2 kilograms.', true),
  Question('Kangaroos are native to Australia.', true),
  Question('The Statue of Liberty was a gift from France.', true),
  Question('Penguins can fly.', false),
  Question(
      'Water is composed of two hydrogen atoms and one oxygen atom.', true),
  Question('A year on Mercury is longer than a year on Earth.', false),
  Question('The Eiffel Tower is located in London.', false),
  Question('The chemical symbol for silver is "Ag".', true),
  Question('The Sahara Desert is the largest desert in the world.', true),
  Question('The human body has five senses.', true),
  Question('The first man to walk on the moon was Buzz Aldrin.', false),
  Question('The currency of China is the yen.', false),
  Question('Spiders have six legs.', false),
  Question('Napoleon Bonaparte was a French emperor.', true),
  Question('Brazil is the largest country in South America.', true),
  Question('Diamonds are made from carbon.', true),
  Question('The Earth has one moon.', true),
];

class Question {
  String question;
  bool correctAnswer;

  Question( this.question,this.correctAnswer,);
}
