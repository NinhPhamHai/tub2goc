.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;
.super Ljava/lang/Object;
.source "WebMWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;
    }
.end annotation


# instance fields
.field private done:Z

.field private infoTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

.field private outBuffer:[B

.field private parsed:Z

.field private predefinedDurations:[I

.field private readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

.field private readersCluter:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

.field private readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

.field private sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

.field private written:J


# direct methods
.method public varargs constructor <init>([Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->done:Z

    .line 29
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->parsed:Z

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    .line 41
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    .line 42
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    array-length v0, p1

    new-array v0, v0, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    .line 43
    array-length p1, p1

    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->infoTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    const/16 p1, 0x2000

    .line 44
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->outBuffer:[B

    return-void
.end method

.method private convertTimecode(IJ)S
    .locals 4

    int-to-long v0, p1

    const-wide/32 v2, 0xf4240

    .line 359
    div-long/2addr v2, p2

    mul-long v0, v0, v2

    long-to-int p1, v0

    int-to-short p1, p1

    return p1
.end method

.method private dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    invoke-virtual {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([B)V

    .line 583
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    array-length p1, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 634
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 637
    array-length v1, p1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private encode(JZ)[B
    .locals 15

    move-wide/from16 v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v6, 0x7

    if-gt v3, v6, :cond_1

    long-to-double v6, v0

    mul-int/lit8 v8, v3, 0x7

    int-to-double v8, v8

    .line 598
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    :goto_1
    if-lt v3, v2, :cond_6

    long-to-double v6, v0

    mul-int/lit8 v2, v3, 0x7

    int-to-double v8, v2

    .line 608
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v8

    cmpl-double v2, v6, v4

    if-nez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int v2, p3, v3

    .line 613
    new-array v2, v2, [B

    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    const/high16 v6, 0x41000000    # 8.0f

    div-float/2addr v4, v6

    float-to-double v6, v4

    .line 614
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-long v6, v6

    add-int/lit8 v4, v3, -0x1

    move v5, v4

    const/high16 v8, 0x3f800000    # 1.0f

    :goto_2
    const/16 v9, 0x80

    if-ltz v5, :cond_4

    long-to-float v10, v0

    div-float/2addr v10, v8

    float-to-double v10, v10

    .line 618
    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-long v10, v10

    if-nez p3, :cond_3

    int-to-long v12, v5

    cmp-long v14, v12, v6

    if-nez v14, :cond_3

    shr-int/2addr v9, v4

    int-to-long v12, v9

    or-long/2addr v10, v12

    :cond_3
    add-int v9, p3, v5

    long-to-int v11, v10

    int-to-byte v10, v11

    .line 622
    aput-byte v10, v2, v9

    add-int/lit8 v5, v5, -0x1

    const/high16 v9, 0x43800000    # 256.0f

    mul-float v8, v8, v9

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_5

    const/4 v0, 0x0

    or-int/lit16 v1, v3, 0x80

    int-to-byte v1, v1

    .line 626
    aput-byte v1, v2, v0

    :cond_5
    return-object v2

    .line 605
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Can\'t encode a number of bigger than 7 bytes"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getNextBlockFrom(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->getNextSegment()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v1

    aput-object v1, v0, p1

    .line 328
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-object v2

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersCluter:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    aget-object v1, v0, p1

    if-nez v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->getNextCluster()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    move-result-object v1

    aput-object v1, v0, p1

    .line 335
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersCluter:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    aput-object v2, v0, p1

    .line 337
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->getNextBlockFrom(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;

    move-result-object p1

    return-object p1

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersCluter:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;->getNextSimpleBlock()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;

    move-result-object v0

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersCluter:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    aput-object v2, v0, p1

    .line 344
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;)V

    return-object p1

    .line 347
    :cond_2
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;)V

    .line 348
    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->data:Ljava/io/InputStream;

    iput-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    .line 349
    iget-wide v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->dataSize:J

    long-to-int v3, v2

    iput v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->dataSize:I

    .line 350
    iput p1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->trackNumber:I

    .line 351
    iget-byte v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->flags:B

    iput-byte v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->flags:B

    .line 352
    iget-short v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;

    iget-wide v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;->timecodeScale:J

    invoke-direct {p0, v0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->convertTimecode(IJ)S

    move-result v0

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    .line 353
    iget-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersCluter:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    aget-object p1, v0, p1

    iget-wide v4, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;->timecode:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    return-object v1
.end method

.method private lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    .line 588
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 589
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 591
    invoke-direct {p0, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private makeCluster(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[BJLjava/util/ArrayList;Ljava/util/ArrayList;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;",
            "[BJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_0

    .line 442
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    sub-long/2addr v0, p3

    long-to-int p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p6, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p5, :cond_1

    const/4 p3, 0x4

    .line 447
    new-array p4, p3, [B

    fill-array-data p4, :array_0

    invoke-direct {p0, p4, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    .line 448
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    new-array p3, p3, [B

    fill-array-data p3, :array_1

    invoke-direct {p0, p3, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    .line 451
    iget-wide p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    .line 453
    invoke-direct {p0, p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    return-wide p3

    :cond_1
    const-wide/16 p1, -0x1

    return-wide p1

    :array_0
    .array-data 1
        0x1ft
        0x43t
        -0x4at
        0x75t
    .end array-data

    :array_1
    .array-data 1
        0x10t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private makeCuePoint(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    .line 544
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x45

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 545
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    new-array v2, v1, [B

    const/16 v4, -0x4d

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    iget-wide v2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->atTimecode:J

    invoke-direct {p0, v2, v3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeCueTrackPosition(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 554
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0
.end method

.method private makeCueTrackPosition(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x1

    .line 561
    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x49

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 562
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    new-array v2, v1, [B

    const/16 v4, -0x9

    aput-byte v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p1, v1

    int-to-long v4, p1

    .line 566
    invoke-direct {p0, v4, v5, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    new-array p1, v1, [B

    const/16 v2, -0xf

    aput-byte v2, p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-wide v4, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->atCluster:J

    invoke-direct {p0, v4, v5, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->atBlock:I

    if-lez p1, :cond_0

    .line 574
    new-array p1, v1, [B

    const/16 v2, -0x10

    aput-byte v2, p1, v3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;->atBlock:I

    int-to-long p1, p1

    invoke-direct {p0, p1, p2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0
.end method

.method private makeEBML(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2b

    .line 463
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x1at
        0x45t
        -0x21t
        -0x5dt
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x42t
        -0x7at
        -0x7ft
        0x1t
        0x42t
        -0x9t
        -0x7ft
        0x1t
        0x42t
        -0xet
        -0x7ft
        0x4t
        0x42t
        -0xdt
        -0x7ft
        0x8t
        0x42t
        -0x7et
        -0x7ct
        0x77t
        0x65t
        0x62t
        0x6dt
        0x42t
        -0x79t
        -0x7ft
        0x2t
        0x42t
        -0x7bt
        -0x7ft
        0x2t
    .end array-data
.end method

.method private makeTimecode(J)[B
    .locals 2

    const/16 v0, 0x9

    .line 430
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, -0x19

    .line 431
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    .line 432
    invoke-direct {p0, p1, p2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 434
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    new-array p1, p1, [B

    .line 435
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method private makeTrackEntry(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;",
            ")",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    int-to-long v0, v0

    const/4 v2, 0x1

    .line 486
    invoke-direct {p0, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 490
    new-array v3, v2, [B

    const/4 v4, 0x0

    const/16 v5, -0x52

    aput-byte v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    .line 491
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    new-array v3, v2, [B

    const/16 v5, -0x29

    aput-byte v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x2

    .line 498
    new-array v5, v3, [B

    fill-array-data v5, :array_0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x3

    .line 502
    new-array v5, v0, [B

    fill-array-data v5, :array_1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x7

    .line 505
    new-array v5, v5, [B

    fill-array-data v5, :array_2

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    new-array v5, v2, [B

    const/16 v6, -0x7a

    aput-byte v6, v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v5, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 512
    new-array v5, v2, [B

    const/16 v6, -0x7d

    aput-byte v6, v5, v4

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget v5, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    int-to-long v5, v5

    invoke-direct {p0, v5, v6, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    iget-wide v5, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->defaultDuration:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_0

    .line 517
    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->predefinedDurations:[I

    long-to-float v5, v5

    const v6, 0x49742400    # 1000000.0f

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    aput v5, v7, p1

    .line 518
    new-array p1, v0, [B

    fill-array-data p1, :array_3

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-wide v5, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->defaultDuration:J

    invoke-direct {p0, v5, v6, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_0
    iget p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    if-eq p1, v2, :cond_1

    if-ne p1, v3, :cond_3

    :cond_1
    iget-object p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->valid([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 524
    new-array p1, v2, [B

    iget v0, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    if-ne v0, v2, :cond_2

    const/16 v0, 0xe0

    goto :goto_0

    :cond_2
    const/16 v0, 0xe1

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, p1, v4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->bMetadata:[B

    array-length p1, p1

    int-to-long v5, p1

    invoke-direct {p0, v5, v6, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->bMetadata:[B

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :cond_3
    iget-object p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->valid([B)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 531
    new-array p1, v3, [B

    fill-array-data p1, :array_4

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    iget-object p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->codecPrivate:[B

    array-length p1, p1

    int-to-long v2, p1

    invoke-direct {p0, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->codecPrivate:[B

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_4
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v1

    nop

    :array_0
    .array-data 1
        0x73t
        -0x3bt
    .end array-data

    nop

    :array_1
    .array-data 1
        -0x64t
        -0x7ft
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x22t
        -0x4bt
        -0x64t
        -0x7dt
        0x75t
        0x6et
        0x64t
    .end array-data

    :array_3
    .array-data 1
        0x23t
        -0x1dt
        -0x7dt
    .end array-data

    :array_4
    .array-data 1
        0x63t
        -0x5et
    .end array-data
.end method

.method private makeTracks()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x4

    .line 475
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 476
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 478
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->infoTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 479
    aget-object v2, v2, v1

    invoke-direct {p0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeTrackEntry(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    :cond_0
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->lengthFor(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    return-object v0

    nop

    :array_0
    .array-data 1
        0x16t
        0x54t
        -0x52t
        0x6bt
    .end array-data
.end method

.method private seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    goto :goto_0

    .line 366
    :cond_0
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    cmp-long v2, p2, v0

    if-lez v2, :cond_1

    sub-long v0, p2, v0

    .line 367
    invoke-virtual {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->skip(J)J

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->rewind()V

    .line 370
    invoke-virtual {p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->skip(J)J

    .line 374
    :goto_0
    iput-wide p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    return-void
.end method

.method private selectTrackForCue()I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 652
    :goto_0
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->infoTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    array-length v5, v4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v5, :cond_2

    .line 653
    aget-object v4, v4, v1

    iget v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    if-eq v4, v7, :cond_1

    if-eq v4, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    :cond_2
    array-length v1, v4

    if-ne v2, v1, :cond_3

    goto :goto_3

    .line 666
    :cond_3
    array-length v1, v4

    if-ne v3, v1, :cond_4

    :goto_2
    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    if-lez v2, :cond_7

    :goto_3
    const/4 v1, 0x0

    .line 677
    :goto_4
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->infoTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 678
    aget-object v2, v2, v1

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    if-ne v6, v2, :cond_6

    return v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return v0
.end method

.method private valid([B)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 644
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private writeBlock(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-wide v0, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    sub-long/2addr v0, p3

    const-wide/16 p3, -0x8000

    cmp-long v2, v0, p3

    if-ltz v2, :cond_3

    const-wide/16 p3, 0x7fff

    cmp-long v2, v0, p3

    if-gtz v2, :cond_3

    .line 405
    new-instance p3, Ljava/util/ArrayList;

    const/4 p4, 0x5

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p4, 0x1

    .line 406
    new-array v2, p4, [B

    const/16 v3, -0x5d

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 407
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    iget v2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->trackNumber:I

    add-int/2addr v2, p4

    int-to-long v2, v2

    invoke-direct {p0, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x2

    .line 409
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    long-to-int v1, v0

    int-to-short v0, v1

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-array v0, p4, [B

    iget-byte v1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->flags:B

    aput-byte v1, v0, v4

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget v0, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->dataSize:I

    .line 413
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 414
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 416
    invoke-direct {p0, v0, v1, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 418
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    .line 419
    invoke-direct {p0, p4, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    goto :goto_1

    .line 423
    :cond_1
    :goto_2
    iget-object p3, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    iget-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {p3, p4}, Ljava/io/InputStream;->read([B)I

    move-result p3

    if-lez p3, :cond_2

    .line 424
    iget-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->outBuffer:[B

    invoke-virtual {p1, p4, v4, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    .line 425
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    int-to-long p3, p3

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    goto :goto_2

    :cond_2
    return-void

    .line 402
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "SimpleBlock timecode overflow."

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeFloat(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 384
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 385
    invoke-direct {p0, p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    return-void
.end method

.method private writeInt(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 394
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 395
    invoke-direct {p0, p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    return-void
.end method

.method private writeLong(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 378
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 379
    array-length p3, p2

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    invoke-virtual {p1, p2, v0, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    .line 380
    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    array-length p1, p2

    sub-int/2addr p1, v0

    int-to-long p1, p1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    return-void
.end method

.method private writeShort(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 389
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 390
    invoke-direct {p0, p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 122
    invoke-direct/range {p0 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeEBML(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    .line 124
    iget-wide v0, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    const-wide/16 v13, 0x5

    add-long v9, v0, v13

    const-wide/16 v2, 0x5e

    add-long v7, v0, v2

    const-wide/16 v2, 0x3a

    add-long v5, v0, v2

    const-wide/16 v2, 0x4b

    add-long v3, v0, v2

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/4 v15, 0x4

    invoke-direct {v0, v15}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v1, 0xc

    .line 132
    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-wide v1, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    array-length v14, v14

    int-to-long v13, v14

    add-long/2addr v13, v1

    const/16 v1, 0x43

    .line 140
    new-array v1, v1, [B

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 155
    new-array v1, v1, [B

    fill-array-data v1, :array_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/32 v1, 0xf4240

    move-wide/from16 v17, v3

    const/4 v3, 0x1

    .line 158
    invoke-direct {v11, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->encode(JZ)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1b

    .line 159
    new-array v1, v1, [B

    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeTracks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 175
    invoke-direct {v11, v1, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-wide v1, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    .line 181
    new-array v0, v15, [B

    fill-array-data v0, :array_4

    invoke-direct {v11, v0, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    const v0, 0xfbfc

    :goto_1
    if-lez v0, :cond_1

    .line 184
    iget-object v4, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->outBuffer:[B

    array-length v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 185
    iget-object v15, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->outBuffer:[B

    const/4 v3, 0x0

    invoke-virtual {v12, v15, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    sub-int/2addr v0, v4

    move-wide/from16 v20, v1

    move v2, v0

    .line 187
    iget-wide v0, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    int-to-long v3, v4

    add-long/2addr v0, v3

    iput-wide v0, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    move v0, v2

    move-wide/from16 v1, v20

    const/4 v3, 0x1

    const/4 v15, 0x4

    goto :goto_1

    :cond_1
    move-wide/from16 v20, v1

    .line 191
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->selectTrackForCue()I

    move-result v15

    .line 192
    iget-object v0, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->infoTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    aget-object v0, v0, v15

    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    const-wide/16 v22, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move-wide/from16 v24, v22

    goto :goto_2

    :cond_2
    const-wide/16 v24, 0x0

    .line 193
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v0, 0x20

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 196
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v19, v3

    move-object/from16 v28, v4

    const-wide/16 v3, 0x0

    .line 201
    invoke-direct {v11, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeTimecode(J)[B

    move-result-object v26

    .line 203
    iget-wide v2, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    long-to-int v3, v2

    const-wide/16 v31, 0x0

    move-object/from16 v0, p0

    move-object v4, v1

    move-wide/from16 v33, v20

    move-object/from16 v1, p1

    const/16 v20, 0x1

    move-object/from16 v2, v26

    move/from16 v37, v3

    move-object v12, v4

    move-wide/from16 v35, v17

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    move-wide/from16 v3, v31

    move-wide/from16 v38, v5

    move-object/from16 v5, v19

    move-object/from16 v6, v28

    .line 204
    invoke-direct/range {v0 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeCluster(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[BJLjava/util/ArrayList;Ljava/util/ArrayList;)J

    move-result-wide v0

    const v2, 0x7fffffff

    move-wide v3, v0

    move-wide/from16 v29, v16

    move-wide/from16 v31, v22

    move-wide/from16 v0, v24

    move-object/from16 v27, v26

    const/4 v5, -0x1

    const/16 v21, 0x0

    move/from16 v26, v15

    move-wide/from16 v24, v29

    :goto_3
    const-wide/16 v40, 0x7

    if-lez v2, :cond_10

    move-wide/from16 v42, v31

    move-wide/from16 v31, v29

    move-wide/from16 v29, v0

    move v0, v5

    move/from16 v1, v26

    const/4 v5, 0x0

    const/16 v26, 0x0

    .line 217
    :goto_4
    iget-object v2, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    array-length v2, v2

    if-ge v5, v2, :cond_f

    .line 218
    invoke-direct {v11, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->getNextBlockFrom(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;

    move-result-object v2

    if-nez v2, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 224
    :cond_3
    iget-object v6, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->data:Ljava/io/InputStream;

    if-nez v6, :cond_4

    add-int/lit8 v0, v5, 0x1

    const/16 v26, 0x1

    move/from16 v64, v5

    move v5, v0

    move/from16 v0, v64

    goto :goto_4

    :cond_4
    const-wide/16 v45, 0x64

    if-ne v0, v5, :cond_5

    .line 234
    iget-wide v0, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    add-long v42, v0, v45

    .line 236
    invoke-direct {v11, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeTimecode(J)[B

    move-result-object v27

    move-wide/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v6, v2

    move-object/from16 v2, v27

    move-object/from16 v47, v12

    move v12, v5

    move-object/from16 v5, v19

    move-wide/from16 v48, v9

    const/4 v10, -0x1

    move-object v9, v6

    move-object/from16 v6, v28

    .line 237
    invoke-direct/range {v0 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeCluster(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[BJLjava/util/ArrayList;Ljava/util/ArrayList;)J

    move-result-wide v3

    move v6, v12

    const/16 v27, -0x1

    goto :goto_5

    :cond_5
    move-wide/from16 v48, v9

    move-object/from16 v47, v12

    const/4 v10, -0x1

    move-object v9, v2

    move v12, v5

    move v6, v1

    move-object/from16 v2, v27

    move/from16 v27, v0

    :goto_5
    move-wide/from16 v64, v3

    move-wide/from16 v4, v31

    move-wide/from16 v31, v64

    if-ne v15, v12, :cond_a

    cmp-long v0, v29, v22

    if-lez v0, :cond_6

    .line 241
    iget-wide v10, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    cmp-long v1, v10, v29

    if-gez v1, :cond_7

    :cond_6
    cmp-long v1, v29, v16

    if-gez v1, :cond_9

    invoke-virtual {v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->isKeyframe()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_7
    if-lez v0, :cond_8

    const-wide/16 v0, 0x1388

    add-long v29, v29, v0

    .line 245
    :cond_8
    new-instance v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;

    sub-long v50, v31, v40

    move-object/from16 v10, p0

    iget-wide v0, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    array-length v3, v2

    move-wide/from16 v52, v7

    move v8, v6

    iget-wide v6, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    move-wide/from16 v54, v0

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v57, v2

    move/from16 v56, v3

    move-wide v2, v13

    move-wide/from16 v58, v13

    move-wide v13, v4

    move-wide/from16 v4, v50

    move-wide/from16 v50, v6

    move-wide/from16 v60, v52

    move-wide/from16 v6, v54

    move/from16 v52, v15

    move v15, v8

    move/from16 v8, v56

    move/from16 v53, v12

    move/from16 v44, v15

    move-wide/from16 v62, v48

    move-object v15, v9

    move-object v12, v10

    move-wide/from16 v9, v50

    invoke-direct/range {v0 .. v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;JJJIJ)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v57, v2

    move/from16 v44, v6

    move-wide/from16 v60, v7

    move/from16 v53, v12

    move-wide/from16 v58, v13

    move/from16 v52, v15

    move-object/from16 v0, v47

    move-wide/from16 v62, v48

    move-object/from16 v12, p0

    move-wide v13, v4

    move-object v15, v9

    goto :goto_6

    :cond_a
    move-object/from16 v57, v2

    move/from16 v44, v6

    move-wide/from16 v60, v7

    move/from16 v53, v12

    move-wide/from16 v58, v13

    move/from16 v52, v15

    move-object/from16 v0, v47

    move-wide/from16 v62, v48

    move-wide v13, v4

    move-object v15, v9

    move-object v12, v11

    :goto_6
    move-object/from16 v7, p1

    move-object v8, v0

    .line 251
    invoke-direct {v12, v7, v15, v13, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->writeBlock(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;J)V

    add-int/lit8 v26, v26, 0x1

    .line 254
    iget-wide v0, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    cmp-long v2, v0, v24

    if-lez v2, :cond_b

    .line 256
    iget v2, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->trackNumber:I

    move-wide/from16 v24, v0

    move/from16 v21, v2

    :cond_b
    cmp-long v0, v42, v16

    if-gez v0, :cond_c

    .line 260
    iget-wide v0, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    add-long v42, v0, v45

    move-object v11, v12

    move/from16 v0, v27

    move-wide/from16 v3, v31

    move/from16 v1, v44

    move/from16 v15, v52

    move/from16 v5, v53

    :goto_7
    move-object/from16 v27, v57

    move-wide/from16 v9, v62

    move-object v12, v8

    move-wide/from16 v31, v13

    move-wide/from16 v13, v58

    move-wide/from16 v7, v60

    goto/16 :goto_4

    .line 264
    :cond_c
    iget-wide v0, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$Block;->absoluteTimecode:J

    cmp-long v2, v0, v42

    if-ltz v2, :cond_e

    move/from16 v2, v44

    move/from16 v5, v53

    if-eq v2, v5, :cond_d

    sub-long v0, v0, v42

    sub-long v45, v45, v0

    add-long v42, v42, v45

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    move/from16 v2, v44

    move/from16 v5, v53

    :goto_8
    move v1, v2

    move-object v11, v12

    move/from16 v0, v27

    move-wide/from16 v3, v31

    move/from16 v15, v52

    goto :goto_7

    :cond_f
    move-wide/from16 v60, v7

    move-object/from16 v7, p1

    move v5, v0

    move/from16 v2, v26

    move-wide/from16 v7, v60

    move/from16 v26, v1

    move-wide/from16 v0, v29

    move-wide/from16 v29, v31

    move-wide/from16 v31, v42

    goto/16 :goto_3

    :cond_10
    move-wide/from16 v60, v7

    move-wide/from16 v62, v9

    move-object v8, v12

    move-wide/from16 v58, v13

    move/from16 v52, v15

    move-object/from16 v7, p1

    move-object v12, v11

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, v28

    .line 273
    invoke-direct/range {v0 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeCluster(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[BJLjava/util/ArrayList;Ljava/util/ArrayList;)J

    .line 275
    iget-wide v0, v12, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    move-wide/from16 v2, v62

    sub-long/2addr v0, v2

    sub-long v0, v0, v40

    .line 278
    invoke-direct {v12, v7, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    .line 279
    invoke-direct {v12, v7, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->writeLong(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    .line 281
    iget-object v0, v12, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->predefinedDurations:[I

    aget v1, v0, v21

    const/4 v2, -0x1

    if-le v1, v2, :cond_11

    .line 282
    aget v0, v0, v21

    int-to-long v0, v0

    add-long v24, v24, v0

    :cond_11
    move-wide/from16 v2, v24

    move-wide/from16 v0, v60

    .line 284
    invoke-direct {v12, v7, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    long-to-float v0, v2

    .line 285
    invoke-direct {v12, v7, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->writeFloat(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;F)V

    move/from16 v0, v37

    int-to-long v0, v0

    sub-long v0, v0, v58

    long-to-int v1, v0

    move-wide/from16 v2, v38

    .line 288
    invoke-direct {v12, v7, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    .line 289
    invoke-direct {v12, v7, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->writeInt(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;I)V

    move-wide/from16 v2, v33

    .line 291
    invoke-direct {v12, v7, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    const/4 v0, 0x7

    .line 294
    new-array v0, v0, [B

    fill-array-data v0, :array_5

    invoke-direct {v12, v0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    .line 296
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;

    move/from16 v5, v52

    .line 297
    invoke-direct {v12, v5, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->makeCuePoint(ILcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter$KeyFrame;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 298
    invoke-direct {v12, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    .line 299
    iget-wide v8, v12, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    const-wide/32 v10, 0xffff

    add-long/2addr v10, v2

    const-wide/16 v13, 0x10

    sub-long/2addr v10, v13

    cmp-long v6, v8, v10

    if-gez v6, :cond_12

    goto :goto_a

    .line 300
    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many Cues"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    move/from16 v52, v5

    goto :goto_9

    .line 304
    :cond_14
    iget-wide v4, v12, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    sub-long/2addr v4, v2

    sub-long v4, v4, v40

    long-to-int v0, v4

    int-to-short v0, v0

    const/4 v4, 0x4

    .line 307
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    const/16 v4, -0x13e0

    .line 308
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    int-to-long v8, v1

    .line 309
    iget-wide v10, v12, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->written:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x4

    sub-long/2addr v8, v10

    long-to-int v1, v8

    int-to-short v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v12, v1, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    move-wide/from16 v4, v35

    .line 312
    invoke-direct {v12, v7, v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    sub-long v4, v2, v58

    long-to-int v1, v4

    .line 313
    invoke-direct {v12, v7, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->writeInt(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;I)V

    const-wide/16 v4, 0x5

    add-long v1, v2, v4

    .line 315
    invoke-direct {v12, v7, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    .line 316
    invoke-direct {v12, v7, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->writeShort(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;S)V

    const/4 v0, 0x0

    .line 318
    :goto_b
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    move-object/from16 v1, v19

    .line 319
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v12, v7, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->seekTo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    const/4 v2, 0x4

    .line 320
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object/from16 v4, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 321
    invoke-direct {v12, v3, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->dump([BLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_15
    return-void

    :cond_16
    move-object v12, v11

    .line 119
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The output stream must be allow seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x18t
        0x53t
        -0x80t
        0x67t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x11t
        0x4dt
        -0x65t
        0x74t
        -0x42t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x15t
        0x49t
        -0x57t
        0x66t
        0x53t
        -0x54t
        -0x7ft
        0x43t
        0x4dt
        -0x45t
        -0x75t
        0x53t
        -0x55t
        -0x7ct
        0x16t
        0x54t
        -0x52t
        0x6bt
        0x53t
        -0x54t
        -0x7ft
        0x6at
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ft
        0x43t
        -0x4at
        0x75t
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        -0x45t
        -0x72t
        0x53t
        -0x55t
        -0x7ct
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x53t
        -0x54t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x15t
        0x49t
        -0x57t
        0x66t
        -0x5et
        0x2at
        -0x29t
        -0x4ft
    .end array-data

    :array_3
    .array-data 1
        0x44t
        -0x77t
        -0x7ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x4dt
        -0x80t
        -0x79t
        0x4et
        0x65t
        0x77t
        0x50t
        0x69t
        0x70t
        0x65t
        0x57t
        0x41t
        -0x79t
        0x4et
        0x65t
        0x77t
        0x50t
        0x69t
        0x70t
        0x65t
    .end array-data

    :array_4
    .array-data 1
        -0x14t
        0x20t
        -0x1t
        -0x5t
    .end array-data

    :array_5
    .array-data 1
        0x1ct
        0x53t
        -0x45t
        0x6bt
        0x20t
        0x0t
        0x0t
    .end array-data
.end method

.method public getTracksFromSource(I)[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->done:Z

    if-nez v0, :cond_1

    .line 51
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->parsed:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->getAvailableTracks()[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "All sources must be parsed first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseSources()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 59
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->done:Z

    if-nez v0, :cond_2

    .line 62
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->parsed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    aput-object v3, v2, v0

    .line 69
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->parsed:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->parsed:Z

    .line 74
    throw v0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already done"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs selectTracks([I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    array-length v1, v1

    new-array v1, v1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    .line 80
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    array-length v1, v1

    new-array v1, v1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersCluter:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    .line 81
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->predefinedDurations:[I

    const/4 v1, 0x0

    .line 83
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->infoTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    aget-object v3, v3, v1

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->selectTrack(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    move-result-object v3

    aput-object v3, v2, v1

    .line 85
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->predefinedDurations:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 86
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readersSegment:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->getNextSegment()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->parsed:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMWriter;->parsed:Z

    .line 90
    throw p1
.end method
