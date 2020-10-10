.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;
.super Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;
.source "ChunkFileInputStream.java"


# instance fields
.field private final length:J

.field private final offset:J

.field private position:J

.field private source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->length()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    .line 20
    iput-wide p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->offset:J

    sub-long p1, p4, p2

    .line 21
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->length:J

    const-wide/16 p1, 0x0

    .line 22
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    .line 24
    iget-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->length:J

    const-wide/16 v0, 0x1

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    .line 28
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->length()J

    move-result-wide p1

    cmp-long p3, p1, p4

    if-ltz p3, :cond_0

    .line 36
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-wide p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->offset:J

    invoke-virtual {p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    return-void

    .line 30
    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "invalid file length. expected = %s  found = %s"

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    aput-object p4, p3, v0

    const/4 p4, 0x1

    iget-object p5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {p5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 32
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    .line 33
    throw p1

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    .line 26
    new-instance p1, Ljava/io/IOException;

    const-string p2, "The chunk is empty or invalid"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()J
    .locals 4

    .line 100
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->length:J

    iget-wide v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    int-to-long v0, v1

    return-wide v0
.end method

.method public canRead()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canRewind()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    return-void
.end method

.method public getFilePointer()J
    .locals 4

    .line 45
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->offset:J

    iget-wide v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    int-to-long v2, p3

    add-long/2addr v2, v0

    iget-wide v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->length:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long/2addr v4, v0

    long-to-int p3, v4

    :cond_0
    if-nez p3, :cond_1

    const/4 p1, 0x0

    return p1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->read([BII)I

    move-result p1

    .line 77
    iget-wide p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    return p1
.end method

.method public rewind()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    .line 118
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->offset:J

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->length:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->source:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->offset:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    .line 92
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    .line 93
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->position:J

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public write([B)V
    .locals 0

    return-void
.end method

.method public write([BII)V
    .locals 0

    return-void
.end method
