import 'package:flutter/material.dart';

main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice Projects',
      home: ModuleSeven(),
    );
  }
}

class ModuleSeven extends StatefulWidget {
  @override
  State<ModuleSeven> createState() => _ModuleSevenState();
}

class _ModuleSevenState extends State<ModuleSeven> {
  // const ModuleSeven({super.key});
  List<String> FriendList = [
    'rafik',
    'karim',
    'baccu',
    'safat',
    'habib',
    'rayhan',
    'alam'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      // body: ListView.separated(
      //   itemBuilder: (context, index) => ListTile(
      //     title: Text(FriendList[index]),
      //     subtitle: Text('school friend'),
      //     leading: Text((index + 1).toString()),
      //     trailing: const Icon(Icons.add),
      //     onTap: () => const AlertDialog(
      //       title: Text('Alert'),
      //     ),
      //     titleTextStyle: TextStyle(color: Colors.amber, fontSize: 20)
      //   ),
      //   separatorBuilder: (context, index) => Divider(
      //     color: Colors.grey.shade50,
      //   ),
      //   itemCount: FriendList.length,
      // ));
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              // color: Colors.blue.shade400,
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(8),
              child: Text('Container'),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  border: Border.all(color: Colors.grey, width: 5),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('assets/Images/image.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        offset: Offset(1, 2),
                        spreadRadius: 5,
                        blurRadius: 7)
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue.shade400,
                padding: EdgeInsets.all(10),
                child: Text('Container'),
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text('Click Me'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (contex) {
                        return AlertDialog(
                          title: Text('Dialog'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('Sample Text'),
                              Text('Sample Text'),
                              Text('Sample Text'),
                            ],
                          ),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('Cencel')),
                            TextButton(onPressed: () {}, child: Text('Okay')),
                          ],
                        );
                      });
                },
                child: Text('Dialog')),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (ctx) {
                      return SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20)),
                            Text('Bottom Sheet'),
                            Divider(),
                            Text('Sheet Data'),
                            Text('Sheet Data'),
                            Text('Sheet Data'),
                            Text('Sheet Data'),
                          ],
                        ),
                      );
                    });

              },
              child: Text('Show Bottom Sheet'),
            ),
          ],
        ),
      ),
    );
  }
}
