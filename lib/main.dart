import 'package:flutter/material.dart';

import 'package:tourist/router/router.gr.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Flutter ListView ',
      debugShowCheckedModeBanner: false,
    );
  }
}



 // Row(
                  //   children: [
                  //     ElevatedButton(
                  //       onPressed: () {
                  //         showDialog(
                  //             context: context,
                  //             builder: (context) {
                  //               return AlertDialog(
                  //                 actions: [
                  //                   TextButton(
                  //                       onPressed: () {
                  //                         ServiceApi().putData(data[i].id,
                  //                             disNameController.text);
                  //                         Navigator.pop(context);
                  //                       },
                  //                       child: const Text("Upd"))
                  //                 ],
                  //                 title: const Text("Update"),
                  //                 content: Column(
                  //                   mainAxisSize: MainAxisSize.min,
                  //                   children: [
                  //                     TextField(
                  //                       controller: disNameController,
                  //                     ),
                  //                   ],
                  //                 ),
                  //               );
                  //             });
                  //       },
                  //       child: const Text("Upd"),
                  //     ),
                  //     ElevatedButton(
                  //       onPressed: () async {
                  //         await ServiceApi().deleteData(data[i].id);
                  //       },
                  //       child: const Text("Del"),
                  //     ),
                  //   ],
                  // ),
                  // FloatingActionButton(
                  //     onPressed: () {
                  //       showDialog(
                  //           context: context,
                  //           builder: (context) {
                  //             return AlertDialog(
                  //               title: const Text('Add new district'),
                  //               content: Container(
                  //                 height: 100,
                  //                 child: Column(
                  //                   children: [
                  //                     TextField(
                  //                       decoration: const InputDecoration(
                  //                           labelText:
                  //                               'Enter district name'),
                  //                       controller: control_1,
                  //                     ),
                  //                     SizedBox(
                  //                       height: 10,
                  //                     ),
                  //                     ElevatedButton(
                  //                         onPressed: () async {
                  //                           await ServiceApi()
                  //                               .postData(control_1.text);
                  //                           setState(() {
                  //                             data = data.toList();
                  //                           });
                  //                           Navigator.of(context).pop();
                  //                         },
                  //                         child: const Text('Add'))
                  //                   ],
                  //                 ),
                  //               ),
                  //             );
                  //           });
                  //     },
                  //     child: const Icon(Icons.add))