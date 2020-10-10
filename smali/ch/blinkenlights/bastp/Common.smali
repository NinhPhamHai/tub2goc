.class public Lch/blinkenlights/bastp/Common;
.super Ljava/lang/Object;
.source "Common.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 146
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public b2be32([BI)I
    .locals 0

    .line 51
    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->swap32(I)I

    move-result p1

    return p1
.end method

.method public b2le16([BI)I
    .locals 1

    .line 62
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result v0

    add-int/lit8 p2, p2, 0x1

    aget-byte p1, p1, p2

    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p1, v0

    return p1
.end method

.method public b2le32([BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    add-int v2, p2, v0

    .line 35
    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result v2

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public b2u(B)I
    .locals 0

    and-int/lit16 p1, p1, 0xff

    return p1
.end method

.method public parse_vorbis_comment(Ljava/io/RandomAccessFile;Lch/blinkenlights/bastp/PageInfo$PageParser;JJ)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 87
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    add-long v5, v2, p5

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Lch/blinkenlights/bastp/Common;->raf2le32(Ljava/io/RandomAccessFile;J)I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lch/blinkenlights/bastp/Common;->raf2le32(Ljava/io/RandomAccessFile;J)I

    move-result v7

    const-wide/16 v8, 0x4

    add-long/2addr v2, v8

    :goto_0
    if-lez v7, :cond_6

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lch/blinkenlights/bastp/Common;->raf2le32(Ljava/io/RandomAccessFile;J)I

    move-result v10

    add-long/2addr v2, v8

    sub-long v11, v5, v2

    int-to-long v13, v10

    cmp-long v15, v11, v13

    if-lez v15, :cond_0

    move-wide v11, v13

    :cond_0
    long-to-int v12, v11

    const/4 v11, 0x3

    if-lt v12, v11, :cond_2

    const/16 v11, 0x200

    if-le v12, v11, :cond_1

    goto :goto_1

    :cond_1
    move v11, v12

    .line 106
    :goto_1
    new-array v11, v11, [B

    .line 107
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 108
    invoke-virtual {v1, v11}, Ljava/io/RandomAccessFile;->read([B)I

    .line 109
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v11}, Ljava/lang/String;-><init>([B)V

    const/4 v11, 0x2

    const-string v14, "="

    .line 110
    invoke-virtual {v13, v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    .line 111
    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    .line 112
    aget-object v11, v11, v14

    invoke-virtual {v0, v4, v13, v11}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    int-to-long v13, v12

    add-long/2addr v2, v13

    cmp-long v11, v2, v5

    if-nez v11, :cond_5

    sub-int/2addr v10, v12

    :goto_2
    if-lez v10, :cond_5

    move-object/from16 v11, p2

    .line 124
    invoke-interface {v11, v1, v5, v6}, Lch/blinkenlights/bastp/PageInfo$PageParser;->parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;

    move-result-object v5

    .line 125
    iget-wide v12, v5, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    const-wide/16 v14, 0x1

    cmp-long v6, v12, v14

    if-ltz v6, :cond_4

    iget-wide v5, v5, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    cmp-long v16, v5, v14

    if-ltz v16, :cond_4

    add-long/2addr v2, v12

    add-long v12, v2, v5

    int-to-long v14, v10

    add-long/2addr v2, v14

    cmp-long v10, v2, v12

    if-gez v10, :cond_3

    move-wide v5, v12

    goto :goto_3

    :cond_3
    sub-long/2addr v14, v5

    long-to-int v10, v14

    move-wide v2, v12

    move-wide v5, v2

    goto :goto_2

    :cond_4
    const-string v1, "Data from callback doesnt make much sense"

    .line 126
    invoke-virtual {v0, v1}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_5
    move-object/from16 v11, p2

    :goto_3
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_6
    return-object v4
.end method

.method public raf2le32(Ljava/io/RandomAccessFile;J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 44
    new-array v0, v0, [B

    .line 45
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 46
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 p1, 0x0

    .line 47
    invoke-virtual {p0, v0, p1}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    return p1
.end method

.method public swap32(I)I
    .locals 2

    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v1, 0xff00

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/high16 v1, 0xff0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    add-int/2addr v0, p1

    return v0
.end method

.method public xdie(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
