.class public abstract Lorg/schabi/newpipe/extractor/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final format:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->url:Ljava/lang/String;

    .line 20
    iget p1, p2, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    iput p1, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->format:I

    .line 21
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-void
.end method

.method public static containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            "Ljava/util/List<",
            "+",
            "Lorg/schabi/newpipe/extractor/stream/Stream;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/extractor/stream/Stream;

    .line 44
    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/stream/Stream;->equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public equalStats(Lorg/schabi/newpipe/extractor/stream/Stream;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormatId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormatId()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method

.method public getFormatId()I
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->mediaFormat:Lorg/schabi/newpipe/extractor/MediaFormat;

    iget v0, v0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/Stream;->url:Ljava/lang/String;

    return-object v0
.end method
