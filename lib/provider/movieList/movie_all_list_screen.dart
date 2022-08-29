import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/provider/movieList/movie_liked_list_screen.dart';
import 'package:statemanagement/provider/movieList/movie_provider.dart';

class MovieAllListScreen extends StatelessWidget {
  const MovieAllListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var allMovies = context.watch<MovieProvider>().movies;
    var likedMovies = context.watch<MovieProvider>().likedMovies;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: const EdgeInsets.symmetric(vertical: 15)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MovieLikedScreen(),
                  ),
                );
              },
              icon: const Icon(
                Icons.favorite,
              ),
              label: Text(
                  'Go to Liked Page ${context.read<MovieProvider>().likedMovies.length}'),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: allMovies.length,
                itemBuilder: (_, index) {
                  final currentMovie = allMovies[index];
                  return Card(
                    color: Colors.lightBlue,
                    key: ValueKey(currentMovie.title),
                    child: ListTile(
                      title: Text(currentMovie.title),
                      subtitle: Text(currentMovie.duration ?? 'No data'),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.favorite,
                          color: likedMovies.contains(currentMovie)
                              ? Colors.red
                              : Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          if (!likedMovies.contains(currentMovie)) {
                            context
                                .read<MovieProvider>()
                                .addTolist(currentMovie);
                          } else {
                            context
                                .read<MovieProvider>()
                                .removeTolist(currentMovie);
                          }
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
