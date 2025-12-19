import 'package:flutter/material.dart';
import 'package:project000/model/note.dart';

class NoteAdds extends StatefulWidget {
  const NoteAdds({super.key});

  @override
  State<NoteAdds> createState() => _NoteAddsState();
}

class _NoteAddsState extends State<NoteAdds> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  void _saveNote() {
    final String title = _titleController.text;
    final String description = _descController.text;

    if (title.isNotEmpty && description.isNotEmpty) {
      final newNote = Note(
        title: title,
        description: description,
      );
      Navigator.pop(context, newNote); // 有資料：回傳並儲存
    } else {
      Navigator.pop(context); // 沒資料：直接回傳 null (不儲存)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("新增筆記"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _saveNote,
        child: const Icon(Icons.save),
      ),
      // 1. 使用 GestureDetector 包住整個 body
      body: GestureDetector(
        // 2. 監聽水平滑動結束的事件
        onHorizontalDragEnd: (details) {
          // primaryVelocity > 0 代表向右滑 (速度為正)
          // primaryVelocity < 0 代表向左滑
          if (details.primaryVelocity! > 0) {
            // 3. 執行返回動作 (不帶參數 = 回傳 null = 不儲存)
            Navigator.pop(context);
          }
        },
        // 為了讓點擊空白處也能觸發手勢（不僅僅是點在文字上），設為 opaque
        behavior: HitTestBehavior.opaque,

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                  hintText: "Title",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 0.5,
                height: 20,
              ),
              Expanded(
                child: TextField(
                  controller: _descController,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                    hintText: "Description",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:project000/model/note.dart';
//
// class NoteAdds extends StatefulWidget {
//   const NoteAdds({super.key});
//
//   @override
//   State<NoteAdds> createState() => _NoteAddsState();
// }
//
// class _NoteAddsState extends State<NoteAdds> {
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _descController = TextEditingController();
//
//   @override
//   void dispose() {
//     _titleController.dispose();
//     _descController.dispose();
//     super.dispose();
//   }
//
//   // 儲存邏輯
//   void _saveNote() {
//     final String title = _titleController.text;
//     final String description = _descController.text;
//
//     if (title.isNotEmpty && description.isNotEmpty) {
//       final newNote = Note(
//         title: title,
//         description: description,
//       );
//       Navigator.pop(context, newNote);
//     } else {
//       // 提示使用者輸入
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("標題與內容不能為空")),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("新增筆記"),
//         // 這裡不需要 actions 了，保持乾淨
//       ),
//
//       // 關鍵在這裡！新增這個懸浮按鈕
//       floatingActionButton: FloatingActionButton(
//         onPressed: _saveNote, // 綁定儲存功能
//         child: const Icon(Icons.save), // 圖示變成「儲存」
//       ),
//
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _titleController,
//               decoration: const InputDecoration(
//                 labelText: "title",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 16),
//             TextField(
//               controller: _descController,
//               decoration: const InputDecoration(
//                 labelText: "description",
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 5,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:project000/model/note.dart'; // 記得 import 你的 Note model
//
// class NoteAdds extends StatefulWidget {
//   const NoteAdds({super.key});
//
//   @override
//   State<NoteAdds> createState() => _NoteAddsState();
// }
//
// class _NoteAddsState extends State<NoteAdds> {
//   // 1. 建立控制器來獲取文字輸入
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _descController = TextEditingController();
//
//   @override
//   void dispose() {
//     // 頁面銷毀時釋放控制器資源
//     _titleController.dispose();
//     _descController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("新增筆記"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // 標題輸入框
//             TextField(
//               controller: _titleController,
//               decoration: const InputDecoration(
//                 labelText: "標題",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 16),
//             // 描述輸入框
//             TextField(
//               controller: _descController,
//               decoration: const InputDecoration(
//                 labelText: "內容描述",
//                 border: OutlineInputBorder(),
//               ),
//               maxLines: 3, // 讓描述欄位高一點
//             ),
//             const SizedBox(height: 20),
//             // 儲存按鈕
//             ElevatedButton(
//               onPressed: () {
//                 // 2. 獲取輸入的文字
//                 final String title = _titleController.text;
//                 final String description = _descController.text;
//
//                 if (title.isNotEmpty && description.isNotEmpty) {
//                   // 3. 建立 Note 物件
//                   final newNote = Note(
//                       title: title,
//                       description: description
//                   );
//
//                   // 4. 關鍵步驟：返回上一頁，並將 newNote 帶回去
//                   Navigator.pop(context, newNote);
//                 } else {
//                   // (選用) 提示使用者輸入不可為空
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("請輸入標題和內容")),
//                   );
//                 }
//               },
//               child: const Text("儲存筆記"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
