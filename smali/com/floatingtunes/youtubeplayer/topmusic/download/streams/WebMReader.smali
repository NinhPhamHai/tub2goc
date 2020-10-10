.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;
.super Ljava/lang/Object;
.source "WebMReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;
    }
.end annotation


# instance fields
.field private done:Z

.field private firstSegment:Z

.field private segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

.field private selectedTrack:I

.field private stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

.field private tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    return-void
.end method

.method static synthetic access$1000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->selectedTrack:I

    return p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->done:Z

    return p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    return-object p0
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readCluster(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    return-void
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    return-object p0
.end method

.method static synthetic access$900(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readSimpleBlock(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;

    move-result-object p0

    return-object p0
.end method

.method private elementID(J)Ljava/lang/String;
    .locals 0

    .line 206
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0x"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->size:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-ltz v4, :cond_1

    .line 221
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {p1, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->skipBytes(J)J

    return-void

    .line 215
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    int-to-long v3, v3

    .line 217
    invoke-direct {p0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x3

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "parser go beyond limits of the Element. type=%s offset=%s size=%s position=%s"

    .line 215
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readBlob(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->contentSize:J

    long-to-int p1, v0

    .line 131
    new-array p1, p1, [B

    .line 132
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read([B)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    return-object p1

    .line 134
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
.end method

.method private readCluster(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    const/4 v1, 0x1

    .line 379
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x67

    aput v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Cluster;->timecode:J

    return-object v0

    .line 381
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cluster at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " without Timecode element"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readEbml(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;II)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 227
    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x2f7

    aput v3, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 231
    :cond_0
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v3

    int-to-long v5, p2

    cmp-long p2, v3, v5

    if-lez p2, :cond_1

    return v2

    .line 235
    :cond_1
    new-array p2, v0, [I

    const/16 v1, 0x282

    aput v1, p2, v2

    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object p2

    if-nez p2, :cond_2

    return v2

    .line 239
    :cond_2
    invoke-direct {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readString(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "webm"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    .line 242
    :cond_3
    new-array p2, v0, [I

    const/16 v1, 0x285

    aput v1, p2, v2

    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 244
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide p1

    int-to-long v3, p3

    cmp-long p3, p1, v3

    if-gtz p3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readElement()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)V

    .line 172
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    .line 173
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    long-to-int v2, v1

    iput v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    .line 174
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->contentSize:J

    .line 175
    iget-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->contentSize:J

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v3

    add-long/2addr v1, v3

    iget-wide v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->size:J

    return-object v0
.end method

.method private readElement(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readElement()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 182
    iget v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    int-to-long v3, p1

    invoke-direct {p0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->elementID(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private readEncodedNumber()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v0

    if-lez v0, :cond_2

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v3, 0x80

    :goto_0
    const/16 v4, 0x9

    if-ge v1, v4, :cond_2

    and-int v4, v0, v3

    if-ne v4, v3, :cond_1

    const/16 v3, 0xff

    shr-int/2addr v3, v1

    and-int/2addr v0, v3

    int-to-long v3, v0

    :goto_1
    if-ge v2, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v0

    const/16 v5, 0x8

    shl-long/2addr v3, v5

    int-to-long v5, v0

    or-long/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    return-wide v3

    :cond_1
    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    .line 167
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoded length"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readInfo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)V

    :goto_0
    const/4 v1, 0x2

    .line 251
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 252
    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    const/16 v3, 0x489

    if-eq v2, v3, :cond_1

    const v3, 0xad7b1

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 254
    :cond_0
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;->timecodeScale:J

    goto :goto_1

    .line 257
    :cond_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;->duration:J

    .line 260
    :goto_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;->timecodeScale:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_3

    return-object v0

    .line 264
    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Element Timecode not found"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 4
        0xad7b1
        0x489
    .end array-data
.end method

.method private readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->contentSize:J

    long-to-int p1, v0

    const-wide/16 v0, 0x0

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-lez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result p1

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    int-to-long v3, p1

    or-long/2addr v0, v3

    move p1, v2

    goto :goto_0

    .line 118
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-wide v0
.end method

.method private readSegment(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;IZ)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    :goto_0
    const/4 v1, 0x3

    .line 273
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 274
    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    const v3, 0xf43b675

    if-ne v2, v3, :cond_0

    .line 275
    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->access$102(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    goto :goto_2

    :cond_0
    const v3, 0x549a966

    if-eq v2, v3, :cond_2

    const v3, 0x654ae6b    # 4.000091E-35f

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readTracks(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;I)[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    goto :goto_1

    .line 280
    :cond_2
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readInfo(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;

    move-result-object v2

    iput-object v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;

    .line 286
    :goto_1
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    goto :goto_0

    :cond_3
    :goto_2
    if-eqz p3, :cond_5

    .line 289
    iget-object p2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->info:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Info;

    if-eqz p2, :cond_4

    iget-object p2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    if-eqz p2, :cond_4

    goto :goto_3

    .line 290
    :cond_4
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cluster element found without Info and/or Tracks element at position "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_3
    return-object v0

    nop

    :array_0
    .array-data 4
        0x549a966
        0x654ae6b    # 4.000091E-35f
        0xf43b675
    .end array-data
.end method

.method private readSimpleBlock(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    .line 364
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->dataSize:J

    .line 365
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readEncodedNumber()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->trackNumber:J

    .line 366
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->readShort()S

    move-result v1

    iput-short v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->relativeTimeCode:S

    .line 367
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->read()I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->flags:B

    .line 368
    iget-wide v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    iget-wide v3, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->size:J

    add-long/2addr v1, v3

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->dataSize:J

    .line 370
    iget-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$SimpleBlock;->dataSize:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_0

    return-object v0

    .line 371
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Unexpected SimpleBlock element size, missing %s bytes"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readString(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readBlob(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)[B

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private readTracks(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;I)[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v2, 0x1

    .line 300
    new-array v3, v2, [I

    const/16 v4, 0x2e

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-direct {p0, p1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 301
    new-instance v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    invoke-direct {v4, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;)V

    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0x8

    .line 304
    new-array v7, v7, [I

    fill-array-data v7, :array_0

    invoke-direct {p0, v3, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 307
    iget v8, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    const/4 v9, 0x6

    if-eq v8, v9, :cond_6

    const/16 v9, 0x1c

    if-eq v8, v9, :cond_4

    const/16 v9, 0x57

    if-eq v8, v9, :cond_3

    const/16 v9, 0x23a2

    if-eq v8, v9, :cond_2

    const v9, 0x3e383

    if-eq v8, v9, :cond_1

    const/16 v9, 0x60

    if-eq v8, v9, :cond_0

    const/16 v9, 0x61

    if-eq v8, v9, :cond_0

    .line 331
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V

    goto :goto_2

    .line 322
    :cond_0
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readBlob(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)[B

    move-result-object v8

    iput-object v8, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->bMetadata:[B

    goto :goto_2

    .line 325
    :cond_1
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->defaultDuration:J

    goto :goto_2

    .line 318
    :cond_2
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readBlob(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)[B

    move-result-object v8

    iput-object v8, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->codecPrivate:[B

    goto :goto_2

    .line 309
    :cond_3
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackNumber:J

    goto :goto_2

    .line 328
    :cond_4
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v8

    int-to-long v10, p2

    cmp-long v6, v8, v10

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 315
    :cond_6
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readString(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->codecId:Ljava/lang/String;

    goto :goto_2

    .line 312
    :cond_7
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readNumber(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)J

    move-result-wide v8

    long-to-int v9, v8

    iput v9, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    .line 334
    :goto_2
    invoke-direct {p0, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    goto :goto_1

    :cond_8
    if-nez v6, :cond_9

    .line 337
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_9
    invoke-direct {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    goto/16 :goto_0

    .line 342
    :cond_a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    .line 343
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 345
    array-length p2, p1

    :goto_3
    if-ge v5, p2, :cond_d

    aget-object v0, p1, v5

    .line 346
    iget v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->trackType:I

    if-eq v3, v2, :cond_c

    if-eq v3, v1, :cond_b

    .line 354
    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Other:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    iput-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    goto :goto_4

    .line 351
    :cond_b
    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Audio:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    iput-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    goto :goto_4

    .line 348
    :cond_c
    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;->Video:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    iput-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;->kind:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$TrackKind;

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_d
    return-object p1

    nop

    :array_0
    .array-data 4
        0x57
        0x3
        0x6
        0x23a2
        0x1c
        0x3e383
        0x61
        0x60
    .end array-data
.end method

.method private varargs untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-nez p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->available()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->stream:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/DataReader;->position()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->offset:J

    iget-wide v4, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->size:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 192
    :goto_1
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readElement()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v0

    .line 193
    array-length v1, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget v3, p2, v2

    .line 194
    iget v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;->type:I

    if-ne v4, v3, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 199
    :cond_2
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getAvailableTracks()[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    return-object v0
.end method

.method public getNextSegment()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->done:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->firstSegment:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    if-eqz v0, :cond_1

    .line 95
    iput-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->firstSegment:Z

    return-object v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    const/4 v0, 0x1

    .line 101
    new-array v3, v0, [I

    const v4, 0x8538067

    aput v4, v3, v2

    invoke-direct {p0, v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v3

    if-nez v3, :cond_2

    .line 103
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->done:Z

    return-object v1

    .line 106
    :cond_2
    invoke-direct {p0, v3, v2, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readSegment(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;IZ)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    .line 108
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    return-object v0
.end method

.method public parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xa45dfa3

    .line 63
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readElement(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 64
    invoke-direct {p0, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readEbml(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->ensure(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;)V

    const/4 v0, 0x0

    .line 69
    new-array v2, v1, [I

    const v3, 0x8538067

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-direct {p0, v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->untilElement(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;[I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, v0, v4, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->readSegment(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Element;IZ)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    .line 74
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->segment:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$Segment;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->selectedTrack:I

    .line 76
    iput-boolean v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->done:Z

    .line 77
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->firstSegment:Z

    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fragment element not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported EBML data (WebM)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public selectTrack(I)Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;
    .locals 1

    .line 85
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->selectedTrack:I

    .line 86
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader;->tracks:[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/WebMReader$WebMTrack;

    aget-object p1, v0, p1

    return-object p1
.end method
