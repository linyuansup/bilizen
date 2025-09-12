import 'package:bilizen/model/emoji.dart';
import 'package:bilizen/model/user.dart';

class Comment {
  final int commentId;
  final CommentTo to;
  final User sender;
  final int secondLevelReplyNum;
  final int totalReplyNum;
  final int sendTime;
  final int rootId;
  final int like;
  final LikeStatus likeStatus;
  final CommentContent content;
  final List<Comment> repliesPreview;
  final bool isUpLike;
  final bool isUpReply;

  Comment({
    required this.commentId,
    required this.to,
    required this.rootId,
    required this.sender,
    required this.secondLevelReplyNum,
    required this.totalReplyNum,
    required this.sendTime,
    required this.like,
    required this.likeStatus,
    required this.content,
    required this.repliesPreview,
    required this.isUpLike,
    required this.isUpReply,
  });

  factory Comment.fromApi(Map<String, dynamic> json) {
    final member = json["member"];
    final sender = User(id: int.parse(member["mid"] as String));
    sender.setNickName(member["uname"]);
    sender.setSex(member["sex"]);
    sender.setSign(member["sign"]);
    sender.setAvatar(member["avatar"]);
    sender.setLevel(member["level_info"]["current_level"]);
    sender.setIsFollowing((member["is_followed"]) == 1);

    return Comment(
      commentId: json["rpid"],
      rootId: json["root"],
      to: CommentTo(
        id: json["oid"],
        type: CommentToType.values.firstWhere((e) => e.id == json["type"]),
      ),
      sender: sender,
      secondLevelReplyNum: json["count"],
      totalReplyNum: json["rcount"],
      sendTime: json["ctime"],
      like: json["like"],
      likeStatus: (json["action"] == 1)
          ? LikeStatus.liked
          : (json["action"] == 2)
          ? LikeStatus.disliked
          : LikeStatus.none,
      content: CommentContent.fromApi(json["content"]),
      repliesPreview:
          (json["replies"] as List?)?.map((e) {
            return Comment.fromApi(e);
          }).toList() ??
          [],
      isUpLike: json["up_action"]["like"],
      isUpReply: json["up_action"]["reply"],
    );
  }
}

class CommentTo {
  final int id;
  final CommentToType type;

  CommentTo({required this.id, required this.type});
}

enum CommentToType {
  video(1), // 视频
  topic(2), // 话题
  activity(4), // 活动
  smallVideo(5), // 小视频
  blackRoom(6), // 小黑屋
  notice(7), // 公告
  live(8), // 直播
  activityVideo(9), // 活动稿件
  liveNotice(10), // 直播公告
  pictureDynamic(11), // 图文动态
  article(12), // 专栏
  ticket(13), // 购票
  audio(14), // 音频
  roleManager(15), // 风纪委员会
  comment(16), // 点评
  dynamic(17), // 动态
  playlist(18), // 播单
  musicPlaylist(19), // 音乐播单
  comic(20), // 漫画
  comic2(21), // 漫画
  comic3(22), // 漫画（使用此）
  course(33); // 课程

  final int id;

  const CommentToType(this.id);
}

class CommentContent {
  final String message;
  final List<Emoji> mentionEmojis;
  final List<String> images;

  CommentContent({
    required this.message,
    required this.mentionEmojis,
    required this.images,
  });

  factory CommentContent.fromApi(Map<String, dynamic> json) {
    return CommentContent(
      message: json["message"],
      mentionEmojis:
          (json["emote"] as Map<String, dynamic>?)?.values.map((e) {
            return Emoji(
              id: e["id"],
              packageId: e["package_id"],
              text: e["text"],
              url: e["url"],
              type: EmojiType.values.firstWhere((type) => type.id == e["type"]),
            );
          }).toList() ??
          [],
      images:
          (json["pictures"] as List?)
              ?.map((e) => e["img_src"] as String)
              .toList() ??
          [],
    );
  }
}

enum LikeStatus {
  none,
  liked,
  disliked,
}
