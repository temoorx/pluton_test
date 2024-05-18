// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hive_storage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HiveStorageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HiveStorageStateCopyWith<$Res> {
  factory $HiveStorageStateCopyWith(
          HiveStorageState value, $Res Function(HiveStorageState) then) =
      _$HiveStorageStateCopyWithImpl<$Res, HiveStorageState>;
}

/// @nodoc
class _$HiveStorageStateCopyWithImpl<$Res, $Val extends HiveStorageState>
    implements $HiveStorageStateCopyWith<$Res> {
  _$HiveStorageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$HiveStorageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HiveStorageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HiveStorageState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$HiveStorageStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'HiveStorageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements HiveStorageState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RecipeDetails> recipes});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$HiveStorageStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
  }) {
    return _then(_$SuccessStateImpl(
      null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<RecipeDetails>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements _SuccessState {
  const _$SuccessStateImpl(final List<RecipeDetails> recipes)
      : _recipes = recipes;

  final List<RecipeDetails> _recipes;
  @override
  List<RecipeDetails> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  String toString() {
    return 'HiveStorageState.success(recipes: $recipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_recipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) {
    return success(recipes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) {
    return success?.call(recipes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(recipes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements HiveStorageState {
  const factory _SuccessState(final List<RecipeDetails> recipes) =
      _$SuccessStateImpl;

  List<RecipeDetails> get recipes;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessStateImplCopyWith<$Res> {
  factory _$$DeleteSuccessStateImplCopyWith(_$DeleteSuccessStateImpl value,
          $Res Function(_$DeleteSuccessStateImpl) then) =
      __$$DeleteSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteSuccessStateImplCopyWithImpl<$Res>
    extends _$HiveStorageStateCopyWithImpl<$Res, _$DeleteSuccessStateImpl>
    implements _$$DeleteSuccessStateImplCopyWith<$Res> {
  __$$DeleteSuccessStateImplCopyWithImpl(_$DeleteSuccessStateImpl _value,
      $Res Function(_$DeleteSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteSuccessStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSuccessStateImpl implements _DeleteSuccessState {
  const _$DeleteSuccessStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HiveStorageState.deleteSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSuccessStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSuccessStateImplCopyWith<_$DeleteSuccessStateImpl> get copyWith =>
      __$$DeleteSuccessStateImplCopyWithImpl<_$DeleteSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) {
    return deleteSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) {
    return deleteSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccessState implements HiveStorageState {
  const factory _DeleteSuccessState(final String message) =
      _$DeleteSuccessStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DeleteSuccessStateImplCopyWith<_$DeleteSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$HiveStorageStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements _ErrorState {
  const _$ErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HiveStorageState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements HiveStorageState {
  const factory _ErrorState(final String message) = _$ErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddErrorStateImplCopyWith<$Res> {
  factory _$$AddErrorStateImplCopyWith(
          _$AddErrorStateImpl value, $Res Function(_$AddErrorStateImpl) then) =
      __$$AddErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AddErrorStateImplCopyWithImpl<$Res>
    extends _$HiveStorageStateCopyWithImpl<$Res, _$AddErrorStateImpl>
    implements _$$AddErrorStateImplCopyWith<$Res> {
  __$$AddErrorStateImplCopyWithImpl(
      _$AddErrorStateImpl _value, $Res Function(_$AddErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AddErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddErrorStateImpl implements _AddErrorState {
  const _$AddErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HiveStorageState.addError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddErrorStateImplCopyWith<_$AddErrorStateImpl> get copyWith =>
      __$$AddErrorStateImplCopyWithImpl<_$AddErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) {
    return addError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) {
    return addError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) {
    return addError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) {
    return addError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) {
    if (addError != null) {
      return addError(this);
    }
    return orElse();
  }
}

abstract class _AddErrorState implements HiveStorageState {
  const factory _AddErrorState(final String message) = _$AddErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$AddErrorStateImplCopyWith<_$AddErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteErrorStateImplCopyWith<$Res> {
  factory _$$DeleteErrorStateImplCopyWith(_$DeleteErrorStateImpl value,
          $Res Function(_$DeleteErrorStateImpl) then) =
      __$$DeleteErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteErrorStateImplCopyWithImpl<$Res>
    extends _$HiveStorageStateCopyWithImpl<$Res, _$DeleteErrorStateImpl>
    implements _$$DeleteErrorStateImplCopyWith<$Res> {
  __$$DeleteErrorStateImplCopyWithImpl(_$DeleteErrorStateImpl _value,
      $Res Function(_$DeleteErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteErrorStateImpl implements _DeleteErrorState {
  const _$DeleteErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'HiveStorageState.deleteError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteErrorStateImplCopyWith<_$DeleteErrorStateImpl> get copyWith =>
      __$$DeleteErrorStateImplCopyWithImpl<_$DeleteErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<RecipeDetails> recipes) success,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(String message) error,
    required TResult Function(String message) addError,
    required TResult Function(String message) deleteError,
  }) {
    return deleteError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<RecipeDetails> recipes)? success,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(String message)? error,
    TResult? Function(String message)? addError,
    TResult? Function(String message)? deleteError,
  }) {
    return deleteError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<RecipeDetails> recipes)? success,
    TResult Function(String message)? deleteSuccess,
    TResult Function(String message)? error,
    TResult Function(String message)? addError,
    TResult Function(String message)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_DeleteSuccessState value) deleteSuccess,
    required TResult Function(_ErrorState value) error,
    required TResult Function(_AddErrorState value) addError,
    required TResult Function(_DeleteErrorState value) deleteError,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_SuccessState value)? success,
    TResult? Function(_DeleteSuccessState value)? deleteSuccess,
    TResult? Function(_ErrorState value)? error,
    TResult? Function(_AddErrorState value)? addError,
    TResult? Function(_DeleteErrorState value)? deleteError,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_DeleteSuccessState value)? deleteSuccess,
    TResult Function(_ErrorState value)? error,
    TResult Function(_AddErrorState value)? addError,
    TResult Function(_DeleteErrorState value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class _DeleteErrorState implements HiveStorageState {
  const factory _DeleteErrorState(final String message) =
      _$DeleteErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$DeleteErrorStateImplCopyWith<_$DeleteErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
