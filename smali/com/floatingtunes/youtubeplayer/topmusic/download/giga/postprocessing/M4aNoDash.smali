.class Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/M4aNoDash;
.super Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;
.source "M4aNoDash.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "mp4D-m4a"

    .line 14
    invoke-direct {p0, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    const/4 v3, 0x0

    aget-object p2, p2, v3

    aput-object p2, v2, v3

    invoke-direct {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;-><init>([Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    const p2, 0x4d344120    # 1.89010432E8f

    .line 36
    invoke-virtual {v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->setMainBrand(I)V

    .line 37
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->parseSources()V

    .line 38
    new-array p2, v1, [I

    aput v3, p2, v3

    invoke-virtual {v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->selectTracks([I)V

    .line 39
    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->build(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    const/4 p1, -0x1

    return p1
.end method

.method varargs test([Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    .line 22
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse()V

    .line 24
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->getBrands()[I

    move-result-object p1

    aget p1, p1, v1

    const v0, 0x64617368

    if-eq p1, v0, :cond_0

    const v0, 0x69736f35

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
