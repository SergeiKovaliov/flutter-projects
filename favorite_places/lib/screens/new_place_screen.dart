import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:favorite_places/providers/favorite_places_provider.dart';
import 'package:favorite_places/widgets/image_input_widget.dart';
import 'package:favorite_places/widgets/location_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPlaceScreen extends ConsumerStatefulWidget {
  const NewPlaceScreen({super.key});

  @override
  ConsumerState createState() {
    return NewPlaceScreenState();
  }
}

class NewPlaceScreenState extends ConsumerState<NewPlaceScreen> {
  final formKey = GlobalKey<FormState>();
  var _selectedTitle = '';
  File? _selectedImage;
  PlaceLocation? _selectedLocation;

  void _saveNewPlace() {
    if (formKey.currentState!.validate() && _selectedImage != null) {
      formKey.currentState!.save();
      ref.read(favoritePlacesProvider.notifier).addFavoritePlace(
          Place(
            title: _selectedTitle,
            image: _selectedImage!,
            location: _selectedLocation!,
          ),
      );
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Place'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                onSaved: (value) {
                  _selectedTitle = value!;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is incorrect! Try again.';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  label: Text('Title'),
                ),
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                ),
              ),
              const SizedBox(height: 10),
              ImageInput(onPickImage: (image) {
                _selectedImage = image;
              }),
              const SizedBox(height: 16),
              Expanded(child: InputLocation(
                onSelectLocation: (location) {
                  _selectedLocation = location;
                },
              ),),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                icon: const Icon(Icons.add),
                onPressed: _saveNewPlace,
                label: const Text('Add Place'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}