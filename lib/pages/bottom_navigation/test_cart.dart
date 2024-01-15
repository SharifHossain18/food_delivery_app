import 'package:flutter/material.dart';



class MySavingApp extends StatefulWidget {
  const MySavingApp({super.key});

  @override
  State<MySavingApp> createState() => _MySavingAppState();
}

class _MySavingAppState extends State<MySavingApp> {
  List names=['sujon'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                print(names);
                setState(() {
                  names.add("value");
                });
              },
              child: Text("Press")),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
                itemBuilder: (BuildContext context, int index){
                  return Text(names[index]);
                }),
          )
        ],
      ),
    );
  }
}

//
// class MySavingApp extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }
//
// class _State extends State<MySavingApp> {
//   // final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
//   List names=['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
//   final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];
//
//   TextEditingController nameController = TextEditingController();
//
//   void addItemToList(){
//     setState(() {
//       names.add('sujon');
//       // names.insert(0,nameController.text);
//       msgCount.insert(0, 0);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Tutorial - googleflutter.com'),
//         ),
//         body: Column(
//             children: <Widget>[
//               Padding(
//                 padding: EdgeInsets.all(20),
//                 child: TextField(
//                   controller: nameController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Contact Name',
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 child: Text('Add'),
//                 onPressed: () {
//                   print(names);
//                   // print(object)
//                   addItemToList();
//                 },
//               ),
//               Expanded(
//                   child: ListView.builder(
//                       padding: const EdgeInsets.all(8),
//                       itemCount: names.length,
//                       itemBuilder: (BuildContext context, int index) {
//                         return Container(
//                           height: 50,
//                           margin: EdgeInsets.all(2),
//                           color: msgCount[index]>=10? Colors.blue[400]:
//                           msgCount[index]>3? Colors.blue[100]: Colors.grey,
//                           child: Center(
//                               child: Text('${names[index]} (${msgCount[index]})',
//                                 style: TextStyle(fontSize: 18),
//                               )
//                           ),
//                         );
//                       }
//                   )
//               )
//             ]
//         )
//     );
//   }
// }