const _tidMap = {
  VideoZone.animation: 1005,
  VideoZone.game: 1008,
  VideoZone.kichiku: 1007,
  VideoZone.music: 1003,
  VideoZone.dance: 1004,
  VideoZone.film: 1001,
  VideoZone.entertainment: 1002,
  VideoZone.knowledge: 1010,
  VideoZone.tech: 1012,
  VideoZone.news: 1009,
  VideoZone.food: 1020,
  VideoZone.drama: 1021,
  VideoZone.auto: 1013,
  VideoZone.fashion: 1014,
  VideoZone.sports: 1018,
  VideoZone.animal: 1024,
  VideoZone.vlog: 1029,
  VideoZone.drawing: 1006,
  VideoZone.ai: 1011,
  VideoZone.home: 1015,
  VideoZone.outdoor: 1016,
  VideoZone.fitness: 1017,
  VideoZone.handmade: 1019,
  VideoZone.travel: 1022,
  VideoZone.agriculture: 1023,
  VideoZone.parenting: 1025,
  VideoZone.health: 1026,
  VideoZone.emotion: 1027,
  VideoZone.lifestyle: 1030,
  VideoZone.experience: 1031,
  VideoZone.occult: 1028,
};

const _channelIdMap = {
  VideoZone.animation: 7,
  VideoZone.game: 8,
  VideoZone.kichiku: 9,
  VideoZone.music: 10,
  VideoZone.dance: 11,
  VideoZone.film: 12,
  VideoZone.entertainment: 13,
  VideoZone.knowledge: 14,
  VideoZone.tech: 15,
  VideoZone.news: 16,
  VideoZone.food: 17,
  VideoZone.drama: 18,
  VideoZone.auto: 19,
  VideoZone.fashion: 20,
  VideoZone.sports: 21,
  VideoZone.animal: 22,
  VideoZone.vlog: 23,
  VideoZone.drawing: 24,
  VideoZone.ai: 25,
  VideoZone.home: 26,
  VideoZone.outdoor: 27,
  VideoZone.fitness: 28,
  VideoZone.handmade: 29,
  VideoZone.travel: 30,
  VideoZone.agriculture: 31,
  VideoZone.parenting: 32,
  VideoZone.health: 33,
  VideoZone.emotion: 34,
  VideoZone.lifestyle: 35,
  VideoZone.experience: 36,
  VideoZone.occult: 44,
};

enum VideoZone {
  /// 动画分区
  animation,

  /// 游戏分区
  game,

  /// 音乐分区
  music,

  /// 舞蹈
  dance,

  /// 影视
  film,

  /// 娱乐
  entertainment,

  /// 知识
  knowledge,

  /// 科技数码
  tech,

  /// 资讯
  news,

  /// 美食
  food,

  /// 小剧场
  drama,

  /// 鬼畜
  kichiku,

  /// 汽车
  auto,

  /// 时尚美妆
  fashion,

  /// 体育运动
  sports,

  /// 动物
  animal,

  /// VLOG
  vlog,

  /// 绘画
  drawing,

  /// 人工智能
  ai,

  /// 家装房产
  home,

  /// 户外潮流
  outdoor,

  /// 健身
  fitness,

  /// 手工
  handmade,

  /// 旅游出行
  travel,

  /// 三农
  agriculture,

  /// 亲子
  parenting,

  /// 健康
  health,

  /// 情感
  emotion,

  /// 生活兴趣
  lifestyle,

  /// 生活经验
  experience,

  /// 神秘学
  occult,
}

extension VideoZoneX on VideoZone {
  int get tid => _tidMap[this]!;

  int get channelId => _channelIdMap[this]!;

  static VideoZone fromTid(int tid) {
    final entry = _tidMap.entries.firstWhere(
      (e) => e.value == tid,
      orElse: () => throw ArgumentError('不支持的视频分区ID: $tid'),
    );
    return entry.key;
  }

  static VideoZone fromChannelId(int channelId) {
    final entry = _channelIdMap.entries.firstWhere(
      (e) => e.value == channelId,
      orElse: () => throw ArgumentError('不支持的频道ID: $channelId'),
    );
    return entry.key;
  }
}
