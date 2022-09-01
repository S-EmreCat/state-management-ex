import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'movie_provider.dart';

class MovieLikedScreen extends StatelessWidget {
  const MovieLikedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final likedMovies = context.watch<MovieProvider>().likedMovies;
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Liked Movies ${context.read<MovieProvider>().likedMovies.length}"),
      ),
      body: ListView.builder(
        itemCount: likedMovies.length,
        itemBuilder: ((_, index) {
          final currentMovie = likedMovies[index];
          return Card(
            key: ValueKey(currentMovie.title),
            elevation: 10,
            child: ListTile(
              title: Text(likedMovies[index].title),
              subtitle: Text(currentMovie.duration ?? "no data"),
              trailing: TextButton(
                child: const Text("Remove"),
                onPressed: () {
                  context.read<MovieProvider>().removeTolist(currentMovie);
                },
              ),
            ),
          );
        }),
      ),
    );
  }
}
