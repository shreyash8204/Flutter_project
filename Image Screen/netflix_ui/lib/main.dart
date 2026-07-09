import 'package:flutter/material.dart';

void main(){
    runApp(NetflixApp());
}

class NetflixApp extends StatelessWidget{
    NetflixApp({super.key});

    final List<Map> moviesList = [
        
        {
            "category": "Upcoming",
            "poster1" : "https://m.media-amazon.com/images/M/MV5BYTRkODNhYzYtZGRhNi00MTg4LWI5MmYtN2MyZTQ5MjE2YzMyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
            "poster2" : "https://cdn.kinocheck.com/i/8subb0pkbp.jpg",
            "poster3" : "https://in.bmscdn.com/events/moviecard/ET00363553.jpg", 
            "poster4" : "https://m.media-amazon.com/images/M/MV5BMDE1N2EzMjAtMDY1My00YWE5LWEyYjYtYmE3YjZjNzQwNDhmXkEyXkFqcGc@._V1_.jpg",
        },
        {
            "category": "Action",
            "poster1" : "https://upload.wikimedia.org/wikipedia/en/thumb/9/98/John_Wick_TeaserPoster.jpg/250px-John_Wick_TeaserPoster.jpg",
            "poster2" : "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p8919177_p_v13_bj.jpg",
            "poster3" : "https://m.media-amazon.com/images/S/pv-target-images/e9a43e647b2ca70e75a3c0af046c4dfdcd712380889779cbdc2c57d94ab63902.jpg",
            "poster4" : "https://static.wikia.nocookie.net/netflix/images/7/71/Extraction_2.jpg/revision/latest?cb=20230412080639",
        },
        
        {
            "category": "Sci-Fi",
            "poster1" : "https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p10543523_p_v8_as.jpg",
            "poster2" : "https://lumiere-a.akamaihd.net/v1/images/image_a119dd78.jpeg?region=0%2C0%2C800%2C1200",
            "poster3" : "https://play-lh.googleusercontent.com/buKf27Hxendp3tLNpNtP3E-amP0o4yYV-SGKyS2u-Y3GdGRTyfNCIT5WAVs2OudOz6so5K1jtYdAUKI9nw8=w240-h480-rw",
            "poster4" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbONOW3fmSA8SOuyHniNMxLRNN4_Hqd74GGg&s",
        },

        {
            "category": "Thriller",
            "poster1" : "https://m.media-amazon.com/images/M/MV5BZDJjNzdkNmItZDExMy00NzA3LWE3YzEtM2U3ZGRjMThlMDU2XkEyXkFqcGc@._V1_.jpg",
            "poster2" : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYSHE12_kpRs98aM33iqfh5T7Bk-6MElJI-Q&s",
            "poster3" : "https://upload.wikimedia.org/wikipedia/en/thumb/8/8a/Drishyam_2015_film.jpg/250px-Drishyam_2015_film.jpg",
            "poster4" : "https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/eleven-et00419683-1751436384.jpg",
        },

        {
            "category": "Comedy",
            "poster1" : "https://upload.wikimedia.org/wikipedia/en/b/b4/Golmaal-Fun_Unlimited.jpg",
            "poster2" : "https://upload.wikimedia.org/wikipedia/en/6/60/Dhamaal_2007.jpg",
            "poster3" : "https://m.media-amazon.com/images/M/MV5BMTNkZTExMWYtMGZjMy00NGUwLWJmMWEtOThjYmZjY2Q0N2M5XkEyXkFqcGc@._V1_.jpg",
            "poster4" : "https://upload.wikimedia.org/wikipedia/en/2/2b/Dedanadan.jpg",
        },

        {
            "category": "Horror",
            "poster1" : "https://upload.wikimedia.org/wikipedia/en/4/41/Tumbbad_poster.jpg",
            "poster2" : "https://upload.wikimedia.org/wikipedia/en/9/90/Annabelle_film_poster.jpg",
            "poster3" : "https://musicart.xboxlive.com/7/8ac41100-0000-0000-0000-000000000002/504/image.jpg",
            "poster4" : "https://m.media-amazon.com/images/M/MV5BZGNmNWQ2YTgtYjZlNy00NWRjLWJiNzQtOWI0YjBkZjY5OTc2XkEyXkFqcGc@._V1_.jpg",
        },
    ];
    
      @override
      Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Netflix App",
            home: Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                    backgroundColor: Colors.black,
                    title: Image.asset("assets/images/Netflix.png",
                    height: 50,
                    width: 50,
                    ),
                ),

                body: SingleChildScrollView(
                    child: Padding(
                        padding:const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                //Category-1
                                Text(
                                    "${moviesList[0]["category"]}",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                ),

                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        children: [
                                            Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[0]['poster1']),
                                                
                                            ),

                                            Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[0]['poster2']),
                                            ),

                                            Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[0]['poster3']),
                                            ),

                                            Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[0]['poster4']),
                                            ),
                                        ],
                                    ),
                                ),
                               
                                // Category-2
                                Text(
                                    "${moviesList[1]["category"]}",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                ),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        children: [
                                            Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[1]["poster1"]),
                                            ),
                                            Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[1]["poster2"]),
                                            ),
                                             Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[1]["poster3"]),
                                            ),
                                             Container(
                                                width: 180,
                                                height: 250,
                                                margin: EdgeInsets.all(10),
                                                child: Image.network(moviesList[1]["poster4"]),
                                            ),

                                        ],
                                    ),
                                ),
                                //Category-3
                                Text("${moviesList[2]["category"]}",
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    ), 
                                    ),
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            children: [
                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[2]["poster1"]),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[2]["poster2"]),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[2]["poster3"]),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[2]["poster4"]),
                                                ),
                                            ],
                                        ),
                                    ),
                                    
                                    //Category-4
                                    Text("${moviesList[3]['category']}",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                    ),
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            children: [
                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[3]['poster1']),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[3]['poster2']),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[3]['poster3']),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[3]['poster4']),
                                                )
                                            ],
                                        ),
                                    ),

                                    //Category - 4
                                    Text("${moviesList[4]['category']}",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                    ),
                                    ),
                                    SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                            children: [
                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[4]['poster1']),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[4]['poster2']),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[4]['poster3']),
                                                ),

                                                Container(
                                                    width: 180,
                                                    height: 250,
                                                    margin: EdgeInsets.all(10),
                                                    child: Image.network(moviesList[4]['poster4']),
                                                ),
                                            ],
                                        ),
                                    ),
                            ],
                          ),
                        ),
                ),

                ),
            );
      }
}






                                

                                




