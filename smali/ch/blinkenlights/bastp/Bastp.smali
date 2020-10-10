.class public Lch/blinkenlights/bastp/Bastp;
.super Ljava/lang/Object;
.source "Bastp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private inheritTag(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 1

    .line 112
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 13

    const-string v0, "_hdrlen"

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0xc

    .line 50
    new-array v3, v2, [B

    .line 53
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 54
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 55
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "fLaC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "type"

    if-eqz v7, :cond_0

    .line 56
    :try_start_1
    new-instance v0, Lch/blinkenlights/bastp/FlacFile;

    invoke-direct {v0}, Lch/blinkenlights/bastp/FlacFile;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/FlacFile;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    const-string p1, "FLAC"

    .line 57
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 59
    :cond_0
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v9, "OggS"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 61
    new-instance v0, Lch/blinkenlights/bastp/OpusFile;

    invoke-direct {v0}, Lch/blinkenlights/bastp/OpusFile;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/OpusFile;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string p1, "OPUS"

    .line 63
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 65
    :cond_1
    new-instance v0, Lch/blinkenlights/bastp/OggFile;

    invoke-direct {v0}, Lch/blinkenlights/bastp/OggFile;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/OggFile;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    const-string p1, "OGG"

    .line 66
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 69
    :cond_2
    aget-byte v7, v3, v6

    const/4 v9, 0x1

    const/4 v10, -0x1

    if-ne v7, v10, :cond_3

    aget-byte v7, v3, v9

    const/4 v11, -0x5

    if-ne v7, v11, :cond_3

    .line 70
    new-instance v0, Lch/blinkenlights/bastp/LameHeader;

    invoke-direct {v0}, Lch/blinkenlights/bastp/LameHeader;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/LameHeader;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    const-string p1, "MP3/Lame"

    .line 71
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x3

    .line 73
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v11, "ID3"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 74
    new-instance v2, Lch/blinkenlights/bastp/ID3v2File;

    invoke-direct {v2}, Lch/blinkenlights/bastp/ID3v2File;-><init>()V

    invoke-virtual {v2, p1}, Lch/blinkenlights/bastp/ID3v2File;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 77
    new-instance v2, Lch/blinkenlights/bastp/LameHeader;

    invoke-direct {v2}, Lch/blinkenlights/bastp/LameHeader;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lch/blinkenlights/bastp/LameHeader;->parseLameHeader(Ljava/io/RandomAccessFile;J)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "REPLAYGAIN_TRACK_GAIN"

    .line 79
    invoke-direct {p0, v0, p1, v1}, Lch/blinkenlights/bastp/Bastp;->inheritTag(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const-string v0, "REPLAYGAIN_ALBUM_GAIN"

    .line 80
    invoke-direct {p0, v0, p1, v1}, Lch/blinkenlights/bastp/Bastp;->inheritTag(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    const-string v0, "duration"

    .line 81
    invoke-direct {p0, v0, p1, v1}, Lch/blinkenlights/bastp/Bastp;->inheritTag(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    :cond_4
    const-string p1, "MP3/ID3v2"

    .line 83
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x8

    .line 85
    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v11, "ftyp"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0xb

    .line 87
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "M4A"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 88
    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v11, "M4V"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 89
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v11, "mp42"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 90
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v11, "isom"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 91
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dash"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 93
    :cond_6
    new-instance v0, Lch/blinkenlights/bastp/Mp4File;

    invoke-direct {v0}, Lch/blinkenlights/bastp/Mp4File;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/Mp4File;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    const-string p1, "MP4"

    .line 94
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 96
    :cond_7
    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MThd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 97
    new-instance v0, Lch/blinkenlights/bastp/RawFile;

    invoke-direct {v0}, Lch/blinkenlights/bastp/RawFile;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/RawFile;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    const-string p1, "MIDI"

    .line 98
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_8
    aget-byte v0, v3, v6

    if-ne v0, v10, :cond_9

    aget-byte v0, v3, v9

    const/16 v2, 0xf0

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_9

    .line 101
    new-instance v0, Lch/blinkenlights/bastp/RawFile;

    invoke-direct {v0}, Lch/blinkenlights/bastp/RawFile;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/RawFile;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v1

    const-string p1, "ADTS"

    .line 102
    invoke-virtual {v1, v8, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_9
    :goto_0
    return-object v1
.end method

.method public getTags(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 3

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v1}, Lch/blinkenlights/bastp/Bastp;->getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;

    move-result-object v0

    .line 39
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
