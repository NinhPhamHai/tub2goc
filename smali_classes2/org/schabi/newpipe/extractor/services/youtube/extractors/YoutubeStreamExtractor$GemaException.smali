.class public Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$GemaException;
.super Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;
.source "YoutubeStreamExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GemaException"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor$GemaException;->this$0:Lorg/schabi/newpipe/extractor/services/youtube/extractors/YoutubeStreamExtractor;

    .line 69
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;)V

    return-void
.end method
