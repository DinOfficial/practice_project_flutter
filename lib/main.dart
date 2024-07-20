import 'package:flutter/material.dart';

main() {
  runApp(const Homepage());
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Practice Projects',
      home: AppBarWidget(),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  mySnackBar(context, msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
        // titleSpacing: 5,
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
        backgroundColor: Colors.blue,
        centerTitle: false,
        toolbarHeight: 80,
        toolbarOpacity: 0.9,
        elevation: 10,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar(context, 'Notification Read');
              },
              icon: const Icon(Icons.notifications_active,
                  color: Colors.white, size: 30)),
          IconButton(
              onPressed: () {
                mySnackBar(context, 'Search Complete');
              },
              icon: const Icon(Icons.search, color: Colors.white, size: 30)),
          IconButton(
              onPressed: () {
                mySnackBar(context, 'User Not Found');
              },
              icon: const Icon(Icons.person, color: Colors.white, size: 30)),
          IconButton(
              onPressed: () {
                mySnackBar(context, 'Setting is under constructions');
              },
              icon: const Icon(Icons.settings, color: Colors.white, size: 30))
        ],
      ),

      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        elevation: 5,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () {},
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),

      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Center(child: DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountEmail: Text("shdinofficial19@gmail.com", style: TextStyle(color: Colors.white)),
                  accountName: Text("Din Islam"),
                  currentAccountPicture: Image.asset('assets/Images/image.jpg'),
                  currentAccountPictureSize: Size.infinite,
                ))
            ),
            // Divider()
            ListTile(title: Text('Home'),  leading: Icon(Icons.home), onTap: (){},),
            ListTile(title: Text('Contact'), leading: Icon(Icons.contact_emergency), onTap: (){},),
            ListTile(title: Text('Profile'), leading: Icon(Icons.person), onTap: (){},),
            ListTile(title: Text('Email'), leading: Icon(Icons.email), onTap: (){},),
            ListTile(title: Text('Phone'), leading: Icon(Icons.phone), onTap: (){},)
          ],
        ),
      ),

      body: FloatingActionButtonWidget() ,
    );
  }
} //Details about AppBar , Floating Action Button, Bottom Navigator, Drawer

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  // MyAlerDialog(context){
  //   return showDialog(
  //       context: context,
  //       barrierDismissible: false,
  //       builder: (BuildContext context){
  //         return AlertDialog(
  //           title: Text('My Dialog'),
  //           actions: [
  //             TextButton(
  //                 onPressed: (){
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text('Cencel')),
  //             TextButton(
  //                 onPressed: (){},
  //                 child: Text('Okay')),
  //
  //           ],
  //         );
  //       }
  //   );
  // } //Simple Alert Dialog

  @override
  Widget build(BuildContext context) {

    /* ********
    AlertDialog
    **********/

    // return Center(
    //   child: ElevatedButton(
    //     child: Text('Click Me'),
    //     onPressed: (){
    //       MyAlerDialog(context);
    //     },
    //   ),
    // ) ;

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
      backgroundColor: Colors.blue,
      textStyle: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w800, fontSize: 16),
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'First Name',
              border: OutlineInputBorder(),
              hintText: 'Write your First Name',
            ),
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Last Name',
              border: OutlineInputBorder(),
              hintText: 'Write your Last Name',
            ),
          ),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'Email Address',
              border: OutlineInputBorder(),
              hintText: 'Write your Email',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: (){},
            child: Text('Submit'),
            style: buttonStyle,
          ),
        )
      ],
    );
  }

}
