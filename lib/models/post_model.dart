import 'package:meta/meta.dart';
import 'package:AdoPet/models/models.dart';

class Post {
  final User user;
  final String pet;
  final String thumb;
  final String description;
  final String breed;
  final String timeAgo;
  final int likes;
  final String adopted;
  final int shares;
  final DateTime createdAt;

  const Post({
    @required this.user,
    @required this.pet,
    @required this.thumb,
    @required this.description,
    @required this.breed, //Raça
    @required this.timeAgo,
    @required this.likes,
    @required this.adopted,
    @required this.shares,
    @required this.createdAt,
  });
}
