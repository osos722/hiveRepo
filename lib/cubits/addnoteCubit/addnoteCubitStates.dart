abstract class AddNoteStates{}
class addNoteInitialState extends AddNoteStates{}
class AddNoteSuccess extends AddNoteStates{}
class AddNoteLoad extends AddNoteStates{}
class AddNoteFail extends AddNoteStates{
  final String error;
  AddNoteFail({required this.error});
}