.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;
.super Ljava/lang/Object;
.source "Mp4FromDashWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;
    }
.end annotation


# instance fields
.field private auxBuffer:Ljava/nio/ByteBuffer;

.field private done:Z

.field private lastWriteOffset:J

.field private moovSimulation:Z

.field private outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

.field private overrideMainBrand:I

.field private parsed:Z

.field private readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

.field private readersChunks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

.field private sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

.field private final time:J

.field private tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

.field private writeOffset:J


# direct methods
.method public varargs constructor <init>([Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 25
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->moovSimulation:Z

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->done:Z

    .line 31
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->parsed:Z

    .line 39
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->overrideMainBrand:I

    .line 42
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p1, v0

    .line 43
    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canRewind()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "All sources must be readable and allow rewind"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_2
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    .line 49
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    array-length p1, p1

    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    .line 50
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length p1, p1

    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readersChunks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x7c25b080

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->time:J

    return-void
.end method

.method private auxOffset()I
    .locals 2

    .line 555
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    :goto_0
    return v1
.end method

.method private auxSeek(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_0

    int-to-long v0, p1

    .line 536
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    int-to-long v0, p1

    .line 538
    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outSeek(J)V

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method private auxSkip(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_0

    .line 546
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    int-to-long v0, p1

    .line 548
    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outSkip(J)V

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method private auxWrite(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 518
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 519
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 520
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 518
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    return-void
.end method

.method private auxWrite([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 525
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v0, :cond_0

    .line 526
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 528
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outWrite([BII)V

    goto :goto_0

    .line 530
    :cond_1
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_0
    return-void
.end method

.method private getNextSample(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readersChunks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    aget-object v1, v1, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->getNextChunk(Z)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    move-result-object v1

    aput-object v1, v0, p1

    .line 387
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readersChunks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    return-object v2

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readersChunks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->getNextSample()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;

    move-result-object v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readersChunks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    aput-object v2, v0, p1

    .line 395
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->getNextSample(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private lengthFor(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 475
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v0

    sub-int/2addr v0, p1

    .line 477
    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->moovSimulation:Z

    if-eqz v1, :cond_0

    return v0

    .line 481
    :cond_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxSeek(I)V

    .line 482
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite(I)V

    add-int/lit8 p1, v0, -0x4

    .line 483
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxSkip(I)V

    return v0
.end method

.method private make(IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    mul-int p3, p3, p4

    mul-int/lit8 p3, p3, 0x4

    add-int/lit8 v0, p3, 0x10

    .line 492
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v1

    if-ltz p2, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    const/16 v2, 0xc

    .line 498
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 499
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 500
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v0, 0x0

    .line 501
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 502
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 498
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    if-ltz p2, :cond_1

    add-int/lit8 v1, v1, 0x4

    .line 508
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite(I)V

    .line 511
    :cond_1
    invoke-direct {p0, p4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite(I)V

    .line 512
    invoke-direct {p0, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxSkip(I)V

    add-int/lit8 v1, v1, 0x10

    return v1
.end method

.method private make_ftyp()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1c

    .line 561
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 568
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->overrideMainBrand:I

    if-eqz v1, :cond_0

    .line 569
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x8

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->overrideMainBrand:I

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 571
    :cond_0
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outWrite([B)V

    .line 573
    array-length v0, v0

    return v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
        0x0t
        0x0t
        0x2t
        0x0t
        0x6dt
        0x70t
        0x34t
        0x31t
        0x69t
        0x73t
        0x6ft
        0x6dt
        0x69t
        0x73t
        0x6ft
        0x32t
    .end array-data
.end method

.method private make_hdlr(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;)[B
    .locals 2

    const/16 v0, 0x77

    .line 771
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0xc

    .line 784
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 785
    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->type:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 786
    iget v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->subType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 787
    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->bReserved:[B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 789
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x77t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x53t
        0x4ft
        0x20t
        0x4dt
        0x65t
        0x64t
        0x69t
        0x61t
        0x20t
        0x66t
        0x69t
        0x6ct
        0x65t
        0x20t
        0x63t
        0x72t
        0x65t
        0x61t
        0x74t
        0x65t
        0x64t
        0x20t
        0x69t
        0x6et
        0x20t
        0x4et
        0x65t
        0x77t
        0x50t
        0x69t
        0x70t
        0x65t
        0x20t
        0x28t
        0x41t
        0x20t
        0x6ct
        0x69t
        0x62t
        0x72t
        0x65t
        0x20t
        0x6ct
        0x69t
        0x67t
        0x68t
        0x74t
        0x77t
        0x65t
        0x69t
        0x67t
        0x68t
        0x74t
        0x20t
        0x73t
        0x74t
        0x72t
        0x65t
        0x61t
        0x6dt
        0x69t
        0x6et
        0x67t
        0x20t
        0x66t
        0x72t
        0x6ft
        0x6et
        0x74t
        0x65t
        0x6et
        0x64t
        0x20t
        0x66t
        0x6ft
        0x72t
        0x20t
        0x41t
        0x6et
        0x64t
        0x72t
        0x6ft
        0x69t
        0x64t
        0x29t
        0x2et
    .end array-data
.end method

.method private make_mdat(JZ)[B
    .locals 2

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x10

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x8

    :goto_0
    add-long/2addr p1, v0

    if-eqz p3, :cond_1

    const/16 v0, 0x10

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 583
    :goto_1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    long-to-int v1, p1

    .line 584
    :goto_2
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x6d646174

    .line 585
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz p3, :cond_3

    .line 588
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 591
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1
.end method

.method private make_mdia(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 723
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v3

    const/16 v4, 0x8

    .line 724
    new-array v5, v4, [B

    fill-array-data v5, :array_0

    invoke-direct {v0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 725
    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->mdhd:[B

    invoke-direct {v0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 726
    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->hdlr:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;

    invoke-direct {v0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_hdlr(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;)[B

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v5

    .line 729
    new-array v6, v4, [B

    fill-array-data v6, :array_1

    invoke-direct {v0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 730
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->minf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;

    iget-object v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;->$mhd:[B

    invoke-direct {v0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 731
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->minf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;

    iget-object v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;->dinf:[B

    invoke-direct {v0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 733
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v6

    .line 734
    new-array v4, v4, [B

    fill-array-data v4, :array_2

    invoke-direct {v0, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 735
    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->minf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;->stbl_stsd:[B

    invoke-direct {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 741
    iget-boolean v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->moovSimulation:Z

    const v7, 0x7374636f

    const v8, 0x63747473

    const v9, 0x7374737a

    const/4 v10, 0x3

    const v11, 0x73747363

    const v12, 0x73747373

    const v13, 0x73747473

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    .line 742
    invoke-direct {v0, v13, v4, v14, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    .line 743
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v1, :cond_0

    .line 744
    invoke-direct {v0, v12, v4, v15, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    .line 746
    :cond_0
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v1, :cond_1

    .line 747
    invoke-direct {v0, v8, v4, v14, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    .line 749
    :cond_1
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    invoke-direct {v0, v11, v4, v10, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    .line 750
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz_default:I

    iget v8, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v9, v1, v15, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    if-eqz p3, :cond_2

    const v7, 0x636f3634

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v14, 0x1

    .line 751
    :goto_0
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    invoke-direct {v0, v7, v4, v14, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    goto :goto_2

    .line 753
    :cond_4
    invoke-direct {v0, v13, v4, v14, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    .line 754
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v1, :cond_5

    .line 755
    invoke-direct {v0, v12, v4, v15, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 757
    :cond_5
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v1, :cond_6

    .line 758
    invoke-direct {v0, v8, v4, v14, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 760
    :cond_6
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    invoke-direct {v0, v11, v4, v10, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 761
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz_default:I

    iget v8, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v9, v1, v15, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-eqz p3, :cond_7

    const v7, 0x636f3634

    :cond_7
    if-eqz p3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v14, 0x1

    .line 762
    :goto_1
    iget v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    invoke-direct {v0, v7, v4, v14, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make(IIII)I

    move-result v1

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 765
    :goto_2
    invoke-direct {v0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 766
    invoke-direct {v0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lengthFor(I)I

    .line 767
    invoke-direct {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lengthFor(I)I

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x64t
        0x69t
        0x61t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x69t
        0x6et
        0x66t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x74t
        0x62t
        0x6ct
    .end array-data
.end method

.method private make_moov([I[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;Z)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 622
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxOffset()I

    move-result v7

    const/16 v0, 0x8

    .line 624
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 629
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    array-length v0, v0

    new-array v8, v0, [J

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    .line 631
    :goto_0
    array-length v4, v8

    if-ge v1, v4, :cond_1

    .line 632
    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v5, v4, v1

    iget-object v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget-wide v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->duration:J

    long-to-double v5, v5

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->mdia:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;

    iget v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->mdhd_timeScale:I

    int-to-double v9, v4

    div-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double v5, v5, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-long v4, v4

    aput-wide v4, v8, v1

    .line 636
    aget-wide v4, v8, v1

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 637
    aget-wide v2, v8, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_mvhd(J)V

    const/4 v9, 0x0

    .line 643
    :goto_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    array-length v1, v0

    if-ge v9, v1, :cond_3

    .line 644
    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->matrix:[B

    array-length v0, v0

    const/16 v1, 0x24

    if-ne v0, v1, :cond_2

    .line 647
    aget-wide v2, v8, v9

    aget v4, p1, v9

    aget-object v5, p2, v9

    move-object v0, p0

    move v1, v9

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_trak(IJILcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 645
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad track matrix length (expected 36) in track n\u00b0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x5c

    .line 651
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 661
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lengthFor(I)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x6ft
        0x6ft
        0x76t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x5ct
        0x75t
        0x64t
        0x74t
        0x61t
        0x0t
        0x0t
        0x0t
        0x54t
        0x6dt
        0x65t
        0x74t
        0x61t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x21t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x64t
        0x69t
        0x72t
        0x61t
        0x70t
        0x70t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x27t
        0x69t
        0x6ct
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x1ft
        -0x57t
        0x74t
        0x6ft
        0x6ft
        0x0t
        0x0t
        0x0t
        0x17t
        0x64t
        0x61t
        0x74t
        0x61t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4et
        0x65t
        0x77t
        0x50t
        0x69t
        0x70t
        0x65t
    .end array-data
.end method

.method private make_mvhd(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 595
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x1c

    .line 598
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->time:J

    .line 599
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->time:J

    .line 600
    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 601
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 602
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 603
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 598
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 p1, 0x34

    .line 606
    new-array p1, p1, [B

    fill-array-data p1, :array_1

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 p1, 0x18

    .line 614
    new-array p1, p1, [B

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/4 p1, 0x4

    .line 615
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    array-length p2, p2

    add-int/lit8 p2, p2, 0x1

    .line 616
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 617
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 615
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x78t
        0x6dt
        0x76t
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private make_trak(IJILcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 665
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxOffset()I

    move-result p4

    const/16 v0, 0x14

    .line 667
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x30

    .line 672
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 673
    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 674
    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    .line 675
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    .line 676
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 677
    invoke-virtual {v0, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const/16 v2, 0x28

    .line 678
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 679
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bLayer:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 680
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 681
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget-short v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bVolume:S

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 682
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 684
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->matrix:[B

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    const/16 v0, 0x8

    .line 685
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bWidth:I

    .line 686
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bHeight:I

    .line 687
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 688
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 685
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 691
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 699
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->edst_elst:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x10000

    goto :goto_0

    .line 704
    :cond_0
    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->edst_elst:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;

    iget-wide v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;->MediaTime:J

    long-to-int v2, v1

    .line 705
    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->edst_elst:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;

    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;->bMediaRate:I

    move v0, v2

    :goto_0
    const/16 v2, 0xc

    .line 709
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    long-to-int p3, p2

    .line 710
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 711
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 712
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 713
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    .line 708
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    .line 716
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object p1, p2, p1

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->mdia:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;

    invoke-direct {p0, p1, p5, p6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_mdia(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;Z)V

    .line 718
    invoke-direct {p0, p4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lengthFor(I)I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x74t
        0x72t
        0x61t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x68t
        0x74t
        0x6bt
        0x68t
        0x64t
        0x1t
        0x0t
        0x0t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x24t
        0x65t
        0x64t
        0x74t
        0x73t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x65t
        0x6ct
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private outBackup()V
    .locals 5

    .line 429
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 430
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lastWriteOffset:J

    :cond_0
    return-void
.end method

.method private outRestore()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lastWriteOffset:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 440
    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outSeek(J)V

    const-wide/16 v0, -0x1

    .line 441
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->lastWriteOffset:J

    :cond_0
    return-void
.end method

.method private outSeek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canSeek()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    .line 459
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    goto :goto_0

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->rewind()V

    const-wide/16 v0, 0x0

    .line 462
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    .line 463
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outSkip(J)V

    :goto_0
    return-void

    .line 465
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "cannot seek or rewind the output stream"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private outSkip(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->skip(J)J

    .line 471
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    return-void
.end method

.method private outWrite([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outWrite([BII)V

    return-void
.end method

.method private outWrite([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    .line 453
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    return-void
.end method

.method private writeEntry64(IJ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outBackup()V

    .line 405
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxSeek(I)V

    const/16 v0, 0x8

    .line 406
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/2addr p1, v0

    return p1
.end method

.method private varargs writeEntryArray(II[I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outBackup()V

    .line 414
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxSeek(I)V

    mul-int/lit8 v0, p2, 0x4

    .line 417
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 420
    aget v3, p3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxWrite([B)V

    add-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public build(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 130
    iget-boolean v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->done:Z

    if-nez v1, :cond_27

    .line 133
    invoke-virtual/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_26

    move-object/from16 v1, p1

    .line 141
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    .line 144
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v2, v1

    new-array v2, v2, [I

    .line 145
    array-length v3, v1

    new-array v3, v3, [I

    .line 146
    array-length v4, v1

    new-array v4, v4, [I

    .line 147
    array-length v1, v1

    new-array v1, v1, [I

    .line 149
    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    array-length v5, v5

    new-array v5, v5, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;

    const/4 v7, 0x0

    .line 150
    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_0

    .line 151
    new-instance v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;

    invoke-direct {v8, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;)V

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    const/16 v11, 0x8

    const-wide/16 v12, 0x0

    .line 155
    :goto_1
    iget-object v14, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v14, v14

    const/4 v15, 0x1

    if-ge v10, v14, :cond_d

    move-wide/from16 v18, v12

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    .line 161
    :cond_1
    iget-object v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    aget-object v9, v9, v10

    invoke-virtual {v9, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->getNextChunk(Z)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 163
    aget v6, v3, v10

    if-ge v6, v15, :cond_2

    iget-object v6, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    if-lez v6, :cond_2

    .line 164
    aput v6, v3, v10

    .line 167
    :cond_2
    iget-object v6, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkSize:I

    add-int/2addr v11, v7

    .line 168
    aget v7, v2, v10

    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkDuration:I

    add-int/2addr v7, v6

    aput v7, v2, v10

    .line 171
    :goto_2
    invoke-virtual {v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->getNextSampleInfo()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 172
    iget-boolean v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    if-eqz v7, :cond_3

    .line 173
    aget-object v7, v5, v10

    iget v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    add-int/2addr v8, v15

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 176
    :cond_3
    iget v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    aget v8, v4, v10

    if-le v7, v8, :cond_4

    .line 177
    aput v7, v4, v10

    .line 180
    :cond_4
    aget-object v7, v5, v10

    iget v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    add-int/2addr v8, v15

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 181
    iget v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    if-eq v13, v7, :cond_5

    add-int/lit8 v12, v12, 0x1

    move v13, v7

    .line 186
    :cond_5
    iget-boolean v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->hasCompositionTimeOffset:Z

    if-eqz v7, :cond_6

    .line 187
    iget v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    if-eq v7, v14, :cond_6

    .line 188
    aget-object v8, v5, v10

    iget v14, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    add-int/2addr v14, v15

    iput v14, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move v14, v7

    .line 193
    :cond_6
    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    int-to-long v6, v6

    add-long v18, v18, v6

    goto :goto_2

    .line 197
    :cond_7
    aget v6, v3, v10

    if-ge v6, v15, :cond_8

    .line 198
    aget v6, v4, v10

    aput v6, v3, v10

    .line 201
    :cond_8
    iget-object v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->rewind()V

    .line 203
    aget-object v6, v5, v10

    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    .line 204
    aget-object v8, v5, v10

    div-int/lit8 v9, v6, 0x6

    add-int/2addr v9, v15

    iput v9, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    const/4 v8, 0x6

    .line 206
    rem-int/2addr v6, v8

    if-nez v6, :cond_9

    .line 208
    aget-object v6, v5, v10

    iput v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 209
    aget-object v6, v5, v10

    new-array v7, v8, [I

    fill-array-data v7, :array_0

    iput-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc_bEntries:[I

    const/16 v6, 0x8

    goto :goto_3

    .line 214
    :cond_9
    aget-object v7, v5, v10

    const/4 v8, 0x3

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    .line 215
    aget-object v7, v5, v10

    const/16 v9, 0x9

    new-array v9, v9, [I

    const/4 v14, 0x0

    aput v15, v9, v14

    const/4 v14, 0x2

    aput v14, v9, v15

    aput v15, v9, v14

    aput v14, v9, v8

    const/4 v8, 0x4

    const/4 v14, 0x6

    aput v14, v9, v8

    const/4 v8, 0x5

    aput v15, v9, v8

    aget-object v8, v5, v10

    iget v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    add-int/2addr v8, v15

    aput v8, v9, v14

    const/4 v8, 0x7

    aput v6, v9, v8

    const/16 v6, 0x8

    aput v15, v9, v6

    iput-object v9, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc_bEntries:[I

    .line 220
    aget-object v7, v5, v10

    iget v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    add-int/2addr v8, v15

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 223
    :goto_3
    aget-object v7, v5, v10

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    aput v7, v1, v10

    if-ne v12, v15, :cond_a

    .line 226
    aget-object v7, v5, v10

    const/4 v8, 0x0

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    .line 227
    aget-object v7, v5, v10

    iput v13, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz_default:I

    goto :goto_4

    :cond_a
    const/4 v8, 0x0

    .line 229
    aget-object v7, v5, v10

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz_default:I

    .line 232
    :goto_4
    aget-object v7, v5, v10

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    aget-object v8, v5, v10

    iget v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-ne v7, v8, :cond_b

    .line 233
    aget-object v7, v5, v10

    const/4 v8, -0x1

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    .line 237
    :cond_b
    iget-object v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v8, v7, v10

    iget-object v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget-wide v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->duration:J

    const-wide/16 v12, 0x1

    cmp-long v14, v8, v12

    if-gez v14, :cond_c

    .line 238
    aget-object v7, v7, v10

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    aget v8, v2, v10

    int-to-long v8, v8

    iput-wide v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->duration:J

    :cond_c
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v12, v18

    goto/16 :goto_1

    :cond_d
    int-to-long v6, v11

    const-wide v8, 0xfffeffffL

    cmp-long v10, v6, v8

    if-lez v10, :cond_e

    const/4 v6, 0x1

    goto :goto_5

    :cond_e
    const/4 v6, 0x0

    .line 246
    :goto_5
    invoke-direct {v0, v3, v5, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_moov([I[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;Z)I

    move-result v7

    const/high16 v8, 0x240000

    if-ge v7, v8, :cond_f

    .line 249
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    :cond_f
    const/4 v8, 0x0

    .line 252
    iput-boolean v8, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->moovSimulation:Z

    const-wide/16 v9, 0x0

    .line 253
    iput-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    .line 255
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_ftyp()I

    move-result v9

    if-lez v7, :cond_10

    const/16 v10, 0x2000

    .line 265
    new-array v10, v10, [B

    :goto_6
    if-lez v7, :cond_10

    .line 267
    array-length v11, v10

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 268
    invoke-direct {v0, v10, v8, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outWrite([BII)V

    sub-int/2addr v7, v11

    const/4 v8, 0x0

    goto :goto_6

    .line 273
    :cond_10
    iget-object v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v7, :cond_11

    int-to-long v7, v9

    .line 274
    invoke-direct {v0, v7, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 279
    :cond_11
    invoke-direct {v0, v3, v5, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_moov([I[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;Z)I

    const/4 v3, 0x0

    .line 283
    :goto_7
    iget-object v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v7, v7

    const/4 v8, 0x0

    if-ge v3, v7, :cond_13

    .line 284
    aget-object v7, v5, v3

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stts:I

    const/4 v10, 0x2

    new-array v11, v10, [I

    aget v14, v1, v3

    const/16 v16, 0x0

    aput v14, v11, v16

    aget v14, v4, v3

    aput v14, v11, v15

    invoke-direct {v0, v7, v10, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 285
    aget-object v7, v5, v3

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc:I

    aget-object v10, v5, v3

    iget-object v10, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc_bEntries:[I

    array-length v10, v10

    aget-object v11, v5, v3

    iget-object v11, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc_bEntries:[I

    invoke-direct {v0, v7, v10, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    .line 286
    aget-object v7, v5, v3

    iput-object v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsc_bEntries:[I

    .line 287
    aget-object v7, v5, v3

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v7, :cond_12

    .line 288
    aput v15, v1, v3

    const/4 v7, -0x1

    .line 289
    aput v7, v2, v3

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 293
    :cond_13
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_14

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outRestore()V

    .line 297
    :cond_14
    invoke-direct {v0, v12, v13, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->make_mdat(JZ)[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outWrite([B)V

    .line 299
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v4, v3

    new-array v4, v4, [I

    const/4 v7, 0x6

    .line 300
    new-array v10, v7, [I

    .line 301
    new-array v11, v7, [I

    .line 303
    array-length v3, v3

    :goto_8
    if-lez v3, :cond_24

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 307
    :goto_9
    iget-object v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v13, v13

    if-ge v3, v13, :cond_23

    .line 308
    aget v13, v4, v3

    if-gez v13, :cond_16

    move/from16 v18, v9

    :cond_15
    const/4 v9, 0x1

    goto/16 :goto_12

    .line 312
    :cond_16
    iget-wide v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeOffset:J

    .line 314
    aget v16, v4, v3

    if-nez v16, :cond_17

    const/4 v7, 0x2

    :cond_17
    const/4 v8, 0x0

    const/16 v23, 0x0

    :goto_a
    if-ge v8, v7, :cond_1f

    .line 318
    invoke-direct {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->getNextSample(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;

    move-result-object v15

    if-nez v15, :cond_19

    .line 321
    aget-object v7, v5, v3

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v7, :cond_18

    aget v7, v2, v3

    if-ltz v7, :cond_18

    .line 322
    aget-object v7, v5, v3

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move/from16 v18, v9

    const/4 v15, 0x2

    new-array v9, v15, [I

    aget v15, v1, v3

    const/16 v19, 0x0

    aput v15, v9, v19

    aget v15, v2, v3

    move-wide/from16 v19, v13

    const/4 v13, 0x1

    aput v15, v9, v13

    invoke-direct {v0, v7, v13, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    goto :goto_b

    :cond_18
    move/from16 v18, v9

    move-wide/from16 v19, v13

    const/4 v13, 0x1

    :goto_b
    const/4 v9, -0x1

    .line 324
    aput v9, v4, v3

    goto/16 :goto_10

    :cond_19
    move/from16 v18, v9

    move-wide/from16 v19, v13

    const/4 v9, -0x1

    const/4 v13, 0x1

    .line 328
    aget v14, v4, v3

    add-int/2addr v14, v13

    aput v14, v4, v3

    .line 330
    aget-object v14, v5, v3

    iget v14, v14, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    if-lez v14, :cond_1c

    .line 331
    iget-object v14, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    iget v14, v14, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    aget v9, v2, v3

    if-ne v14, v9, :cond_1a

    .line 332
    aget v9, v1, v3

    add-int/2addr v9, v13

    aput v9, v1, v3

    goto :goto_d

    .line 334
    :cond_1a
    aget v9, v2, v3

    if-ltz v9, :cond_1b

    .line 335
    aget-object v9, v5, v3

    aget-object v13, v5, v3

    iget v13, v13, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    move/from16 v22, v7

    const/4 v14, 0x2

    new-array v7, v14, [I

    aget v24, v1, v3

    const/16 v21, 0x0

    aput v24, v7, v21

    aget v24, v2, v3

    const/16 v17, 0x1

    aput v24, v7, v17

    invoke-direct {v0, v13, v14, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v7

    iput v7, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->ctts:I

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outRestore()V

    goto :goto_c

    :cond_1b
    move/from16 v22, v7

    const/4 v14, 0x2

    const/16 v17, 0x1

    .line 338
    :goto_c
    aput v17, v1, v3

    .line 339
    iget-object v7, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    aput v7, v2, v3

    goto :goto_e

    :cond_1c
    :goto_d
    move/from16 v22, v7

    const/4 v14, 0x2

    .line 343
    :goto_e
    aget-object v7, v5, v3

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    if-lez v7, :cond_1d

    iget-object v7, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    iget-boolean v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->isKeyframe:Z

    if-eqz v7, :cond_1d

    move/from16 v7, v23

    add-int/lit8 v23, v7, 0x1

    .line 344
    aget v9, v4, v3

    aput v9, v11, v7

    goto :goto_f

    :cond_1d
    move/from16 v7, v23

    move/from16 v23, v7

    .line 347
    :goto_f
    aget-object v7, v5, v3

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-lez v7, :cond_1e

    .line 348
    iget-object v7, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->data:[B

    array-length v7, v7

    aput v7, v10, v8

    .line 351
    :cond_1e
    iget-object v7, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;->data:[B

    array-length v9, v7

    const/4 v13, 0x0

    invoke-direct {v0, v7, v13, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outWrite([BII)V

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v18

    move-wide/from16 v13, v19

    move/from16 v7, v22

    const/4 v15, 0x1

    goto/16 :goto_a

    :cond_1f
    move/from16 v18, v9

    move-wide/from16 v19, v13

    :goto_10
    move/from16 v7, v23

    const/4 v14, 0x2

    if-lez v8, :cond_15

    add-int/lit8 v12, v12, 0x1

    .line 357
    aget-object v9, v5, v3

    iget v9, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    if-lez v9, :cond_20

    .line 358
    aget-object v9, v5, v3

    aget-object v13, v5, v3

    iget v13, v13, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    invoke-direct {v0, v13, v8, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v8

    iput v8, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stsz:I

    :cond_20
    if-lez v7, :cond_21

    .line 362
    aget-object v8, v5, v3

    aget-object v9, v5, v3

    iget v9, v9, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    invoke-direct {v0, v9, v7, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v7

    iput v7, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stss:I

    :cond_21
    if-eqz v6, :cond_22

    .line 366
    aget-object v7, v5, v3

    aget-object v8, v5, v3

    iget v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    move-wide/from16 v14, v19

    invoke-direct {v0, v8, v14, v15}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntry64(IJ)I

    move-result v8

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    const/4 v9, 0x1

    goto :goto_11

    :cond_22
    move-wide/from16 v14, v19

    .line 368
    aget-object v7, v5, v3

    aget-object v8, v5, v3

    iget v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    const/4 v9, 0x1

    new-array v13, v9, [I

    long-to-int v15, v14

    const/4 v14, 0x0

    aput v15, v13, v14

    invoke-direct {v0, v8, v9, v13}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->writeEntryArray(II[I)I

    move-result v8

    iput v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter$TablesInfo;->stco:I

    .line 371
    :goto_11
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outRestore()V

    :goto_12
    add-int/lit8 v3, v3, 0x1

    move/from16 v9, v18

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v15, 0x1

    goto/16 :goto_9

    :cond_23
    move v3, v12

    goto/16 :goto_8

    :cond_24
    move/from16 v18, v9

    .line 376
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_25

    move/from16 v1, v18

    int-to-long v1, v1

    .line 378
    invoke-direct {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outSeek(J)V

    .line 379
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->outStream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    const/4 v1, 0x0

    .line 380
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->auxBuffer:Ljava/nio/ByteBuffer;

    :cond_25
    return-void

    .line 134
    :cond_26
    new-instance v1, Ljava/io/IOException;

    const-string v2, "the provided output is not writable"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_27
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "already done"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :array_0
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x6
        0x1
    .end array-data
.end method

.method public parseSources()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 63
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->done:Z

    if-nez v0, :cond_2

    .line 66
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->parsed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    .line 71
    :try_start_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->sourceTracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    aput-object v3, v2, v0

    .line 73
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->parsed:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->parsed:Z

    .line 78
    throw v0

    .line 67
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
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

    .line 82
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->done:Z

    if-nez v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v1, v1

    new-array v1, v1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    const/4 v1, 0x0

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->readers:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;

    aget-object v3, v3, v1

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->selectTrack(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->parsed:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->parsed:Z

    .line 96
    throw p1

    .line 86
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "tracks already selected"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "already done"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMainBrand(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4FromDashWriter;->overrideMainBrand:I

    return-void
.end method
