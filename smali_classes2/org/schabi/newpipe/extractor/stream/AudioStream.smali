.class public Lorg/schabi/newpipe/extractor/stream/AudioStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "AudioStream.java"


# instance fields
.field public average_bitrate:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)V

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->average_bitrate:I

    .line 36
    iput p3, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->average_bitrate:I

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->average_bitrate:I

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget p1, p1, Lorg/schabi/newpipe/extractor/stream/AudioStream;->average_bitrate:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAverageBitrate()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/AudioStream;->average_bitrate:I

    return v0
.end method
