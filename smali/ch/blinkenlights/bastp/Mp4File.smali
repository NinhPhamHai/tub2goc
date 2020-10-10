.class public Lch/blinkenlights/bastp/Mp4File;
.super Lch/blinkenlights/bastp/Common;
.source "Mp4File.java"


# static fields
.field static final ALLOWED_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final ATOM_TAGS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BINARY_TAGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "replaygain_track_gain"

    const-string v1, "replaygain_album_gain"

    const-string v2, "title"

    const-string v3, "album"

    const-string v4, "artist"

    const-string v5, "albumartist"

    const-string v6, "composer"

    const-string v7, "genre"

    const-string v8, "year"

    const-string v9, "tracknumber"

    const-string v10, "discnumber"

    .line 49
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/bastp/Mp4File;->ALLOWED_TAGS:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string/jumbo v1, "\ufffdnam"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string/jumbo v1, "\ufffdalb"

    const-string v2, "album"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string/jumbo v1, "\ufffdART"

    const-string v2, "artist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string v1, "aART"

    const-string v2, "albumartist"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string/jumbo v1, "\ufffdwrt"

    const-string v2, "composer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string/jumbo v1, "\ufffdgen"

    const-string v2, "genre"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string/jumbo v1, "\ufffdday"

    const-string v2, "year"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string v1, "tracknumber"

    const-string v2, "trkn"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    const-string v2, "discnumber"

    const-string v3, "disk"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/bastp/Mp4File;->BINARY_TAGS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lch/blinkenlights/bastp/Common;-><init>()V

    return-void
.end method

.method private readIntoBuffer(Ljava/io/RandomAccessFile;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x200

    .line 233
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 234
    new-array v1, v0, [B

    .line 235
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    if-le p2, v0, :cond_0

    sub-int/2addr p2, v0

    .line 237
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 98
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 104
    :try_start_0
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    const-wide/16 v4, 0x0

    .line 106
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v4, 0x4

    .line 108
    new-array v5, v4, [B

    const/4 v7, 0x0

    .line 114
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    cmp-long v12, v8, v10

    if-gez v12, :cond_18

    .line 117
    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v9, "ilst"

    if-nez v8, :cond_1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v10

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch/blinkenlights/bastp/Atom;

    iget-wide v12, v8, Lch/blinkenlights/bastp/Atom;->start:J

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch/blinkenlights/bastp/Atom;

    iget v8, v8, Lch/blinkenlights/bastp/Atom;->length:I

    int-to-long v14, v8

    add-long/2addr v12, v14

    cmp-long v8, v10, v12

    if-ltz v8, :cond_1

    .line 120
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lch/blinkenlights/bastp/Atom;

    iget-object v8, v8, Lch/blinkenlights/bastp/Atom;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v2

    .line 124
    :cond_0
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 128
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    if-gtz v8, :cond_2

    return-object v2

    .line 135
    :cond_2
    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    .line 136
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 146
    :goto_2
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v12, "data"

    const-string v4, "name"

    if-gt v13, v6, :cond_10

    .line 147
    :try_start_2
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v6

    if-ge v13, v6, :cond_3

    invoke-virtual {v3, v13}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lch/blinkenlights/bastp/Atom;

    iget-object v6, v6, Lch/blinkenlights/bastp/Atom;->name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_3
    move-object v6, v10

    :goto_3
    const-string v14, "meta"

    if-nez v13, :cond_4

    :try_start_3
    const-string v11, "moov"

    .line 148
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_4
    const/4 v11, 0x1

    if-ne v13, v11, :cond_5

    const-string v11, "udta"

    .line 149
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_5
    const/4 v11, 0x2

    if-ne v13, v11, :cond_6

    .line 150
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_6
    const/4 v11, 0x3

    if-ne v13, v11, :cond_7

    .line 151
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_7
    const/4 v11, 0x4

    if-ne v13, v11, :cond_8

    const-string v11, "----"

    .line 152
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const/4 v11, 0x4

    :cond_8
    if-ne v13, v11, :cond_9

    sget-object v11, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    .line 153
    invoke-virtual {v11, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    :cond_9
    const/4 v11, 0x5

    if-ne v13, v11, :cond_f

    .line 154
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 158
    :cond_a
    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v11

    if-ne v13, v11, :cond_d

    .line 159
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 160
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    goto :goto_5

    :cond_c
    :goto_4
    const/4 v4, 0x1

    :goto_5
    move/from16 v16, v4

    move v15, v11

    :cond_d
    const/4 v4, 0x4

    if-ne v13, v4, :cond_e

    .line 163
    sget-object v4, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 164
    sget-object v4, Lch/blinkenlights/bastp/Mp4File;->ATOM_TAGS:Ljava/util/HashMap;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v17, v4

    :cond_e
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x4

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_f
    const/4 v14, 0x0

    .line 175
    :cond_10
    new-instance v6, Lch/blinkenlights/bastp/Atom;

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v18

    const-wide/16 v20, 0x8

    move-object v9, v12

    sub-long v11, v18, v20

    invoke-direct {v6, v10, v11, v12, v8}, Lch/blinkenlights/bastp/Atom;-><init>(Ljava/lang/String;JI)V

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v14, :cond_11

    add-int/lit8 v8, v8, -0x8

    .line 179
    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    const/4 v6, 0x4

    goto :goto_8

    :cond_11
    if-eqz v15, :cond_12

    const/4 v6, 0x4

    .line 183
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    goto :goto_6

    :cond_12
    const/4 v6, 0x4

    :goto_6
    if-eqz v16, :cond_17

    .line 188
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 190
    invoke-virtual {v1, v6}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 191
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v8, v8, -0xc

    invoke-direct {v0, v1, v8}, Lch/blinkenlights/bastp/Mp4File;->readIntoBuffer(Ljava/io/RandomAccessFile;I)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    move-object v7, v4

    goto :goto_8

    .line 195
    :cond_13
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v4, 0x8

    .line 197
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    if-nez v7, :cond_14

    move-object/from16 v7, v17

    :cond_14
    add-int/lit8 v8, v8, -0x10

    .line 202
    invoke-direct {v0, v1, v8}, Lch/blinkenlights/bastp/Mp4File;->readIntoBuffer(Ljava/io/RandomAccessFile;I)[B

    move-result-object v4

    .line 204
    sget-object v8, Lch/blinkenlights/bastp/Mp4File;->ALLOWED_TAGS:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 206
    sget-object v8, Lch/blinkenlights/bastp/Mp4File;->BINARY_TAGS:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v0, v4, v10}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_15
    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v4, v8

    .line 210
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v7, v4}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_16
    const/4 v7, 0x0

    :cond_17
    :goto_8
    const/4 v4, 0x4

    goto/16 :goto_0

    :catch_0
    :cond_18
    return-object v2
.end method
