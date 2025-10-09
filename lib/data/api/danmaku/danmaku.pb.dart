// This is a generated file - do not edit.
//
// Generated from danmaku.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class DmSegMobileReply extends $pb.GeneratedMessage {
  factory DmSegMobileReply({
    $core.Iterable<DanmakuElem>? elems,
  }) {
    final result = create();
    if (elems != null) result.elems.addAll(elems);
    return result;
  }

  DmSegMobileReply._();

  factory DmSegMobileReply.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DmSegMobileReply.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DmSegMobileReply',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'dm'),
      createEmptyInstance: create)
    ..pc<DanmakuElem>(1, _omitFieldNames ? '' : 'elems', $pb.PbFieldType.PM,
        subBuilder: DanmakuElem.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DmSegMobileReply clone() => DmSegMobileReply()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DmSegMobileReply copyWith(void Function(DmSegMobileReply) updates) =>
      super.copyWith((message) => updates(message as DmSegMobileReply))
          as DmSegMobileReply;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegMobileReply create() => DmSegMobileReply._();
  @$core.override
  DmSegMobileReply createEmptyInstance() => create();
  static $pb.PbList<DmSegMobileReply> createRepeated() =>
      $pb.PbList<DmSegMobileReply>();
  @$core.pragma('dart2js:noInline')
  static DmSegMobileReply getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DmSegMobileReply>(create);
  static DmSegMobileReply? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<DanmakuElem> get elems => $_getList(0);
}

class DanmakuElem extends $pb.GeneratedMessage {
  factory DanmakuElem({
    $fixnum.Int64? id,
    $core.int? progress,
    $core.int? mode,
    $core.int? fontsize,
    $core.int? color,
    $core.String? midHash,
    $core.String? content,
    $fixnum.Int64? ctime,
    $core.int? weight,
    $core.String? action,
    $core.int? pool,
    $core.String? idStr,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (progress != null) result.progress = progress;
    if (mode != null) result.mode = mode;
    if (fontsize != null) result.fontsize = fontsize;
    if (color != null) result.color = color;
    if (midHash != null) result.midHash = midHash;
    if (content != null) result.content = content;
    if (ctime != null) result.ctime = ctime;
    if (weight != null) result.weight = weight;
    if (action != null) result.action = action;
    if (pool != null) result.pool = pool;
    if (idStr != null) result.idStr = idStr;
    return result;
  }

  DanmakuElem._();

  factory DanmakuElem.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DanmakuElem.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DanmakuElem',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'dm'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'progress', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fontsize', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'color', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'midHash', protoName: 'midHash')
    ..aOS(7, _omitFieldNames ? '' : 'content')
    ..aInt64(8, _omitFieldNames ? '' : 'ctime')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'action')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'pool', $pb.PbFieldType.O3)
    ..aOS(12, _omitFieldNames ? '' : 'idStr', protoName: 'idStr')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DanmakuElem clone() => DanmakuElem()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DanmakuElem copyWith(void Function(DanmakuElem) updates) =>
      super.copyWith((message) => updates(message as DanmakuElem))
          as DanmakuElem;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmakuElem create() => DanmakuElem._();
  @$core.override
  DanmakuElem createEmptyInstance() => create();
  static $pb.PbList<DanmakuElem> createRepeated() => $pb.PbList<DanmakuElem>();
  @$core.pragma('dart2js:noInline')
  static DanmakuElem getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DanmakuElem>(create);
  static DanmakuElem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get progress => $_getIZ(1);
  @$pb.TagNumber(2)
  set progress($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get mode => $_getIZ(2);
  @$pb.TagNumber(3)
  set mode($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMode() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get fontsize => $_getIZ(3);
  @$pb.TagNumber(4)
  set fontsize($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFontsize() => $_has(3);
  @$pb.TagNumber(4)
  void clearFontsize() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get color => $_getIZ(4);
  @$pb.TagNumber(5)
  set color($core.int value) => $_setUnsignedInt32(4, value);
  @$pb.TagNumber(5)
  $core.bool hasColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearColor() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.String get midHash => $_getSZ(5);
  @$pb.TagNumber(6)
  set midHash($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasMidHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearMidHash() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.String get content => $_getSZ(6);
  @$pb.TagNumber(7)
  set content($core.String value) => $_setString(6, value);
  @$pb.TagNumber(7)
  $core.bool hasContent() => $_has(6);
  @$pb.TagNumber(7)
  void clearContent() => $_clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get ctime => $_getI64(7);
  @$pb.TagNumber(8)
  set ctime($fixnum.Int64 value) => $_setInt64(7, value);
  @$pb.TagNumber(8)
  $core.bool hasCtime() => $_has(7);
  @$pb.TagNumber(8)
  void clearCtime() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.int get weight => $_getIZ(8);
  @$pb.TagNumber(9)
  set weight($core.int value) => $_setSignedInt32(8, value);
  @$pb.TagNumber(9)
  $core.bool hasWeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearWeight() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.String get action => $_getSZ(9);
  @$pb.TagNumber(10)
  set action($core.String value) => $_setString(9, value);
  @$pb.TagNumber(10)
  $core.bool hasAction() => $_has(9);
  @$pb.TagNumber(10)
  void clearAction() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get pool => $_getIZ(10);
  @$pb.TagNumber(11)
  set pool($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasPool() => $_has(10);
  @$pb.TagNumber(11)
  void clearPool() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.String get idStr => $_getSZ(11);
  @$pb.TagNumber(12)
  set idStr($core.String value) => $_setString(11, value);
  @$pb.TagNumber(12)
  $core.bool hasIdStr() => $_has(11);
  @$pb.TagNumber(12)
  void clearIdStr() => $_clearField(12);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
