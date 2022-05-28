import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie/provider/movies_provider.dart';
import 'package:movie/screens/home_page.dart';
import 'package:movie/screens/home_page_helper.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ConstantColors colors = ConstantColors();
    return MultiProvider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        theme: ThemeData(
          accentColor: Colors.blue,
          fontFamily: 'Poppins',
          canvasColor: Colors.transparent,
        ),
      ),
      providers: [
        ChangeNotifierProvider<FetchData>(create: (_) => FetchData()),
        ChangeNotifierProvider<HomePageHelper>(create: (_) => HomePageHelper()),
      ],
    );
  }
}
