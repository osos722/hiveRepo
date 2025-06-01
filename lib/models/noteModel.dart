import 'package:hive/hive.dart';

part 'noteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String noteTitle;

  @HiveField(1)
  final String noteBody;

  @HiveField(2)
  final String date;

  @HiveField(3)
  final int color;

  NoteModel({
    required this.color,
    required this.date,
    required this.noteBody,
    required this.noteTitle,
  });
}
