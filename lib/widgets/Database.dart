import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_1/models/Catalog.dart';

class DatabaseServices {
  final Query PlantsDetails =
      FirebaseFirestore.instance.collection('Plants').orderBy('id');

  // final CollectionReference NurseryDetails =
  //     FirebaseFirestore.instance.collection("Nursery");

  // ignore: non_constant_identifier_names
  List<Plant> _PlantListFromSnapshot(QuerySnapshot snap) {
    return snap.docs.map((doc) {
      return Plant(
          name: doc.get("name").toString().trim(),
          id: doc.get("id"),
          description: doc.get("description"),
          daysWithoutCare: doc.get("dayswithoutcare"),
          image: "${doc.get("name")}.jpeg");
    }).toList();
  }

  // ignore: non_constant_identifier_names
  Stream<List<Plant>> get Plants {
    return PlantsDetails.snapshots().map(_PlantListFromSnapshot);
  }

  // List<Nursery> _NurseryFromSnapshot(QuerySnapshot snap) {
  //   return snap.docs.map((doc) {
  //     return Nursery(
  //         id: doc.get("NurseryID"),
  //         name: doc.get("Name"),
  //         PlantsIn: doc.get("Plants"));
  //   }).toList();
  // }

  // Stream<List<Nursery>> get Nurserys {
  //   return NurseryDetails.snapshots().map(_NurseryFromSnapshot);
  // }
}
