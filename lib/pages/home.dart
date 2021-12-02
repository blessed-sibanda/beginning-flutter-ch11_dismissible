import 'package:ch11_dismissible/models/trip.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List _trips = <Trip>[];

  @override
  void initState() {
    super.initState();
    _trips
      ..add(Trip(id: 0, name: 'Rome', location: 'Italy'))
      ..add(Trip(id: 1, name: 'Paris', location: 'France'))
      ..add(Trip(id: 2, name: 'New York', location: 'France'))
      ..add(Trip(id: 3, name: 'Cancun', location: 'Mexico'))
      ..add(Trip(id: 4, name: 'London', location: 'England'))
      ..add(Trip(id: 5, name: 'Sydney', location: 'Australia'))
      ..add(Trip(id: 6, name: 'Miami', location: 'USA - Florida'))
      ..add(Trip(id: 7, name: 'Rio de Janeiro', location: 'Brazil'))
      ..add(Trip(id: 8, name: 'Cusco', location: 'Peru'))
      ..add(Trip(id: 9, name: 'New Dehli', location: 'India'))
      ..add(Trip(id: 10, name: 'Tokyo', location: 'Japan'));
  }

  void _markTripCompleted() {
    // Mark trip completed in Database or web service
  }

  void _deleteTrip() {
    // Delete trip form Database or web service
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dismissible'),
      ),
      body: ListView.builder(
        itemCount: _trips.length,
        itemBuilder: (BuildContext, int index) {
          return Dismissible(
            key: Key(_trips[index].id),
            child: _buildListTile(index),
            background: _buildCompleteTrip(),
            secondaryBackground: _buildRemoveTrip(),
          );
        },
      ),
    );
  }

  Widget _buildListTile(index) {
    return Container();
  }

  Widget _buildCompleteTrip() {
    return Container();
  }

  Widget _buildRemoveTrip() {
    return Container();
  }
}
