.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$DecryptException;
.super Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
.source "YoutubeStreamExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecryptException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$DecryptException;->this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    .line 63
    invoke-direct {p0, p2, p3}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
