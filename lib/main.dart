import 'package:flutter/material.dart';
import 'package:project000/component/note_card.dart';
import 'package:project000/model/note.dart';
import 'package:project000/service/note_service.dart';
import 'package:project000/note_add/note_adds.dart';

void main() {
  runApp(const MyApp());
}

// 1. MyApp 只負責最外層的 MaterialApp 設定
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // 將原本寫在這裡的 Scaffold 移到一個獨立的 Widget (NoteHomePage)
      home: NoteHomePage(),
    );
  }
}

// 2. 建立一個新的頁面 Widget，這裡的 context 就在 MaterialApp 裡面了
class NoteHomePage extends StatefulWidget {
  const NoteHomePage({super.key});

  @override
  State<NoteHomePage> createState() => _NoteHomePageState();
}

class _NoteHomePageState extends State<NoteHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Note App",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // 這裡的 context 是 NoteHomePage 的，它在 MaterialApp 之下
          // 所以現在可以成功找到 Navigator 了！
          final newNote = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NoteAdds()),
          );

          if (newNote != null && newNote is Note) {
            setState(() {
              noteService.note.add(newNote); // 新增筆記
            });
          }
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: noteService.note.length,
        itemBuilder: (context, index) {
          return NoteCard(
            note: noteService.note[index],
            remove: () {
              setState(() {
                noteService.remove(index);
              });
            },
          );
        },
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// ///import 'package:gap/gap.dart';
// import 'package:project000/component/note_card.dart';
// import 'package:project000/model/note.dart';
// import 'package:project000/service/note_service.dart';
//
// void main() {
//   runApp(MaterialApp(home:MyApp()));
// }
//
// class MyApp extends StatefulWidget {
//    MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   //int count = 0;
//   // List<Widget> containers = [
//   //   Container(height: 100, color:Colors.red,),
//   //   Container(height: 100, color:Colors.yellow,),
//   //
//   // ];
//   // List<Note> note = [
//   //   Note(title: "1234", description: "5678"),
//   //   Note(title: "abcd", description: "efgh"),
//   // ];
//   void increment(){
//     // setState(() {
//     //   containers = List.from(containers);
//     //   containers.add(Container(height: 100, color:Colors.red,),);
//     //   containers.add(Container(height: 100, color:Colors.yellow,),);
//     //   //count++;
//     // });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("note app",style: TextStyle(fontSize: 30),),
//         centerTitle: true,
//       ),
//       //body: Text("count $count",style: TextStyle(fontSize: 30),),
//
//       floatingActionButton: FloatingActionButton(
//           // onPressed: increment,
//           onPressed: (){
//             setState(() {
//               NoteService.note.add(Note(title: "title", description: "description"),);
//             });
//           },
//           child: Icon(Icons.add),
//       ),
//       body: ListView.builder(
//         itemCount: NoteService.note.length,
//         itemBuilder: (BuildContext context, int index){
//           return NoteCard(
//             note: NoteService.note[index],
//             remove:(){
//               setState(() {
//                 NoteService.remove(index);
//               });
//             }
//           );
//         },
//         //children: containers,
//       ),
//     );
//   }
// }
//


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(backgroundColor: Colors.white,title: Center(child: Text('Week1',style: TextStyle(fontSize: 50),),),),
//         body: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(
//                 width: 50,
//                 height: 50,
//               ),
//               CircleAvatar(
//                 radius: 100,
//                 backgroundImage: AssetImage('Image/ame.jpg'),
//               ),
//
//               const SizedBox(
//                 width: 30,
//                 height: 30,
//               ),
//               Text(
//                   'Cody',
//                 style: TextStyle(fontSize: 60),
//               ),
//
//               Container(
//                 width: 300,
//                 height: 1,
//
//                 decoration: BoxDecoration(
//                   borderRadius:BorderRadius.circular(50),
//                   color: Colors.black,
//                 ),
//               ),
//
//               const SizedBox(
//                 width: 10,
//                 height: 10,
//               ),
//
//               Text(
//                 'Hi!',
//                 style: TextStyle(fontSize: 30),
//               ),
//               const SizedBox(
//                 width: 50,
//                 height: 50,
//               ),
//
//               Container(
//                 width: 350,
//                 height: 80,
//
//                 decoration: BoxDecoration(
//                   borderRadius:BorderRadius.circular(50),
//                   color: Colors.yellow,
//                 ),
//
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const SizedBox(
//                       width: 30,
//                       height: 30,
//                     ),
//                     Icon(Icons.mail),
//                     const SizedBox(
//                       width: 15,
//                       height: 15,
//                     ),
//                     Text('s111416022@stu.ntue.edu.tw',style: TextStyle(fontSize: 18),),
//                   ]
//
//                 ),
//
//               ),
//
//               const SizedBox(
//                 width: 30,
//                 height: 30,
//               ),
//
//               Container(
//                 width: 350,
//                 height: 80,
//
//                 decoration: BoxDecoration(
//                   borderRadius:BorderRadius.circular(50),
//                   color: Colors.yellow,
//                 ),
//
//                 child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       const SizedBox(
//                         width: 30,
//                         height: 30,
//                       ),
//                       Icon(Icons.phone),
//                       const SizedBox(
//                         width: 15,
//                         height: 15,
//                       ),
//                       Text('0999 - 999 - 999',style: TextStyle(fontSize: 20),),
//                     ]
//
//                 ),
//               ),
//
//
//
//               ///const Gap(50),
//
//
//
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

