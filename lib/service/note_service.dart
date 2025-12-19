// import 'package:project000/model/note.dart';
//
// class NoteService{
//   final List<Note> note=[
//     Note(title: "1234", description: "5678"),
//     Note(title: "abcd", description: "efgh"),
//   ];
//   void remove(int index){
//     note.remove(index);
//   }
//
// }
// import 'package:project000/model/note.dart';
//
// class NoteService {
//   final List<Note> note = [
//     Note(title: "1234", description: "5678"),
//     Note(title: "abcd", description: "efgh"),
//   ];
//
//   void remove(int index) {
//     note.removeAt(index); // ⚠️ 要用 removeAt
//   }
// }
//
// // 建立一個全域實例
// final noteService = NoteService();

import 'package:project000/model/note.dart';

class NoteService {
  // 1. 確保這裡有初始化為空列表 []，不能是 null
  List<Note> note = [
    Note(
      title: "abcd1",
      description: "111111",
    ),
    Note(
      title: "efgh2",
      description: "222222",
    ),
  ];

  void remove(int index) {
    note.removeAt(index);
  }
}

// 2. 這一行非常重要！
// 你必須在這裡建立一個全域變數 (Global Variable)，才能在 main.dart 直接用 noteService
NoteService noteService = NoteService();
