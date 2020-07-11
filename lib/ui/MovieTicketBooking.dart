import 'package:biz_card/model/Quize.dart';
import 'package:flutter/material.dart';

class MaterialMovieTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AvailableMovies(),
    );
  }
}

class AvailableMovies extends StatelessWidget {
  List<Movie> availableMovies = [
    Movie(
        "Avatar",
        "2009",
        "PG-13",
        "18 Dec 2009",
        "162 min",
        "Action, Adventure, Fantasy",
        "James Cameron",
        "James Cameron",
        "Sam Worthington, Zoe Saldana, Sigourney Weaver, Stephen Lang",
        "A paraplegic marine dispatched to the moon Pandora on a unique mission becomes torn between following his orders and protecting the world he feels is his home.",
        "English, Spanish",
        "USA, UK",
        "Won 3 Oscars. Another 80 wins & 121 nominations.",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
        "83",
        "7.9",
        "890,617",
        "tt0499549",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMjEyOTYyMzUxNl5BMl5BanBnXkFtZTcwNTg0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg"
    ]),
    Movie(
        "I Am Legend",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BNzM2MDk3MTcyMV5BMl5BanBnXkFtZTcwNjg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ]),
    Movie(
        "Power",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTY2ODQ3NjMyMl5BMl5BanBnXkFtZTcwODg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ]),
    Movie(
        "Gotham",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTMxOTEwNDcxN15BMl5BanBnXkFtZTcwOTg0MTUzNA@@._V1_SX1777_CR0,0,1777,999_AL_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ]),
    Movie(
        "Vikings",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTYxMDg1Nzk1MV5BMl5BanBnXkFtZTcwMDk0MTUzNA@@._V1_SX1500_CR0,0,1500,999_AL_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ]),
    Movie(
        "Game of Thrones",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ]),
    Movie(
        "Interstellar",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ]),
    Movie(
        "The Wolf of Wall Street",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English, French",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ]),
    Movie(
        "The Avengers",
        "2007",
        "PG-13",
        "14 Dec 2007",
        "101 min",
        "14 Dec 2007",
        "101 min",
        "Drama, Horror, Sci-Fi",
        "Francis Lawrence",
        "Mark Protosevich (screenplay), Akiva Goldsman (screenplay), Richard Matheson (novel), John William Corrington, Joyce Hooper Corrington",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "Will Smith, Alice Braga, Charlie Tahan, Salli Richardson-Whitfield",
        "English, Russian",
        "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg",
        "USA",
        "9 wins & 21 nominations.",
        "65",
        "7.2",
        "movie",
        "True", [
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTI0NTI4NjE3NV5BMl5BanBnXkFtZTYwMDA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTIwMDg2MDU4M15BMl5BanBnXkFtZTYwMTA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc5MDM1OTU5OV5BMl5BanBnXkFtZTYwMjA0Nzc4._V1_.jpg",
      "https://images-na.ssl-images-amazon.com/images/M/MV5BMTA0MTI2NjMzMzFeQTJeQWpwZ15BbWU2MDMwNDc3OA@@._V1_.jpg"
    ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text(
          "Available Movies",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              elevation: 10,
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  "${availableMovies[index].Title}",
                  style: TextStyle(
                      color: Colors.grey.shade700, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("${availableMovies[index].Language}"),
                leading: CircleAvatar(
                  backgroundImage:
                      NetworkImage("${availableMovies[index].Poster}"),
                ),
                trailing: Text("...."),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieDetails(
                              selectedMovie: availableMovies[index])));
                },
              ),
            );
          }),
    );
  }
}

class MovieDetails extends StatelessWidget {
  final Movie selectedMovie;

  const MovieDetails({Key key, this.selectedMovie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
        title: Text(
          "${selectedMovie.Title}",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          Image.network("${selectedMovie.Poster}"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "${selectedMovie.Language}",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple[300]),
            ),
          )
        ],
      ),
    );
  }
}
