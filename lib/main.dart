import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:department_page/item_model.dart';

void main() {
  runApp(
    const MaterialApp(

      home: department_page(),
    ),
  );
}

class department_page extends StatelessWidget {
  const department_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF111328),

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF0A0E21),
          title: const Text('PHASE_SHIFT'),
        ),
        body: header(),
      ),
    );
  }
}

class header extends StatefulWidget {
  const header({Key? key}) : super(key: key);

  @override
  State<header> createState() => _headerState();
}

class _headerState extends State<header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(
          height: 10,
          width: 100,// constrain height
          child: ListView(
            shrinkWrap: true,
            // scrollDirection: Axis.horizontal,
            scrollDirection: Axis.vertical,

          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          padding: EdgeInsets.all(10),
          child: Text(
            'Computer Science & Engg',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          child: Text(
            '***** Events Hosted by Our department are *****',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white38,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20.0),
          padding: EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: itemData.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: ExpansionPanelList(
                  animationDuration: Duration(milliseconds: 700),
                  dividerColor: Colors.red,
                  expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
                  elevation: 1,
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            itemData[index].headerItem,
                            style: TextStyle(
                              color: itemData[index].colorsItem,
                              fontSize: 18,
                            ),
                          ),
                        );
                      },
                      body: Container(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemData[index].discription,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 15,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                      ),
                      isExpanded: itemData[index].expanded,
                    )
                  ],
                  expansionCallback: (int item, bool status) {
                    setState(() {
                      itemData[index].expanded = !itemData[index].expanded;
                    });
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'CodeMafia',
      discription:
          "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.",
      colorsItem: Colors.green,
    ),
    ItemModel(
      headerItem: 'Bug-Debug',
      discription:
          "iOS is a mobile operating system created and developed by Apple Inc. exclusively for its hardware.",
      colorsItem: Colors.pink,
    ),
    ItemModel(
      headerItem: 'suduko',
      discription:
          "Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. ",
      colorsItem: Colors.blue,
    ),
    ItemModel(
      headerItem: 'Mini-militia',
      discription:
          "Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system.",
      colorsItem: Colors.orange,
    ),
    ItemModel(
      headerItem: 'Pub-G',
      discription:
      "Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system.",
      colorsItem: Colors.purple,
    ),



  ];
}

// class ExpansionPanelDemo extends StatefulWidget {
//   @override
//   _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
// }
//
// class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: const EdgeInsets.only(top: 200.0),
//         padding: EdgeInsets.all(10),
//         child: ListView.builder(
//           itemCount: itemData.length,
//           itemBuilder: (context, index) {
//             return Container(
//               margin: EdgeInsets.only(bottom: 10.0),
//               child: ExpansionPanelList(
//                 animationDuration: Duration(milliseconds: 700),
//                 dividerColor: Colors.red,
//                 expandedHeaderPadding: EdgeInsets.only(bottom: 0.0),
//                 elevation: 1,
//                 children: [
//                   ExpansionPanel(
//                     headerBuilder: (BuildContext context, bool isExpanded) {
//                       return Container(
//                         padding: EdgeInsets.all(10),
//                         child: Text(
//                           itemData[index].headerItem,
//                           style: TextStyle(
//                             color: itemData[index].colorsItem,
//                             fontSize: 18,
//                           ),
//                         ),
//                       );
//                     },
//                     body: Container(
//                       padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             itemData[index].discription,
//                             style: TextStyle(
//                               color: Colors.grey[700],
//                               fontSize: 15,
//                               height: 1.3,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     isExpanded: itemData[index].expanded,
//                   )
//                 ],
//                 expansionCallback: (int item, bool status) {
//                   setState(() {
//                     itemData[index].expanded = !itemData[index].expanded;
//                   });
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   List<ItemModel> itemData = <ItemModel>[
//     ItemModel(
//       headerItem: 'CodeMafia',
//       discription:
//           "Android is a mobile operating system based on a modified version of the Linux kernel and other open source software, designed primarily for touchscreen mobile devices such as smartphones and tablets.",
//       colorsItem: Colors.green,
//     ),
//     ItemModel(
//       headerItem: 'Bug-Debug',
//       discription:
//           "iOS is a mobile operating system created and developed by Apple Inc. exclusively for its hardware.",
//       colorsItem: Colors.grey,
//     ),
//     ItemModel(
//       headerItem: 'suduko',
//       discription:
//           "Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. ",
//       colorsItem: Colors.blue,
//     ),
//     ItemModel(
//       headerItem: 'Mini-militia',
//       discription:
//           "Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system.",
//       colorsItem: Colors.orange,
//     ),
//   ];
// }
