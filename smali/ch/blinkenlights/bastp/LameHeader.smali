.class public Lch/blinkenlights/bastp/LameHeader;
.super Lch/blinkenlights/bastp/Common;
.source "LameHeader.java"


# static fields
.field private static sampleRates:[[I

.field private static samplesPerFrame:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x4

    .line 31
    new-array v1, v0, [[I

    const/4 v2, 0x3

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    const/4 v6, 0x2

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    sput-object v1, Lch/blinkenlights/bastp/LameHeader;->sampleRates:[[I

    .line 39
    new-array v1, v0, [[I

    new-array v3, v0, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v4

    new-array v3, v0, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v5

    new-array v3, v0, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v6

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    aput-object v0, v1, v2

    sput-object v1, Lch/blinkenlights/bastp/LameHeader;->samplesPerFrame:[[I

    return-void

    :array_0
    .array-data 4
        0x2b11
        0x2ee0
        0x1f40
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x5622
        0x5dc0
        0x3e80
    .end array-data

    :array_3
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x240
        0x480
        0x180
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x240
        0x480
        0x180
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x480
        0x480
        0x180
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lch/blinkenlights/bastp/Common;-><init>()V

    return-void
.end method

.method private parseV1Header(Ljava/io/RandomAccessFile;J)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x3

    .line 72
    new-array v1, v1, [B

    const/4 v2, 0x4

    .line 73
    new-array v2, v2, [B

    const/16 v3, 0x1e

    .line 74
    new-array v3, v3, [B

    .line 76
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 77
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 79
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/lang/String;-><init>([B)V

    const-string p3, "TAG"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "TITLE"

    const-string p3, "ARTIST"

    const-string v4, "ALBUM"

    .line 80
    filled-new-array {p2, p3, v4}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 81
    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->read([B)I

    .line 82
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 84
    invoke-virtual {p0, v0, p3, v4}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 89
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_2

    const-string p3, "YEAR"

    .line 91
    invoke-virtual {p0, v0, p3, p2}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 p2, 0x1c

    .line 93
    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 94
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 p1, 0x0

    .line 96
    aget-byte p2, v1, p1

    const-string p3, "%d"

    const/4 v2, 0x1

    if-nez p2, :cond_3

    aget-byte p2, v1, v2

    if-eqz p2, :cond_3

    .line 97
    new-array p2, v2, [Ljava/lang/Object;

    aget-byte v3, v1, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, p2, p1

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "TRACKNUMBER"

    invoke-virtual {p0, v0, v3, p2}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 p2, 0x2

    .line 99
    aget-byte v3, v1, p2

    if-eqz v3, :cond_4

    .line 100
    new-array v2, v2, [Ljava/lang/Object;

    aget-byte p2, v1, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "GENRE"

    invoke-virtual {p0, v0, p2, p1}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 52
    invoke-virtual {p0, p1, v0, v1}, Lch/blinkenlights/bastp/LameHeader;->parseLameHeader(Ljava/io/RandomAccessFile;J)Ljava/util/HashMap;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x80

    sub-long/2addr v1, v3

    invoke-direct {p0, p1, v1, v2}, Lch/blinkenlights/bastp/LameHeader;->parseV1Header(Ljava/io/RandomAccessFile;J)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "REPLAYGAIN_TRACK_GAIN"

    const-string v2, "REPLAYGAIN_ALBUM_GAIN"

    .line 56
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 58
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public parseLameHeader(Ljava/io/RandomAccessFile;J)Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xc

    .line 109
    new-array v1, v1, [B

    const-wide/16 v2, 0x24

    add-long/2addr v2, p2

    .line 111
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 112
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 114
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v1, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x7

    .line 115
    aget-byte v4, v1, v4

    invoke-virtual {p0, v4}, Lch/blinkenlights/bastp/Common;->b2u(B)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    .line 118
    invoke-virtual {p0, v1, v4}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result v4

    .line 119
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 120
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 122
    invoke-virtual {p0, v1, v3}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result v5

    shr-int/lit8 v6, v5, 0xa

    and-int/lit8 v6, v6, 0x3

    shr-int/lit8 v7, v5, 0x11

    and-int/lit8 v7, v7, 0x3

    shr-int/lit8 v5, v5, 0x13

    and-int/lit8 v5, v5, 0x3

    .line 128
    sget-object v8, Lch/blinkenlights/bastp/LameHeader;->sampleRates:[[I

    array-length v9, v8

    if-ge v5, v9, :cond_0

    aget-object v9, v8, v5

    array-length v9, v9

    if-ge v6, v9, :cond_0

    sget-object v9, Lch/blinkenlights/bastp/LameHeader;->samplesPerFrame:[[I

    aget-object v10, v9, v5

    array-length v10, v10

    if-ge v7, v10, :cond_0

    .line 129
    aget-object v8, v8, v5

    aget v6, v8, v6

    .line 130
    aget-object v5, v9, v5

    aget v5, v5, v7

    if-lez v6, :cond_0

    if-lez v5, :cond_0

    int-to-double v7, v5

    int-to-double v5, v6

    div-double/2addr v7, v5

    int-to-double v4, v4

    mul-double v7, v7, v4

    double-to-int v4, v7

    .line 133
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "duration"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v4, "Info"

    .line 139
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "Xing"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const-wide/16 v4, 0xab

    add-long/2addr p2, v4

    .line 140
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 141
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 143
    invoke-virtual {p0, v1, v3}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p1

    shr-int/lit8 p2, p1, 0x10

    const p3, 0xffff

    and-int/2addr p1, p3

    and-int/lit16 p3, p2, 0x1ff

    int-to-float p3, p3

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr p3, v1

    and-int/lit16 v2, p1, 0x1ff

    int-to-float v2, v2

    div-float/2addr v2, v1

    and-int/lit16 v1, p2, 0x200

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v1, :cond_2

    mul-float p3, p3, v3

    :cond_2
    and-int/lit16 p1, p1, 0x200

    if-eqz p1, :cond_3

    mul-float v2, v2, v3

    :cond_3
    const p1, 0xe000

    and-int/2addr p1, p2

    const/16 p2, 0x2000

    const-string v1, " dB"

    if-ne p1, p2, :cond_4

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "REPLAYGAIN_TRACK_GAIN"

    invoke-virtual {p0, v0, p3, p2}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 p2, 0x4000

    if-ne p1, p2, :cond_5

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "REPLAYGAIN_ALBUM_GAIN"

    invoke-virtual {p0, v0, p2, p1}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
