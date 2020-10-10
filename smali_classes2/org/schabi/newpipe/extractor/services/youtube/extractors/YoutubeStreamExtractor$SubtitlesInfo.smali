.class Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;
.super Ljava/lang/Object;
.source "YoutubeStreamExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubtitlesInfo"
.end annotation


# instance fields
.field final cleanUrl:Ljava/lang/String;

.field final isGenerated:Z

.field final languageCode:Ljava/lang/String;

.field final synthetic this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 842
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;->this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    const-string v0, "&fmt=[^&]*"

    .line 844
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "&tlang=[^&]*"

    .line 845
    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;->cleanUrl:Ljava/lang/String;

    .line 846
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;->languageCode:Ljava/lang/String;

    .line 847
    iput-boolean p4, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;->isGenerated:Z

    return-void
.end method


# virtual methods
.method public getSubtitle(Lorg/schabi/newpipe/extractor/MediaFormat;)Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;
    .locals 4

    .line 851
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;->languageCode:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;->cleanUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&fmt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$SubtitlesInfo;->isGenerated:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;-><init>(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
