.class Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$EmbeddedInfo;
.super Ljava/lang/Object;
.source "YoutubeStreamExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmbeddedInfo"
.end annotation


# instance fields
.field final sts:Ljava/lang/String;

.field final synthetic this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$EmbeddedInfo;->this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$EmbeddedInfo;->url:Ljava/lang/String;

    .line 833
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$EmbeddedInfo;->sts:Ljava/lang/String;

    return-void
.end method
