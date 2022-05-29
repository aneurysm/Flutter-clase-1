import 'package:clases_ventas/providers/usuario_provider.dart';
import 'package:clases_ventas/screens/home_screen.dart';
import 'package:clases_ventas/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Usuario_provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        routes: {
          'login': (_) => LoginScreen(),
          'home': (_) => HomeScreen(),
        },
        initialRoute: 'login',
      ),
    );
  }
}
