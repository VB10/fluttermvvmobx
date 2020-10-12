// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostViewModel on _PostViewModelBase, Store {
  final _$postsAtom = Atom(name: '_PostViewModelBase.posts');

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$pageStateAtom = Atom(name: '_PostViewModelBase.pageState');

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  final _$isServiseReuquestLoadingAtom =
      Atom(name: '_PostViewModelBase.isServiseReuquestLoading');

  @override
  bool get isServiseReuquestLoading {
    _$isServiseReuquestLoadingAtom.reportRead();
    return super.isServiseReuquestLoading;
  }

  @override
  set isServiseReuquestLoading(bool value) {
    _$isServiseReuquestLoadingAtom
        .reportWrite(value, super.isServiseReuquestLoading, () {
      super.isServiseReuquestLoading = value;
    });
  }

  final _$getAllPostAsyncAction = AsyncAction('_PostViewModelBase.getAllPost');

  @override
  Future<void> getAllPost() {
    return _$getAllPostAsyncAction.run(() => super.getAllPost());
  }

  final _$getAllPost2AsyncAction =
      AsyncAction('_PostViewModelBase.getAllPost2');

  @override
  Future<void> getAllPost2() {
    return _$getAllPost2AsyncAction.run(() => super.getAllPost2());
  }

  final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase');

  @override
  void changeRequest() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
pageState: ${pageState},
isServiseReuquestLoading: ${isServiseReuquestLoading}
    ''';
  }
}
