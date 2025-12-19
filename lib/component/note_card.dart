import 'package:flutter/material.dart';
import 'package:project000/model/note.dart';

class NoteCard extends StatelessWidget {
  final Note note;
  final VoidCallback remove;

  const NoteCard({
    super.key,
    required this.note,
    required this.remove,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green, // 保持綠色背景
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                note.title,
                style: const TextStyle(fontSize: 24), // 標題保持原本顏色 (預設黑色)
              ),
              IconButton(
                onPressed: remove,
                icon: const Icon(Icons.delete),
              ),
            ],
          ),

          // --- 修改這裡：改成白色分隔線 ---
          const Divider(
            color: Colors.white, // 設定線條為白色
            thickness: 0.5,      // 設定線條粗細 (可選)
          ),
          // -----------------------------

          // --- 修改這裡：改成白色文字 ---
          Text(
            note.description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white, // 設定文字為白色
            ),
          ),
          // ----------------------------
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:project000/model/note.dart';
//
// class NoteCard extends StatelessWidget {
//   final Note note;
//   final VoidCallback remove;
//
//   const NoteCard({
//     super.key,
//     required this.note,
//     required this.remove,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.green,
//         borderRadius: BorderRadius.circular(40),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 note.title,
//                 style: const TextStyle(fontSize: 24),
//               ),
//               IconButton(
//                 onPressed: remove,
//                 icon: const Icon(Icons.delete),
//               ),
//             ],
//           ),
//           const Divider(),
//           Text(
//             note.description,
//             style: const TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:project000/model/note.dart';
//
// class NoteCard extends StatelessWidget {
//   final Note note;
//   final VoidCallback remove;
//
//   const NoteCard({
//     super.key,
//     required this.note,
//     required this.remove,
//
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       margin: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.green,
//         borderRadius: BorderRadius.circular(40),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(note.title,style: TextStyle(fontSize: 30),),
//                 IconButton(
//                     onPressed: remove,
//                     icon: Icon(Icons.delete))
//               ]
//
//           ),
//           //Text("$index",style: TextStyle(fontSize: 30),),
//           Divider(
//             thickness: 1,
//             indent:5,
//             endIndent: 5,
//           ),
//           //Text("count",style: TextStyle(fontSize: 30),),
//         ],
//       ),
//     );
//   }
// }
