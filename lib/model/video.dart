import 'package:bilizen/data/api/video/info.dart';
import 'package:bilizen/inject/inject.dart';
import 'package:bilizen/model/comment_bar_info.dart';
import 'package:bilizen/model/staff.dart';
import 'package:bilizen/model/user.dart';
import 'package:bilizen/model/video_playlist.dart';
import 'package:bilizen/package/future_class/annotations.dart';
import 'package:bilizen/package/future_class/future_class_base.dart';
import 'package:bilizen/util/bilibili.dart';

part 'video.future.dart';

@futureClass
class Video extends _$Video {
  final String bid;
  final _videoApi = getIt<VideoApi>();
  // final _videoCacheService = getIt<VideoCacheService>();
  // final _userCacheService = getIt<UserCacheService>();

  late CommentBarInfo commentBarInfo = CommentBarInfo(
    type: 1,
    oid: toAv(bid),
  );

  Video({required this.bid});

  @FutureData(loader: "plist")
  Future<int> get videosNum => $videosNum;

  @FutureData(loader: "basicInfo")
  Future<String> get cover => $cover;

  @FutureData(loader: "basicInfo")
  Future<String> get title => $title;

  @FutureData(loader: "basicInfo")
  Future<String> get description => $description;

  @FutureData(loader: "basicInfo")
  Future<int> get totalDuration => $totalDuration;

  @FutureData(loader: "basicInfo")
  Future<User> get uploader => $uploader;

  @FutureData(loader: "basicInfo")
  Future<String> get argument => $argument;

  @FutureData(loader: "plist")
  Future<List<VideoPlaylist>> get playlist => $playlist;

  @FutureData(loader: "basicInfo")
  Future<List<Staff>> get staff => $staff;

  @FutureData(loader: "basicInfo")
  Future<int> get view => $view;

  @FutureData(loader: "basicInfo")
  Future<int> get danmaku => $danmaku;

  @FutureData(loader: "basicInfo")
  Future<int> get reply => $reply;

  @FutureData(loader: "basicInfo")
  Future<int> get favorite => $favorite;

  @FutureData(loader: "basicInfo")
  Future<int> get coin => $coin;

  @FutureData(loader: "basicInfo")
  Future<int> get uploadTime => $uploadTime;

  @FutureData(loader: "basicInfo")
  Future<int> get share => $share;

  @FutureData(loader: "basicInfo")
  Future<int> get like => $like;

  @override
  Future<void> basicInfo() async {
    final info = (await _videoApi.getVideoInfo(bid))["data"];
    setVideosNum(info["videos"]);
    setCover(info["pic"]);
    setTitle(info["title"]);
    setDescription(info["desc"]);
    setUploadTime(info["pubdate"]);
    setTotalDuration(info["duration"]);
    final user = User(id: info["owner"]["mid"]);
    user.setNickName(info["owner"]["name"]);
    user.setAvatar(info["owner"]["face"]);
    setUploader(user);
    setArgument(info["argue_info"]["argue_msg"]);
    setPlaylist(
      (info["pages"] as List)
          .map((page) {
            return VideoPlaylist(
              cid: page["cid"],
              index: page["page"],
              bvid: bid,
              title: page["part"],
              duration: page["duration"],
            );
          })
          .toList(growable: false),
    );
    if (info["staff"] != null) {
      setStaff(
        (info["staff"] as List)
            .map((staff) {
              final user = User(id: staff["mid"]);
              user.setNickName(staff["name"]);
              user.setAvatar(staff["face"]);
              user.setFans(staff["follower"]);
              return Staff(
                role: staff["title"],
                user: user,
              );
            })
            .toList(growable: false),
      );
    } else {
      final owner = info["owner"];
      final user = User(id: owner["mid"]);
      user.setNickName(owner["name"]);
      user.setAvatar(owner["face"]);
      setStaff([Staff(role: "UP主", user: user)]);
    }
    setView(info["stat"]["view"]);
    setDanmaku(info["stat"]["danmaku"]);
    setReply(info["stat"]["reply"]);
    setFavorite(info["stat"]["favorite"]);
    setCoin(info["stat"]["coin"]);
    setShare(info["stat"]["share"]);
    setLike(info["stat"]["like"]);
    // await _userCacheService.put(
    // await UserCache.fromUser(user),
    // );
    // await _videoCacheService.put(
    // await VideoCache.fromVideo(this),
    // );
  }

  @override
  Future<void> plist() async {
    final response = await _videoApi.getVideoPlaylist(bid);
    final data = response["data"] as List;
    setVideosNum(data.length);
    setPlaylist(
      data
          .map((item) {
            return VideoPlaylist(
              cid: item["cid"],
              index: item["page"],
              bvid: bid,
              title: item["part"],
              duration: item["duration"],
            );
          })
          .toList(growable: false),
    );
  }

  // @override
  // Future<void> cache() async {
  //   final video = await _videoCacheService.findByBvid(bid);
  //   if (video == null) {
  //     await basicInfo();
  //     return;
  //   }
  //   setCover(video.cover);
  //   setTitle(video.title);
  //   setUploader(User(id: video.uid));
  // }
}
