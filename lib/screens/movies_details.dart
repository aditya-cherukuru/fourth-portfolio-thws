import 'package:flutter/material.dart';
import '../models/movies.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 20, 19, 19),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(movie.title),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie image
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 229, 9, 20)

              ),
              child: movie.imageUrl.isNotEmpty
                  ? Image.network(
                      movie.imageUrl,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        
                        return const Center(
                          child: Icon(Icons.movie, size: 100, color: Color.fromARGB(255, 15, 1, 1)),
                        );
                      },
                    )
                  : const Center(
                      child: Icon(Icons.movie, size: 100, color: Color.fromARGB(255, 208, 21, 21)),
                    ),
            ),

           
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Movie title
                  Text(
                    movie.title,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 215, 211, 211),
                    ),
                  ),
                  const SizedBox(height: 16),

                
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          const Icon(Icons.person, color: Color.fromARGB(255, 231, 224, 224), size: 28),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Director',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 219, 27, 46),
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  movie.director,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(221, 216, 204, 204),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                 
                  const Text(
                    'About this movie',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 244, 238, 238),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'This is a movie directed by ${movie.director}. '
                    'Add more details about the movie here if available in your API.',
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color.fromARGB(255, 231, 228, 228),
                      height: 1.5,
                    ),
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
