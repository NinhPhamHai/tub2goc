.class public Lch/blinkenlights/bastp/OpusFile;
.super Lch/blinkenlights/bastp/OggFile;
.source "OpusFile.java"


# static fields
.field public static final FORBIDDEN_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "REPLAYGAIN_TRACK_GAIN"

    const-string v1, "REPLAYGAIN_TRACK_PEAK"

    const-string v2, "REPLAYGAIN_ALBUM_GAIN"

    const-string v3, "REPLAYGAIN_ALBUM_PEAK"

    .line 27
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lch/blinkenlights/bastp/OpusFile;->FORBIDDEN_TAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lch/blinkenlights/bastp/OggFile;-><init>()V

    return-void
.end method

.method private calculate_gain(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4

    .line 63
    sget-object v0, Lch/blinkenlights/bastp/OpusFile;->FORBIDDEN_TAGS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 64
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "header_gain"

    .line 67
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "R128_BASTP_BASE_GAIN"

    invoke-virtual {p0, p2, v0, p1}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private parse_opus_head(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x13

    .line 89
    new-array v1, v1, [B

    .line 90
    array-length v2, v1

    int-to-long v2, v2

    cmp-long v4, p4, v2

    if-ltz v4, :cond_0

    .line 91
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 92
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 93
    new-instance p1, Ljava/lang/String;

    const/4 p2, 0x0

    const/16 p3, 0x8

    invoke-direct {p1, v1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    const-string p2, "OpusHead"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 94
    aget-byte p1, v1, p3

    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "version"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x9

    .line 95
    aget-byte p1, v1, p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "channels"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xa

    .line 96
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le16([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "pre_skip"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0xc

    .line 97
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le32([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "sampling_rate"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x10

    .line 98
    invoke-virtual {p0, v1, p1}, Lch/blinkenlights/bastp/Common;->b2le16([BI)I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "header_gain"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x12

    .line 99
    aget-byte p1, v1, p1

    invoke-virtual {p0, p1}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "channel_map"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private parse_opus_vorbis_comment(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v7, p0

    const/16 v0, 0x8

    .line 112
    new-array v1, v0, [B

    const/4 v2, 0x0

    const-wide/16 v3, 0x8

    cmp-long v5, p4, v3

    if-ltz v5, :cond_1

    .line 118
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v5, p1

    .line 119
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 121
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v6, v1, v8, v0}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "OpusTags"

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

    .line 124
    invoke-virtual/range {v0 .. v6}, Lch/blinkenlights/bastp/Common;->parse_vorbis_comment(Ljava/io/RandomAccessFile;Lch/blinkenlights/bastp/PageInfo$PageParser;JJ)Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Damaged packet found!"

    .line 122
    invoke-virtual {p0, v0}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string v0, "opus comment field is too short!"

    .line 115
    invoke-virtual {p0, v0}, Lch/blinkenlights/bastp/Common;->xdie(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Lch/blinkenlights/bastp/OggFile;->parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;

    move-result-object v2

    .line 40
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 41
    iget-wide v4, v2, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    add-long v8, v4, v0

    iget-wide v10, v2, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v11}, Lch/blinkenlights/bastp/OpusFile;->parse_opus_head(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;

    move-result-object v4

    .line 42
    iget-wide v5, v2, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    iget-wide v7, v2, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    add-long/2addr v5, v7

    add-long/2addr v5, v0

    const-string v0, "version"

    .line 46
    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    .line 48
    invoke-virtual {p0, p1, v5, v6}, Lch/blinkenlights/bastp/OggFile;->parse_stream_page(Ljava/io/RandomAccessFile;J)Lch/blinkenlights/bastp/PageInfo;

    move-result-object v0

    .line 49
    iget-wide v1, v0, Lch/blinkenlights/bastp/PageInfo;->header_len:J

    add-long v9, v5, v1

    iget-wide v11, v0, Lch/blinkenlights/bastp/PageInfo;->payload_len:J

    move-object v7, p0

    move-object v8, p1

    invoke-direct/range {v7 .. v12}, Lch/blinkenlights/bastp/OpusFile;->parse_opus_vorbis_comment(Ljava/io/RandomAccessFile;JJ)Ljava/util/HashMap;

    move-result-object v3

    .line 51
    invoke-direct {p0, v4, v3}, Lch/blinkenlights/bastp/OpusFile;->calculate_gain(Ljava/util/HashMap;Ljava/util/HashMap;)V

    :cond_0
    return-object v3
.end method
