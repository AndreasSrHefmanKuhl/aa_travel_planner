import 'package:aa_travel_planner/Features/Caroussell/Widgets/carousel_item.dart';
import 'package:aa_travel_planner/Features/Destination/Models/destination.dart';
import 'package:aa_travel_planner/Features/Favorites/Repository/favorites_repository.dart';
import 'package:aa_travel_planner/Features/Trip/Models/trip.dart';

import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final FavoritesRepository favoritesRepository;
  final List<Trip> trips;
  final Trip? secretTip;
  final Destination? favoriteDestination;

  const Carousel({
    super.key,
    required this.favoritesRepository,
    required this.trips,
    this.secretTip,
    this.favoriteDestination,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView(
        controller: PageController(viewportFraction: 0.8),
        children: [
          if (secretTip != null)
            CarouselItem(trip: secretTip!, label: 'Secret Tip!'),
          if (favoriteDestination != null)
            CarouselItem(
                favoritesRepository: favoritesRepository,
                destination: favoriteDestination!,
                label: 'From Your Favorites'),
          ...trips.map((trip) => CarouselItem(trip: trip)),
        ],
      ),
    );
  }
}
