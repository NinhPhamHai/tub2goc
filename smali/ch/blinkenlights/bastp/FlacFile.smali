.class public Lch/blinkenlights/bastp/FlacFile;
.super Lch/blinkenlights/bastp/Common;
.source "FlacFile.java"

# interfaces
.implements Lch/blinkenlights/bastp/PageInfo$PageParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lch/blinkenlights/bastp/Common;-><init>()V

    return-void
.end method

.method private parse_streaminfo_block(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x12

    .line 99
    new-array v1, v1, [B

    .line 101
    array-length v2, v1

    int-to-long v2, v2

    cmp-long v4, p4, v2

    if-ltz v4, :cond_0

    .line 102
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 103
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p2

    shr-int/lit8 p2, p2, 0x10

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "blocksize_minimal"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p1

    const p2, 0xffff

    and-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "blocksize_maximal"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x4

    .line 106
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "framesize_minimal"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x7

    .line 107
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p2

    shr-int/lit8 p2, p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "framesize_maximal"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0xa

    .line 108
    invoke-virtual {p0, v1, p2}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p3

    shr-int/lit8 p3, p3, 0xc

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "sampling_rate"

    invoke-virtual {v0, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, v1, p2}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p2

    shr-int/lit8 p2, p2, 0x9

    and-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "channels"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xe

    .line 110
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "num_samples"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 112
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    div-int/2addr p1, p2

    .line 113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x4

    const/16 v4, 0x40

    move-object v6, v0

    move-object v7, v1

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x1

    :goto_0
    if-lez v4, :cond_3

    int-to-long v8, v0

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 42
    invoke-virtual {v0, v14, v8, v9}, Lch/blinkenlights/bastp/FlacFile;->parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;

    move-result-object v15

    .line 43
    iget v10, v15, Lch/blinkenlights/bastp/PageInfo;->type:I

    const/16 v17, 0x0

    if-nez v10, :cond_0

    .line 44
    iget-wide v5, v15, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    add-long v12, v8, v5

    iget-wide v5, v15, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v3, v15

    move-wide v14, v5

    invoke-direct/range {v10 .. v15}, Lch/blinkenlights/bastp/FlacFile;->parse_streaminfo_block(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;

    move-result-object v5

    move-object v6, v5

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    move-object v3, v15

    .line 47
    :goto_1
    iget v10, v3, Lch/blinkenlights/bastp/PageInfo;->type:I

    if-ne v10, v2, :cond_1

    .line 48
    iget-wide v10, v3, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    add-long v13, v8, v10

    iget-wide v11, v3, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    move-object/from16 v10, p0

    move-wide v15, v11

    move-object/from16 v11, p1

    move-object/from16 v12, p0

    invoke-virtual/range {v10 .. v16}, Lch/blinkenlights/bastp/Common;->parse_vorbis_comment(Ljava/io/RandomAccessFile;Lch/blinkenlights/bastp/PageInfo$PageParser;JJ)Ljava/util/HashMap;

    move-result-object v1

    move-object v7, v1

    const/4 v1, 0x0

    .line 52
    :cond_1
    iget-boolean v10, v3, Lch/blinkenlights/bastp/PageInfo;->last_page:Z

    const/4 v11, 0x1

    if-eq v10, v11, :cond_4

    if-nez v1, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    .line 56
    :cond_2
    iget-wide v12, v3, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    iget-wide v14, v3, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    add-long/2addr v12, v14

    add-long/2addr v8, v12

    long-to-int v3, v8

    add-int/lit8 v4, v4, -0x1

    move v0, v3

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    :cond_4
    :goto_2
    const-string v1, "duration"

    .line 60
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 61
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v7
.end method

.method public parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 71
    new-array v1, v0, [B

    .line 76
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p2

    shr-int/lit8 p3, p2, 0x18

    and-int/lit8 v0, p3, 0x7f

    and-int/lit16 p3, p3, 0x80

    if-lez p3, :cond_0

    const/4 p1, 0x1

    :cond_0
    const p3, 0xffffff

    and-int/2addr p2, p3

    .line 86
    new-instance p3, Lch/blinkenlights/bastp/PageInfo;

    invoke-direct {p3}, Lch/blinkenlights/bastp/PageInfo;-><init>()V

    const-wide/16 v1, 0x4

    .line 87
    iput-wide v1, p3, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    int-to-long v1, p2

    .line 88
    iput-wide v1, p3, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    .line 89
    iput v0, p3, Lch/blinkenlights/bastp/PageInfo;->type:I

    .line 90
    iput-boolean p1, p3, Lch/blinkenlights/bastp/PageInfo;->last_page:Z

    return-object p3

    :cond_1
    const-string p1, "failed to read metadata block header"

    .line 79
    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
