import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider/movieList/movie_all_list_screen.dart';
import 'provider/movieList/movie_provider.dart';

void main() => runApp(ChangeNotifierProvider<MovieProvider>(
    create: (context) => MovieProvider(), child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: MovieAllListScreen(),
    );
  }
}
