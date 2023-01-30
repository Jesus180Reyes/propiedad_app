import 'package:flutter/material.dart';
import 'package:propiedad_app/home/home_page.dart';
import 'package:propiedad_app/services/map_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MapProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Propiedad App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true),
        initialRoute: "home",
        routes: {
          "home": (_) => const HomePage(),
        },
      ),
    );
  }
}
