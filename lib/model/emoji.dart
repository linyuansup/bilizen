class Emoji {
  final int id;
  final int packageId;
  final String text;
  final String url;

  Emoji({
    required this.id,
    required this.packageId,
    required this.text,
    required this.url,
  });
}

enum EmojiType {
  normal(1),
  vip(2),
  buy(3),
  emoji(4);

  final int id;

  const EmojiType(this.id);
}
