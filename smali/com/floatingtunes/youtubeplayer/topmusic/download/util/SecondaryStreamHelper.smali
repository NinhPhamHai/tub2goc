.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;
.super Ljava/lang/Object;
.source "SecondaryStreamHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/schabi/newpipe/extractor/stream/Stream;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final position:I

.field private final streams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->streams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    .line 19
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->position:I

    .line 20
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->position:I

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "selected stream not found"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getAudioStreamFor(Ljava/util/List;Lorg/schabi/newpipe/extractor/stream/VideoStream;)Lorg/schabi/newpipe/extractor/stream/AudioStream;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ")",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper$1;->$SwitchMap$org$schabi$newpipe$extractor$MediaFormat:[I

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return-object v1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p1

    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 50
    invoke-virtual {v3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v4

    if-eqz p1, :cond_3

    sget-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_1

    :cond_3
    sget-object v5, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    :goto_1
    if-ne v4, v5, :cond_2

    return-object v3

    .line 56
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2
    if-ltz v0, :cond_7

    .line 57
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 58
    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v3

    if-eqz p1, :cond_5

    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_3

    :cond_5
    sget-object v4, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    :goto_3
    if-ne v3, v4, :cond_6

    return-object v2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    return-object v1
.end method


# virtual methods
.method public getSizeInBytes()J
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->streams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->position:I

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStream()Lorg/schabi/newpipe/extractor/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->streams:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/SecondaryStreamHelper;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/Stream;

    return-object v0
.end method
