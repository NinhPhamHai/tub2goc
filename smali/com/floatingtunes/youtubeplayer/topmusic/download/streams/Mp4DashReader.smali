.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;
.super Ljava/lang/Object;
.source "Mp4DashReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashSample;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;
    }
.end annotation


# instance fields
.field private backupBox:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

.field private box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

.field private brands:[I

.field private chunkZero:Z

.field private moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

.field private selectedTrack:I

.field private final stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

.field private tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    .line 59
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->brands:[I

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->chunkZero:Z

    const/4 v1, -0x1

    .line 66
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->selectedTrack:I

    .line 67
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->backupBox:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    .line 74
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    return-void
.end method

.method private boxName(I)Ljava/lang/String;
    .locals 3

    .line 312
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 314
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private boxName(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Ljava/lang/String;
    .locals 0

    .line 307
    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 359
    iget-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-ltz v4, :cond_1

    .line 370
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    long-to-int v1, v0

    int-to-long v0, v1

    invoke-virtual {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    return-void

    .line 364
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 366
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->boxName(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x3

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "parser go beyond limits of the box. type=%s offset=%s size=%s position=%s"

    .line 364
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private parse_edts(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 730
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x656c7374

    aput v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 735
    :cond_0
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 737
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v2, 0x1

    .line 738
    :cond_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v3, 0x3

    invoke-virtual {v1, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 740
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    if-ge v1, v0, :cond_2

    const/high16 v0, 0x10000

    .line 742
    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;->bMediaRate:I

    return-object p1

    :cond_2
    if-eqz v2, :cond_3

    .line 747
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v3, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 748
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readLong()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;->MediaTime:J

    .line 750
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x10

    int-to-long v0, v1

    invoke-virtual {v2, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    goto :goto_0

    .line 752
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 753
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;->MediaTime:J

    .line 756
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v0

    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;->bMediaRate:I

    return-object p1
.end method

.method private parse_ftyp(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    iget-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v0, v2

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4

    sub-long/2addr v0, v2

    div-long/2addr v0, v2

    long-to-int p1, v0

    new-array p1, p1, [I

    .line 538
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 540
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    const/4 v0, 0x1

    .line 542
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 543
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private parse_hdlr(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 663
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    const/16 v1, 0xc

    .line 664
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->bReserved:[B

    .line 666
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->type:I

    .line 667
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->subType:I

    .line 668
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->bReserved:[B

    invoke-virtual {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([B)I

    .line 671
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    return-object v0
.end method

.method private parse_mdia(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    :goto_0
    const/4 v1, 0x3

    .line 634
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 635
    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    const v3, 0x68646c72    # 4.3148E24f

    if-eq v2, v3, :cond_3

    const v3, 0x6d646864

    if-eq v2, v3, :cond_1

    const v3, 0x6d696e66

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 649
    :cond_0
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_minf(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->minf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;

    goto :goto_1

    .line 637
    :cond_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readFullBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->mdhd:[B

    .line 640
    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->mdhd:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/16 v3, 0x8

    .line 641
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x4

    :cond_2
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0xc

    .line 642
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 643
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->mdhd_timeScale:I

    goto :goto_1

    .line 646
    :cond_3
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_hdlr(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->hdlr:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;

    .line 652
    :goto_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_4
    return-object v0

    :array_0
    .array-data 4
        0x6d646864
        0x68646c72    # 4.3148E24f
        0x6d696e66
    .end array-data
.end method

.method private parse_mfhd()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 424
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v0

    return v0
.end method

.method private parse_minf(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 765
    :goto_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilAnyBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 767
    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 772
    :sswitch_0
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_stbl(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;->stbl_stsd:[B

    goto :goto_1

    .line 776
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readFullBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;->$mhd:[B

    goto :goto_1

    .line 769
    :sswitch_2
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readFullBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[B

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Minf;->dinf:[B

    .line 780
    :goto_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_0
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x64696e66 -> :sswitch_2
        0x736d6864 -> :sswitch_1
        0x7374626c -> :sswitch_0
        0x766d6864 -> :sswitch_1
    .end sparse-switch
.end method

.method private parse_moof(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    const v1, 0x6d666864

    .line 403
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    .line 404
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_mfhd()I

    move-result v2

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->mfhd_SequenceNumber:I

    .line 405
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    :cond_0
    const/4 v1, 0x1

    .line 407
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x74726166

    aput v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    invoke-direct {p0, v1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_traf(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    .line 409
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    .line 411
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method private parse_moov(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x6d766864

    .line 677
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v0

    .line 678
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 679
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_mvhd()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;

    move-result-object v2

    iput-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->mvhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;

    .line 680
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->mvhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;

    iget-wide v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    long-to-int v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v2, 0x2

    .line 683
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, p1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 685
    iget v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d766578

    if-eq v3, v4, :cond_1

    const v4, 0x7472616b

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 687
    :cond_0
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_trak(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 690
    :cond_1
    iget-object v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->mvhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;

    iget-wide v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    long-to-int v4, v3

    invoke-direct {p0, v2, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_mvex(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;I)[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    move-result-object v3

    iput-object v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->mvex_trex:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    .line 694
    :goto_1
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 697
    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iput-object p1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->trak:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    return-object v1

    nop

    :array_0
    .array-data 4
        0x7472616b
        0x6d766578
    .end array-data
.end method

.method private parse_mvex(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;I)[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 p2, 0x1

    .line 706
    new-array p2, p2, [I

    const v1, 0x74726578

    const/4 v2, 0x0

    aput v1, p2, v2

    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_trex()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    goto :goto_0

    .line 711
    :cond_0
    new-array p1, v2, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    return-object p1
.end method

.method private parse_mvhd()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v0

    .line 550
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 554
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    if-nez v0, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 556
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 557
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readUint()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;->timeScale:J

    .line 560
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    if-nez v0, :cond_1

    const-wide/16 v3, 0x4

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 567
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v2, 0x4c

    invoke-virtual {v0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 569
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readUint()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mvhd;->nextTrackId:J

    return-object v1
.end method

.method private parse_stbl(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 790
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x73747364

    aput v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object p1

    if-nez p1, :cond_0

    .line 793
    new-array p1, v1, [B

    return-object p1

    .line 796
    :cond_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readFullBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[B

    move-result-object p1

    return-object p1
.end method

.method private parse_tfdt()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    if-nez v0, :cond_0

    .line 484
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readUint()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readLong()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private parse_tfhd(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 455
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    .line 456
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->trackId:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 458
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->trackId:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 462
    :cond_0
    iget p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 463
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v1, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 465
    :cond_1
    iget p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 466
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 468
    :cond_2
    iget p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x8

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 469
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    .line 471
    :cond_3
    iget p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x10

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 472
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    .line 474
    :cond_4
    iget p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v1, 0x20

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 475
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result p1

    iput p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleFlags:I

    :cond_5
    return-object v0
.end method

.method private parse_tkhd()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v0

    .line 577
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 582
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    if-nez v0, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 584
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->trackId:I

    .line 586
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v3, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    if-nez v0, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readUint()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readLong()J

    move-result-wide v2

    :goto_1
    iput-wide v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->duration:J

    .line 590
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 592
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bLayer:S

    .line 593
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bAlternateGroup:S

    .line 594
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readShort()S

    move-result v0

    iput-short v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bVolume:S

    .line 596
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    const/16 v0, 0x24

    .line 598
    new-array v0, v0, [B

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->matrix:[B

    .line 599
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->matrix:[B

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([B)I

    .line 601
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v0

    iput v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bWidth:I

    .line 602
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v0

    iput v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->bHeight:I

    return-object v1
.end method

.method private parse_traf(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    const v1, 0x74666864

    .line 430
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    .line 431
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_tfhd(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    move-result-object p2

    iput-object p2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    .line 432
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    .line 434
    iget-object p2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 p2, 0x2

    .line 438
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object p1

    .line 440
    iget p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    const v1, 0x74666474

    if-ne p2, v1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_tfdt()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfdt:J

    .line 442
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    const p1, 0x7472756e

    .line 443
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object p1

    .line 446
    :cond_1
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_trun()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    move-result-object p2

    iput-object p2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    .line 447
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    return-object v0

    :array_0
    .array-data 4
        0x7472756e
        0x74666474
    .end array-data
.end method

.method private parse_trak(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    const v1, 0x746b6864

    .line 610
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    .line 611
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_tkhd()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    .line 612
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    :goto_0
    const/4 v1, 0x2

    .line 614
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 615
    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    const v3, 0x65647473

    if-eq v2, v3, :cond_1

    const v3, 0x6d646961

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 617
    :cond_0
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_mdia(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->mdia:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;

    goto :goto_1

    .line 620
    :cond_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_edts(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->edst_elst:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Elst;

    .line 624
    :goto_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_2
    return-object v0

    :array_0
    .array-data 4
        0x6d646961
        0x65647473
    .end array-data
.end method

.method private parse_trex()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 717
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    const-wide/16 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    .line 719
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 720
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;I)I

    .line 721
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->defaultSampleDescriptionIndex:I

    .line 722
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->defaultSampleDuration:I

    .line 723
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->defaultSampleSize:I

    .line 724
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->defaultSampleFlags:I

    return-object v0
.end method

.method private parse_trun()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 489
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    .line 490
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entryCount:I

    const/4 v1, 0x0

    .line 492
    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    .line 493
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v3, 0x100

    invoke-static {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    const/4 v4, 0x4

    if-eqz v2, :cond_0

    .line 494
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    .line 496
    :cond_0
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v5, 0x200

    invoke-static {v2, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 497
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    .line 499
    :cond_1
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v6, 0x400

    invoke-static {v2, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    .line 502
    :cond_2
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v6, 0x800

    invoke-static {v2, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 503
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    .line 505
    :cond_3
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entries_rowSize:I

    iget v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v2, v2, v7

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bEntries:[B

    .line 507
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 508
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->dataOffset:I

    .line 510
    :cond_4
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v2, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 511
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v2

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFirstSampleFlags:I

    .line 514
    :cond_5
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    iget-object v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bEntries:[B

    invoke-virtual {v2, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([B)I

    .line 516
    :goto_0
    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entryCount:I

    if-ge v1, v2, :cond_9

    .line 517
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->getEntry(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;

    move-result-object v2

    .line 518
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 519
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkDuration:I

    iget v7, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleDuration:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkDuration:I

    .line 521
    :cond_6
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 522
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkSize:I

    iget v7, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleSize:I

    add-int/2addr v4, v7

    iput v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 524
    :cond_7
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 525
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v4, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v4

    if-nez v4, :cond_8

    .line 526
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkDuration:I

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrunEntry;->sampleCompositionTimeOffset:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkDuration:I

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_9
    return-object v0
.end method

.method private readBox()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 319
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 320
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    .line 321
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    .line 322
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v1

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    .line 324
    iget-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 325
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    :cond_0
    return-object v0
.end method

.method private readBox(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v0

    .line 333
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    if-ne v1, p1, :cond_0

    return-object v0

    .line 334
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->boxName(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readFullBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    long-to-int v1, v0

    .line 343
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 344
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 345
    iget v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    .line 349
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([BII)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 355
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 350
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    .line 351
    invoke-direct {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "EOF reached in box: type=%s offset=%s size=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readUint()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readInt()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private untilAnyBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object p1

    return-object p1
.end method

.method private varargs untilBox(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    iget-wide v4, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 376
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v0

    .line 377
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, p2, v2

    .line 378
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    if-ne v4, v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    :cond_1
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getBrands()[I
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->brands:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not parsed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNextChunk(Z)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->selectedTrack:I

    aget-object v0, v0, v1

    .line 227
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->available()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 229
    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->chunkZero:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    .line 231
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->available()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 234
    :cond_1
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    goto :goto_1

    .line 236
    :cond_2
    iput-boolean v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->chunkZero:Z

    .line 239
    :goto_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iget v4, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    const v5, 0x6d646174

    if-eq v4, v5, :cond_9

    const v2, 0x6d6f6f66

    if-eq v4, v2, :cond_3

    goto :goto_0

    .line 241
    :cond_3
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    if-nez v2, :cond_8

    .line 245
    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->trackId:I

    invoke-direct {p0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_moof(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    .line 247
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    const-wide/16 v4, 0x8

    if-eqz v1, :cond_5

    .line 250
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->dataOffset:I

    int-to-long v6, v2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iget-wide v8, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    add-long/2addr v8, v4

    sub-long/2addr v6, v8

    long-to-int v2, v6

    iput v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->dataOffset:I

    .line 251
    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->dataOffset:I

    if-ltz v1, :cond_4

    goto :goto_2

    .line 252
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "trun box has wrong data offset, points outside of concurrent mdat box"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 256
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkSize:I

    if-ge v2, v3, :cond_7

    .line 257
    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 258
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleSize:I

    iget v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v1, v1, v3

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkSize:I

    goto :goto_3

    .line 260
    :cond_6
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iget-wide v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->size:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    iput v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkSize:I

    .line 263
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->bFlags:I

    const/16 v2, 0x900

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkDuration:I

    if-nez v2, :cond_0

    .line 264
    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->bFlags:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->tfhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tfhd;->defaultSampleDuration:I

    iget v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->entryCount:I

    mul-int v1, v1, v3

    iput v1, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkDuration:I

    goto/16 :goto_0

    .line 242
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string v0, "moof found without mdat"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_9
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    if-eqz v1, :cond_c

    .line 275
    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    if-nez v1, :cond_a

    .line 276
    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    goto/16 :goto_0

    .line 280
    :cond_a
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    .line 281
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    if-nez p1, :cond_b

    .line 283
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->chunkSize:I

    invoke-virtual {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->getView(I)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->data:Ljava/io/InputStream;

    .line 286
    :cond_b
    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    .line 288
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4DashChunk;->moof:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moof;->traf:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Traf;->trun:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;

    iget v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trun;->dataOffset:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    return-object v0

    .line 272
    :cond_c
    new-instance p1, Ljava/io/IOException;

    const-string v0, "mdat found without moof"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    :goto_4
    return-object v2
.end method

.method public parse()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->selectedTrack:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x66747970

    .line 82
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    .line 83
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_ftyp(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->brands:[I

    .line 84
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->brands:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x64617368

    if-eq v0, v2, :cond_2

    const v2, 0x69736f35

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a MPEG-4 DASH container, major brand is not \'dash\' or \'iso5\' is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->brands:[I

    aget v1, v3, v1

    .line 90
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->boxName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iget v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d6f6f66

    if-eq v3, v4, :cond_4

    .line 98
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)V

    .line 99
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->readBox()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    move-result-object v2

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    .line 101
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iget v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->type:I

    const v4, 0x6d6f6f76

    if-eq v3, v4, :cond_3

    const v2, 0x73696478

    goto :goto_1

    .line 103
    :cond_3
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->parse_moov(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_b

    .line 116
    iget-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->trak:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    array-length v2, v2

    new-array v2, v2, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    const/4 v2, 0x0

    .line 118
    :goto_2
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    array-length v4, v3

    if-ge v2, v4, :cond_a

    .line 119
    new-instance v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    invoke-direct {v4, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;)V

    aput-object v4, v3, v2

    .line 120
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    iget-object v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->trak:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    aget-object v4, v4, v2

    iput-object v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    .line 122
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->mvex_trex:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    if-eqz v3, :cond_6

    .line 123
    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_6

    aget-object v6, v3, v5

    .line 124
    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v7, v7, v2

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trak:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->tkhd:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;

    iget v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Tkhd;->trackId:I

    invoke-static {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;)I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 125
    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v7, v7, v2

    iput-object v6, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->trex:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trex;

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 130
    :cond_6
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Moov;->trak:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Trak;->mdia:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;

    iget-object v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mdia;->hdlr:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;

    iget v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Hdlr;->subType:I

    const v4, 0x736f756e

    if-eq v3, v4, :cond_9

    const v4, 0x73756274

    if-eq v3, v4, :cond_8

    const v4, 0x76696465

    if-eq v3, v4, :cond_7

    .line 141
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;->Other:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    goto :goto_4

    .line 132
    :cond_7
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;->Video:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    goto :goto_4

    .line 138
    :cond_8
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;->Subtitles:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    goto :goto_4

    .line 135
    :cond_9
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object v3, v3, v2

    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;->Audio:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    iput-object v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;->kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$TrackKind;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    :cond_a
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->backupBox:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    return-void

    .line 113
    :cond_b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The provided Mp4 doesn\'t have the \'moov\' box"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rewind()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->canRewind()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->backupBox:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->box:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->chunkZero:Z

    .line 216
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->rewind()V

    .line 217
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->backupBox:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;

    iget-wide v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Box;->offset:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    return-void

    .line 207
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The provided stream doesn\'t allow seek"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectTrack(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;
    .locals 1

    .line 150
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->selectedTrack:I

    .line 151
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/Mp4DashReader$Mp4Track;

    aget-object p1, v0, p1

    return-object p1
.end method
