import 'package:favorite_places/screens/place_details_screen.dart';
import 'package:flutter/material.dart';

import '../models/place.dart';

class NewPlaceItem extends StatelessWidget {
  const NewPlaceItem(this._newPlace, {super.key});

  final Place _newPlace;

  void _openPlaceDetails(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) {
          return PlaceDetails(_newPlace);
        },
      ),
    );
  }

  @override
  Widget build(context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: FileImage(_newPlace.image),
      ),
      onTap: () {
        _openPlaceDetails(context);
      },
      title: Text(
        _newPlace.title,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      subtitle: Text(
        _newPlace.location.address,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
    );
  }
}