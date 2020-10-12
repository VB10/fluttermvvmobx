import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fluttermvvmobx/features/post/model/post.dart';
import 'package:fluttermvvmobx/features/post/view-model/IPostViewModel.dart';
import 'package:mobx/mobx.dart';
part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store implements IPostViewModel {
  @observable
  List<Post> posts = [];

  @observable
  PageState pageState = PageState.NORMAL;

  final url = "https://jsonplaceholder.typicode.com/posts";

  @observable
  bool isServiseReuquestLoading = false;

  @action
  Future<void> getAllPost() async {
    changeRequest();
    final response = await Dio().get(url);

    if (response.statusCode == HttpStatus.ok) {
      final responseData = response.data as List;
      posts = responseData.map((e) => Post.fromMap(e)).toList();
    }

    changeRequest();
  }

  @action
  Future<void> getAllPost2() async {
    pageState = PageState.LOADING;

    try {
      final response = await Dio().get(url);

      if (response.statusCode == HttpStatus.ok) {
        final responseData = response.data as List;
        posts = responseData.map((e) => Post.fromMap(e)).toList();
        pageState = PageState.SUCCESS;
      }
    } catch (e) {
      pageState = PageState.ERROR;
    }
  }

  @action
  void changeRequest() {
    isServiseReuquestLoading = !isServiseReuquestLoading;
  }

  void name(args) {}
}

enum PageState { LOADING, ERROR, SUCCESS, NORMAL }
