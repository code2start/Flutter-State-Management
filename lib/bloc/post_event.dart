part of 'post_bloc.dart';

@immutable
abstract class PostEvent {}

class FetchPosts extends PostEvent {}
