.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# instance fields
.field private position:J

.field private final primitive:[S

.field private final readBuffer:[B

.field private readCount:I

.field private readOffset:I

.field private final stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

.field private view:Ljava/io/InputStream;

.field private viewSize:I


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    const/16 v0, 0x8

    .line 220
    new-array v0, v0, [S

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitive:[S

    const/high16 v0, 0x20000

    .line 235
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    .line 29
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    .line 30
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    array-length p1, p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I
    .locals 0

    .line 13
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    return p0
.end method

.method static synthetic access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;I)I
    .locals 0

    .line 13
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    return p1
.end method

.method static synthetic access$010(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)I
    .locals 2

    .line 13
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    return v0
.end method

.method private fillBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    const/4 v1, 0x1

    if-gez v0, :cond_0

    return v1

    .line 243
    :cond_0
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_2

    .line 244
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    .line 245
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    .line 246
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    return v1

    .line 249
    :cond_1
    iput v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    .line 252
    :cond_2
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    if-ge v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private primitiveRead(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 224
    invoke-virtual {p0, v0, v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([BII)I

    move-result v2

    if-ne v2, p1, :cond_1

    :goto_0
    if-ge v1, p1, :cond_0

    .line 231
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitive:[S

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 227
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Truncated stream, missing "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public available()Z
    .locals 5

    .line 127
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->available()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public canRewind()Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canRewind()Z

    move-result v0

    return v0
.end method

.method public getView(I)Ljava/io/InputStream;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->view:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->view:Ljava/io/InputStream;

    .line 215
    :cond_0
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    .line 217
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->view:Ljava/io/InputStream;

    return-object p1
.end method

.method public position()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->fillBuffer()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 42
    :cond_0
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    .line 43
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    .line 45
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-lt p3, v2, :cond_2

    if-lez v0, :cond_1

    .line 97
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 104
    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->read([BII)I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/2addr v1, p1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-lez p3, :cond_3

    .line 108
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->fillBuffer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 109
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 110
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    .line 113
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    add-int/2addr v1, v0

    goto :goto_1

    .line 122
    :cond_3
    :goto_2
    iget-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    return v1
.end method

.method public readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 69
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitiveRead(I)V

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitive:[S

    const/4 v1, 0x0

    aget-short v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-short v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-short v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-short v0, v0, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 79
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitiveRead(I)V

    .line 80
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitive:[S

    const/4 v2, 0x0

    aget-short v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-short v3, v1, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-short v3, v1, v3

    shl-int/2addr v3, v0

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-short v3, v1, v3

    or-int/2addr v2, v3

    int-to-long v2, v2

    const/4 v4, 0x4

    .line 81
    aget-short v4, v1, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x5

    aget-short v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-short v5, v1, v5

    shl-int/lit8 v0, v5, 0x8

    or-int/2addr v0, v4

    const/4 v4, 0x7

    aget-short v1, v1, v4

    or-int/2addr v0, v1

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 74
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitiveRead(I)V

    .line 75
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->primitive:[S

    const/4 v1, 0x0

    aget-short v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    aget-short v0, v0, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public rewind()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->rewind()V

    .line 133
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    int-to-long v3, v2

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v0, v2

    .line 136
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->viewSize:I

    .line 139
    :goto_0
    iput-wide v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    .line 140
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    return-void
.end method

.method public skipBytes(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    if-gez v0, :cond_0

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    if-nez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->skip(J)J

    move-result-wide p1

    goto :goto_0

    :cond_1
    int-to-long v1, v0

    cmp-long v3, v1, p1

    if-lez v3, :cond_2

    long-to-int v1, p1

    sub-int/2addr v0, v1

    .line 55
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    .line 56
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    goto :goto_0

    :cond_2
    int-to-long v1, v0

    .line 58
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    int-to-long v4, v0

    sub-long/2addr p1, v4

    invoke-virtual {v3, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->skip(J)J

    move-result-wide p1

    add-long/2addr p1, v1

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readCount:I

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readBuffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readOffset:I

    .line 64
    :goto_0
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position:J

    return-wide p1
.end method
