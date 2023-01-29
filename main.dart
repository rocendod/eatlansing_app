import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/Logo_!.png'),
                width: 150,
                height: 150,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                    "Now Food drives are in one place and are accessible",
                    style: Theme.of(context).textTheme.headline6),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("Logo_png"),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Welcome to the Home Page!",
                  style: Theme.of(context).textTheme.headline5),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
                },
                child: Text("Go to Second Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://via.placeholder.com/150"),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Welcome to the Second Page!",
                  style: Theme.of(context).textTheme.headline5),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Text("User"),
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Organization"),
                  ),
                  SizedBox(width: 10),
                  RaisedButton(
                    onPressed: () {},
                    child: Text("Login"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
