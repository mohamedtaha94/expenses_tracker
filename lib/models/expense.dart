import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

enum CategoryEnum {food, travel , leisure , work}

const categoryIcons = {
  CategoryEnum.food: Icons.lunch_dining,
  CategoryEnum.travel:Icons.flight_takeoff_outlined,
  CategoryEnum.leisure: Icons.movie,
  CategoryEnum.work: Icons.work
};

class Expense {
final String id;
final String title;
final double amount;
final DateTime date;
final CategoryEnum category;

  Expense( { required this.title, required this.amount, required this.date,required this.category,}):id=uuid.v4();

String get formattedDate{
  return formatter.format(date);
}
}