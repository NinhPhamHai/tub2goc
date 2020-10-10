.class public Lorg/schabi/newpipe/extractor/stream/VideoStream;
.super Lorg/schabi/newpipe/extractor/stream/Stream;
.source "VideoStream.java"


# instance fields
.field public final isVideoOnly:Z

.field public final resolution:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/stream/Stream;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)V

    .line 36
    iput-object p3, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 37
    iput-boolean p4, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    return-void
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-object v1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    iget-boolean p1, p1, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public isVideoOnly()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/stream/VideoStream;->isVideoOnly:Z

    return v0
.end method
