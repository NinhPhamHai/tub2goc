.class public Lch/blinkenlights/bastp/OggFile;
.super Lch/blinkenlights/bastp/Common;
.source "OggFile.java"

# interfaces
.implements Lch/blinkenlights/bastp/PageInfo$PageParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lch/blinkenlights/bastp/Common;-><init>()V

    return-void
.end method

.method private parse_ogg_vorbis_comment(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    const/4 v0, 0x7

    .line 123
    new-array v1, v0, [B

    const/4 v2, 0x0

    const-wide/16 v3, 0x7

    cmp-long v5, p4, v3

    if-ltz v5, :cond_1

    .line 128
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v5, p1

    .line 129
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 131
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v1, v8, v0}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "\u0003vorbis"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-long v8, p2, v3

    sub-long v10, p4, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p0

    move-wide v3, v8

    move-wide v5, v10

    .line 134
    invoke-virtual/range {v0 .. v6}, Lch/blinkenlights/bastp/Common;->parse_vorbis_comment(Ljava/io/RandomAccessFile;Lch/blinkenlights/bastp/PageInfo$PageParser;JJ)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Damaged packet found!"

    .line 132
    invoke-virtual {p0, v0}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "ogg vorbis comment field is too short!"

    .line 126
    invoke-virtual {p0, v0}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    throw v2
.end method

.method private parse_ogg_vorbis_identification(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x1c

    .line 151
    new-array v1, v1, [B

    .line 153
    array-length v2, v1

    int-to-long v2, v2

    cmp-long v4, p4, v2

    if-ltz v4, :cond_0

    .line 154
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 155
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 p1, 0x7

    .line 156
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xb

    .line 157
    aget-byte p1, v1, p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "channels"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc

    .line 158
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sampling_rate"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x10

    .line 159
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "bitrate_minimal"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x14

    .line 160
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "bitrate_nominal"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x18

    .line 161
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "bitrate_maximal"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x40

    move-object v8, v0

    move-object v9, v1

    move-wide v0, v2

    const/4 v6, 0x1

    const/4 v7, 0x1

    :goto_0
    if-lez v5, :cond_3

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 45
    invoke-virtual {v14, v15, v0, v1}, Lch/blinkenlights/bastp/OggFile;->parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;

    move-result-object v12

    .line 46
    iget v10, v12, Lch/blinkenlights/bastp/PageInfo;->type:I

    const/16 v16, 0x0

    if-ne v10, v4, :cond_0

    .line 47
    iget-wide v9, v12, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    add-long v17, v0, v9

    iget-wide v9, v12, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    move-wide/from16 v19, v9

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v7, v12

    move-wide/from16 v12, v17

    move-wide/from16 v14, v19

    invoke-direct/range {v10 .. v15}, Lch/blinkenlights/bastp/OggFile;->parse_ogg_vorbis_identification(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;

    move-result-object v9

    move-object v10, v7

    const/4 v7, 0x0

    goto :goto_1

    :cond_0
    move-object v14, v12

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 50
    iget-wide v10, v14, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    add-long v12, v0, v10

    iget-wide v10, v14, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    move-wide/from16 v17, v10

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v6, v14

    move-wide/from16 v14, v17

    invoke-direct/range {v10 .. v15}, Lch/blinkenlights/bastp/OggFile;->parse_ogg_vorbis_comment(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;

    move-result-object v8

    move-object v10, v6

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move-object v10, v14

    .line 53
    :goto_1
    iget-wide v11, v10, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    iget-wide v13, v10, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    add-long/2addr v11, v13

    add-long/2addr v0, v11

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string v0, "bitrate_nominal"

    .line 62
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_4

    if-lez v0, :cond_4

    int-to-long v0, v0

    .line 66
    div-long/2addr v4, v0

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {v8, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v8
.end method

.method public parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 78
    new-array v0, v0, [J

    const/16 v0, 0x1b

    .line 79
    new-array v1, v0, [B

    .line 85
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 86
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_5

    .line 89
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    const-string v2, "OggS\u0000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/16 v0, 0x1a

    .line 92
    aget-byte v0, v1, v0

    invoke-virtual {p0, v0}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result v0

    if-lez v0, :cond_1

    .line 95
    new-array v5, v0, [B

    .line 96
    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    if-ne v6, v0, :cond_0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 101
    aget-byte v7, v5, v3

    invoke-virtual {p0, v7}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "Failed to read segtable"

    .line 98
    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    throw v3

    :cond_1
    const/4 v6, 0x0

    .line 105
    :cond_2
    new-instance v0, Lch/blinkenlights/bastp/PageInfo;

    invoke-direct {v0}, Lch/blinkenlights/bastp/PageInfo;-><init>()V

    .line 106
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    sub-long/2addr v7, p2

    iput-wide v7, v0, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    int-to-long p2, v6

    .line 107
    iput-wide p2, v0, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    const/4 p2, -0x1

    .line 108
    iput p2, v0, Lch/blinkenlights/bastp/PageInfo;->type:I

    if-lt v6, v2, :cond_3

    .line 111
    invoke-virtual {p1, v1, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-ne p1, v2, :cond_3

    .line 112
    aget-byte p1, v1, v4

    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result p1

    iput p1, v0, Lch/blinkenlights/bastp/PageInfo;->type:I

    :cond_3
    return-object v0

    :cond_4
    const-string p1, "Invalid magic - not an ogg file?"

    .line 90
    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string p1, "Unable to read() OGG_PAGE_HEADER"

    .line 88
    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    throw v3
.end method
