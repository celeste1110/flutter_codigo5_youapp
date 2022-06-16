

class ChannelModel {
  ChannelModel({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
    required this.contentDetails,
    required this.statistics,
    required this.topicDetails,
    required this.brandingSettings,
  });

  String kind;
  String etag;
  String id;
  Snippet snippet;
  ContentDetails contentDetails;
  Statistics statistics;
  TopicDetails topicDetails;
  BrandingSettings brandingSettings;

  factory ChannelModel.fromJson(Map<String, dynamic> json) => ChannelModel(
    kind: json["kind"],
    etag: json["etag"],
    id: json["id"],
    snippet: Snippet.fromJson(json["snippet"]),
    contentDetails: ContentDetails.fromJson(json["contentDetails"]),
    statistics: Statistics.fromJson(json["statistics"]),
    topicDetails: TopicDetails.fromJson(json["topicDetails"]),
    brandingSettings: BrandingSettings.fromJson(json["brandingSettings"]),
  );

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "etag": etag,
    "id": id,
    "snippet": snippet.toJson(),
    "contentDetails": contentDetails.toJson(),
    "statistics": statistics.toJson(),
    "topicDetails": topicDetails.toJson(),
    "brandingSettings": brandingSettings.toJson(),
  };
}

class BrandingSettings {
  BrandingSettings({
    required this.channel,
    required this.image,
  });

  Channel channel;
  ImageModel image;

  factory BrandingSettings.fromJson(Map<String, dynamic> json) => BrandingSettings(
    channel: Channel.fromJson(json["channel"]),
    image: ImageModel.fromJson(json["image"]),
  );

  Map<String, dynamic> toJson() => {
    "channel": channel.toJson(),
    "image": image.toJson(),
  };
}

class Channel {
  Channel({
    required this.title,
    required this.description,
    required this.keywords,
    required this.unsubscribedTrailer,
    required this.country,
  });

  String title;
  String description;
  String keywords;
  String unsubscribedTrailer;
  String country;

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
    title: json["title"],
    description: json["description"],
    keywords: json["keywords"],
    unsubscribedTrailer: json["unsubscribedTrailer"]??'',
    country: json["country"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "keywords": keywords,
    "unsubscribedTrailer": unsubscribedTrailer,
    "country": country,
  };
}
class ImageModel {
  ImageModel({
    required this.bannerExternalUrl,
  });

  String bannerExternalUrl;

  factory ImageModel.fromJson(Map<String, dynamic> json) => ImageModel(
    bannerExternalUrl: json["bannerExternalUrl"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "bannerExternalUrl": bannerExternalUrl,
  };
}

class ContentDetails {
  ContentDetails({
    required this.relatedPlaylists,
  });

  RelatedPlaylists relatedPlaylists;

  factory ContentDetails.fromJson(Map<String, dynamic> json) => ContentDetails(
    relatedPlaylists: RelatedPlaylists.fromJson(json["relatedPlaylists"]),
  );

  Map<String, dynamic> toJson() => {
    "relatedPlaylists": relatedPlaylists.toJson(),
  };
}

class RelatedPlaylists {
  RelatedPlaylists({
    required this.likes,
    required this.uploads,
  });

  String likes;
  String uploads;

  factory RelatedPlaylists.fromJson(Map<String, dynamic> json) => RelatedPlaylists(
    likes: json["likes"],
    uploads: json["uploads"],
  );

  Map<String, dynamic> toJson() => {
    "likes": likes,
    "uploads": uploads,
  };
}

class Snippet {
  Snippet({
    required this.title,
    required this.description,
    required this.customUrl,
    required this.publishedAt,
    required this.thumbnails,
    required this.localized,
    required this.country,
  });

  String title;
  String description;
  String customUrl;
  DateTime publishedAt;
  Thumbnails thumbnails;
  Localized localized;
  String country;

  factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
    title: json["title"],
    description: json["description"],
    customUrl: json["customUrl"],
    publishedAt: DateTime.parse(json["publishedAt"]),
    thumbnails: Thumbnails.fromJson(json["thumbnails"]),
    localized: Localized.fromJson(json["localized"]),
    country: json["country"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
    "customUrl": customUrl,
    "publishedAt": publishedAt.toIso8601String(),
    "thumbnails": thumbnails.toJson(),
    "localized": localized.toJson(),
    "country": country,
  };
}

class Localized {
  Localized({
    required this.title,
    required this.description,
  });

  String title;
  String description;

  factory Localized.fromJson(Map<String, dynamic> json) => Localized(
    title: json["title"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "description": description,
  };
}

class Thumbnails {
  Thumbnails({
    required this.thumbnailsDefault,
    required this.medium,
    required this.high,
  });

  Default thumbnailsDefault;
  Default medium;
  Default high;

  factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
    thumbnailsDefault: Default.fromJson(json["default"]),
    medium: Default.fromJson(json["medium"]),
    high: Default.fromJson(json["high"]),
  );

  Map<String, dynamic> toJson() => {
    "default": thumbnailsDefault.toJson(),
    "medium": medium.toJson(),
    "high": high.toJson(),
  };
}

class Default {
  Default({
    required this.url,
    required this.width,
    required this.height,
  });

  String url;
  int width;
  int height;

  factory Default.fromJson(Map<String, dynamic> json) => Default(
    url: json["url"]??'',
    width: json["width"]??0,
    height: json["height"]??0,
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "width": width,
    "height": height,
  };
}

class Statistics {
  Statistics({
    required this.viewCount,
    required this.subscriberCount,
    required this.hiddenSubscriberCount,
    required this.videoCount,
  });

  String viewCount;
  String subscriberCount;
  bool hiddenSubscriberCount;
  String videoCount;

  factory Statistics.fromJson(Map<String, dynamic> json) => Statistics(
    viewCount: json["viewCount"],
    subscriberCount: json["subscriberCount"],
    hiddenSubscriberCount: json["hiddenSubscriberCount"],
    videoCount: json["videoCount"],
  );

  Map<String, dynamic> toJson() => {
    "viewCount": viewCount,
    "subscriberCount": subscriberCount,
    "hiddenSubscriberCount": hiddenSubscriberCount,
    "videoCount": videoCount,
  };
}

class TopicDetails {
  TopicDetails({
    required this.topicIds,
    required this.topicCategories,
  });

  List<String> topicIds;
  List<String> topicCategories;

  factory TopicDetails.fromJson(Map<String, dynamic> json) => TopicDetails(
    topicIds: List<String>.from(json["topicIds"].map((x) => x)),
    topicCategories: List<String>.from(json["topicCategories"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "topicIds": List<dynamic>.from(topicIds.map((x) => x)),
    "topicCategories": List<dynamic>.from(topicCategories.map((x) => x)),
  };
}
