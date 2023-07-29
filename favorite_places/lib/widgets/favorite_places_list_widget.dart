import 'package:favorite_places/providers/favorite_places_provider.dart';
import 'package:favorite_places/widgets/new_place_item_widget.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class FavoritePlacesList extends StatelessWidget {
  const FavoritePlacesList(this.places, {super.key});

  final List<Place> places;

  @override
  Widget build(context) {

    if (places.isEmpty) {
      return Center(
        child: Text(
          'No places added yet',
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
        ),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) {
        return NewPlaceItem(places[index]);
      },
    );
  }
}