import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class Destination extends Equatable {
  const Destination({required this.label, required this.imageUrl});
  final String label;
  final String imageUrl;

  @override
  List<Object?> get props => [label, imageUrl];
}
