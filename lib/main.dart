import 'package:flutter/material.dart';
///import 'package:gap/gap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.white,title: Center(child: Text('Week1',style: TextStyle(fontSize: 50),),),),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                width: 50,
                height: 50,
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('Image/ame.jpg'),
              ),

              const SizedBox(
                width: 30,
                height: 30,
              ),
              Text(
                  'Cody',
                style: TextStyle(fontSize: 60),
              ),

              Container(
                width: 300,
                height: 1,

                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(50),
                  color: Colors.black,
                ),
              ),

              const SizedBox(
                width: 10,
                height: 10,
              ),

              Text(
                'Hi!',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                width: 50,
                height: 50,
              ),

              Container(
                width: 350,
                height: 80,

                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(50),
                  color: Colors.yellow,
                ),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 30,
                      height: 30,
                    ),
                    Icon(Icons.mail),
                    const SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Text('s111416022@stu.ntue.edu.tw',style: TextStyle(fontSize: 18),),
                  ]

                ),
                
              ),

              const SizedBox(
                width: 30,
                height: 30,
              ),

              Container(
                width: 350,
                height: 80,

                decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(50),
                  color: Colors.yellow,
                ),

                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 30,
                        height: 30,
                      ),
                      Icon(Icons.phone),
                      const SizedBox(
                        width: 15,
                        height: 15,
                      ),
                      Text('0999 - 999 - 999',style: TextStyle(fontSize: 20),),
                    ]

                ),
              ),



              ///const Gap(50),




            ],
          ),
        ),
      ),
    );
  }
}

