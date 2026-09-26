// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MemberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GymMember member) addNewMember,
    required TResult Function() getAllMembers,
    required TResult Function(String memberId) getOneDetailsMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GymMember member)? addNewMember,
    TResult? Function()? getAllMembers,
    TResult? Function(String memberId)? getOneDetailsMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GymMember member)? addNewMember,
    TResult Function()? getAllMembers,
    TResult Function(String memberId)? getOneDetailsMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddNewMemberEvent value) addNewMember,
    required TResult Function(GetAllMembersEvent value) getAllMembers,
    required TResult Function(GetOneDetailsMemberEvent value)
        getOneDetailsMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewMemberEvent value)? addNewMember,
    TResult? Function(GetAllMembersEvent value)? getAllMembers,
    TResult? Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewMemberEvent value)? addNewMember,
    TResult Function(GetAllMembersEvent value)? getAllMembers,
    TResult Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberEventCopyWith<$Res> {
  factory $MemberEventCopyWith(
          MemberEvent value, $Res Function(MemberEvent) then) =
      _$MemberEventCopyWithImpl<$Res, MemberEvent>;
}

/// @nodoc
class _$MemberEventCopyWithImpl<$Res, $Val extends MemberEvent>
    implements $MemberEventCopyWith<$Res> {
  _$MemberEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MemberEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GymMember member) addNewMember,
    required TResult Function() getAllMembers,
    required TResult Function(String memberId) getOneDetailsMember,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GymMember member)? addNewMember,
    TResult? Function()? getAllMembers,
    TResult? Function(String memberId)? getOneDetailsMember,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GymMember member)? addNewMember,
    TResult Function()? getAllMembers,
    TResult Function(String memberId)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddNewMemberEvent value) addNewMember,
    required TResult Function(GetAllMembersEvent value) getAllMembers,
    required TResult Function(GetOneDetailsMemberEvent value)
        getOneDetailsMember,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewMemberEvent value)? addNewMember,
    TResult? Function(GetAllMembersEvent value)? getAllMembers,
    TResult? Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewMemberEvent value)? addNewMember,
    TResult Function(GetAllMembersEvent value)? getAllMembers,
    TResult Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MemberEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddNewMemberEventImplCopyWith<$Res> {
  factory _$$AddNewMemberEventImplCopyWith(_$AddNewMemberEventImpl value,
          $Res Function(_$AddNewMemberEventImpl) then) =
      __$$AddNewMemberEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GymMember member});
}

/// @nodoc
class __$$AddNewMemberEventImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$AddNewMemberEventImpl>
    implements _$$AddNewMemberEventImplCopyWith<$Res> {
  __$$AddNewMemberEventImplCopyWithImpl(_$AddNewMemberEventImpl _value,
      $Res Function(_$AddNewMemberEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? member = null,
  }) {
    return _then(_$AddNewMemberEventImpl(
      member: null == member
          ? _value.member
          : member // ignore: cast_nullable_to_non_nullable
              as GymMember,
    ));
  }
}

/// @nodoc

class _$AddNewMemberEventImpl implements AddNewMemberEvent {
  const _$AddNewMemberEventImpl({required this.member});

  @override
  final GymMember member;

  @override
  String toString() {
    return 'MemberEvent.addNewMember(member: $member)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewMemberEventImpl &&
            (identical(other.member, member) || other.member == member));
  }

  @override
  int get hashCode => Object.hash(runtimeType, member);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewMemberEventImplCopyWith<_$AddNewMemberEventImpl> get copyWith =>
      __$$AddNewMemberEventImplCopyWithImpl<_$AddNewMemberEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GymMember member) addNewMember,
    required TResult Function() getAllMembers,
    required TResult Function(String memberId) getOneDetailsMember,
  }) {
    return addNewMember(member);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GymMember member)? addNewMember,
    TResult? Function()? getAllMembers,
    TResult? Function(String memberId)? getOneDetailsMember,
  }) {
    return addNewMember?.call(member);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GymMember member)? addNewMember,
    TResult Function()? getAllMembers,
    TResult Function(String memberId)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (addNewMember != null) {
      return addNewMember(member);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddNewMemberEvent value) addNewMember,
    required TResult Function(GetAllMembersEvent value) getAllMembers,
    required TResult Function(GetOneDetailsMemberEvent value)
        getOneDetailsMember,
  }) {
    return addNewMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewMemberEvent value)? addNewMember,
    TResult? Function(GetAllMembersEvent value)? getAllMembers,
    TResult? Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
  }) {
    return addNewMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewMemberEvent value)? addNewMember,
    TResult Function(GetAllMembersEvent value)? getAllMembers,
    TResult Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (addNewMember != null) {
      return addNewMember(this);
    }
    return orElse();
  }
}

abstract class AddNewMemberEvent implements MemberEvent {
  const factory AddNewMemberEvent({required final GymMember member}) =
      _$AddNewMemberEventImpl;

  GymMember get member;
  @JsonKey(ignore: true)
  _$$AddNewMemberEventImplCopyWith<_$AddNewMemberEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllMembersEventImplCopyWith<$Res> {
  factory _$$GetAllMembersEventImplCopyWith(_$GetAllMembersEventImpl value,
          $Res Function(_$GetAllMembersEventImpl) then) =
      __$$GetAllMembersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllMembersEventImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$GetAllMembersEventImpl>
    implements _$$GetAllMembersEventImplCopyWith<$Res> {
  __$$GetAllMembersEventImplCopyWithImpl(_$GetAllMembersEventImpl _value,
      $Res Function(_$GetAllMembersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllMembersEventImpl implements GetAllMembersEvent {
  const _$GetAllMembersEventImpl();

  @override
  String toString() {
    return 'MemberEvent.getAllMembers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllMembersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GymMember member) addNewMember,
    required TResult Function() getAllMembers,
    required TResult Function(String memberId) getOneDetailsMember,
  }) {
    return getAllMembers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GymMember member)? addNewMember,
    TResult? Function()? getAllMembers,
    TResult? Function(String memberId)? getOneDetailsMember,
  }) {
    return getAllMembers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GymMember member)? addNewMember,
    TResult Function()? getAllMembers,
    TResult Function(String memberId)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (getAllMembers != null) {
      return getAllMembers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddNewMemberEvent value) addNewMember,
    required TResult Function(GetAllMembersEvent value) getAllMembers,
    required TResult Function(GetOneDetailsMemberEvent value)
        getOneDetailsMember,
  }) {
    return getAllMembers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewMemberEvent value)? addNewMember,
    TResult? Function(GetAllMembersEvent value)? getAllMembers,
    TResult? Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
  }) {
    return getAllMembers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewMemberEvent value)? addNewMember,
    TResult Function(GetAllMembersEvent value)? getAllMembers,
    TResult Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (getAllMembers != null) {
      return getAllMembers(this);
    }
    return orElse();
  }
}

abstract class GetAllMembersEvent implements MemberEvent {
  const factory GetAllMembersEvent() = _$GetAllMembersEventImpl;
}

/// @nodoc
abstract class _$$GetOneDetailsMemberEventImplCopyWith<$Res> {
  factory _$$GetOneDetailsMemberEventImplCopyWith(
          _$GetOneDetailsMemberEventImpl value,
          $Res Function(_$GetOneDetailsMemberEventImpl) then) =
      __$$GetOneDetailsMemberEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String memberId});
}

/// @nodoc
class __$$GetOneDetailsMemberEventImplCopyWithImpl<$Res>
    extends _$MemberEventCopyWithImpl<$Res, _$GetOneDetailsMemberEventImpl>
    implements _$$GetOneDetailsMemberEventImplCopyWith<$Res> {
  __$$GetOneDetailsMemberEventImplCopyWithImpl(
      _$GetOneDetailsMemberEventImpl _value,
      $Res Function(_$GetOneDetailsMemberEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberId = null,
  }) {
    return _then(_$GetOneDetailsMemberEventImpl(
      memberId: null == memberId
          ? _value.memberId
          : memberId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOneDetailsMemberEventImpl implements GetOneDetailsMemberEvent {
  const _$GetOneDetailsMemberEventImpl({required this.memberId});

  @override
  final String memberId;

  @override
  String toString() {
    return 'MemberEvent.getOneDetailsMember(memberId: $memberId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOneDetailsMemberEventImpl &&
            (identical(other.memberId, memberId) ||
                other.memberId == memberId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, memberId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOneDetailsMemberEventImplCopyWith<_$GetOneDetailsMemberEventImpl>
      get copyWith => __$$GetOneDetailsMemberEventImplCopyWithImpl<
          _$GetOneDetailsMemberEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(GymMember member) addNewMember,
    required TResult Function() getAllMembers,
    required TResult Function(String memberId) getOneDetailsMember,
  }) {
    return getOneDetailsMember(memberId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(GymMember member)? addNewMember,
    TResult? Function()? getAllMembers,
    TResult? Function(String memberId)? getOneDetailsMember,
  }) {
    return getOneDetailsMember?.call(memberId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(GymMember member)? addNewMember,
    TResult Function()? getAllMembers,
    TResult Function(String memberId)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (getOneDetailsMember != null) {
      return getOneDetailsMember(memberId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AddNewMemberEvent value) addNewMember,
    required TResult Function(GetAllMembersEvent value) getAllMembers,
    required TResult Function(GetOneDetailsMemberEvent value)
        getOneDetailsMember,
  }) {
    return getOneDetailsMember(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(AddNewMemberEvent value)? addNewMember,
    TResult? Function(GetAllMembersEvent value)? getAllMembers,
    TResult? Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
  }) {
    return getOneDetailsMember?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AddNewMemberEvent value)? addNewMember,
    TResult Function(GetAllMembersEvent value)? getAllMembers,
    TResult Function(GetOneDetailsMemberEvent value)? getOneDetailsMember,
    required TResult orElse(),
  }) {
    if (getOneDetailsMember != null) {
      return getOneDetailsMember(this);
    }
    return orElse();
  }
}

abstract class GetOneDetailsMemberEvent implements MemberEvent {
  const factory GetOneDetailsMemberEvent({required final String memberId}) =
      _$GetOneDetailsMemberEventImpl;

  String get memberId;
  @JsonKey(ignore: true)
  _$$GetOneDetailsMemberEventImplCopyWith<_$GetOneDetailsMemberEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MemberState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<GymMember> members) success,
    required TResult Function(String errMsg) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GymMember> members)? success,
    TResult? Function(String errMsg)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GymMember> members)? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberStateCopyWith<$Res> {
  factory $MemberStateCopyWith(
          MemberState value, $Res Function(MemberState) then) =
      _$MemberStateCopyWithImpl<$Res, MemberState>;
}

/// @nodoc
class _$MemberStateCopyWithImpl<$Res, $Val extends MemberState>
    implements $MemberStateCopyWith<$Res> {
  _$MemberStateCopyWithImpl(this._value, this._then);

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
    extends _$MemberStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'MemberState.initial()';
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
    required TResult Function(List<GymMember> members) success,
    required TResult Function(String errMsg) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GymMember> members)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GymMember> members)? success,
    TResult Function(String errMsg)? error,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MemberState {
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
    extends _$MemberStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'MemberState.loading()';
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
    required TResult Function(List<GymMember> members) success,
    required TResult Function(String errMsg) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GymMember> members)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GymMember> members)? success,
    TResult Function(String errMsg)? error,
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
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements MemberState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<GymMember> members});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$MemberStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? members = null,
  }) {
    return _then(_$SuccessStateImpl(
      members: null == members
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<GymMember>,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl({required final List<GymMember> members})
      : _members = members;

  final List<GymMember> _members;
  @override
  List<GymMember> get members {
    if (_members is EqualUnmodifiableListView) return _members;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  String toString() {
    return 'MemberState.success(members: $members)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            const DeepCollectionEquality().equals(other._members, _members));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_members));

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
    required TResult Function(List<GymMember> members) success,
    required TResult Function(String errMsg) error,
  }) {
    return success(members);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GymMember> members)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return success?.call(members);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GymMember> members)? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(members);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements MemberState {
  const factory SuccessState({required final List<GymMember> members}) =
      _$SuccessStateImpl;

  List<GymMember> get members;
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errMsg});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$MemberStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errMsg = null,
  }) {
    return _then(_$ErrorStateImpl(
      errMsg: null == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl({required this.errMsg});

  @override
  final String errMsg;

  @override
  String toString() {
    return 'MemberState.error(errMsg: $errMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.errMsg, errMsg) || other.errMsg == errMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errMsg);

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
    required TResult Function(List<GymMember> members) success,
    required TResult Function(String errMsg) error,
  }) {
    return error(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<GymMember> members)? success,
    TResult? Function(String errMsg)? error,
  }) {
    return error?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<GymMember> members)? success,
    TResult Function(String errMsg)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements MemberState {
  const factory ErrorState({required final String errMsg}) = _$ErrorStateImpl;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
