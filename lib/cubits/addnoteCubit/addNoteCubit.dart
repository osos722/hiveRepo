import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hivetutorial/cubits/addnoteCubit/addnoteCubitStates.dart';
import 'package:hivetutorial/models/noteModel.dart';

class Addnotecubit extends Cubit<AddNoteStates>{
  Addnotecubit():super(addNoteInitialState());
  addNote(NoteModel note)async{
    emit(AddNoteLoad());
    try{
      var notes_box=Hive.box<NoteModel>('notes_box');
      emit(AddNoteSuccess());
      await notes_box.add(note);
    }
    catch(e){
      emit(AddNoteFail(error: e.toString()));
    }
  }
}