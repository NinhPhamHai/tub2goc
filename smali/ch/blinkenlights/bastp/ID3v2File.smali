.class public Lch/blinkenlights/bastp/ID3v2File;
.super Lch/blinkenlights/bastp/Common;
.source "ID3v2File.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/bastp/ID3v2File$TagItem;
    }
.end annotation


# static fields
.field private static final sOggNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    .line 38
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TITLE"

    const-string v2, "TIT2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v2, "ALBUM"

    const-string v3, "TALB"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v3, "ARTIST"

    const-string v4, "TPE1"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v4, "ALBUMARTIST"

    const-string v5, "TPE2"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v5, "YEAR"

    const-string v6, "TYER"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v6, "TPOS"

    const-string v7, "DISCNUMBER"

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v6, "TRACKNUMBER"

    const-string v7, "TRCK"

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v7, "GENRE"

    const-string v8, "TCON"

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v8, "COMPOSER"

    const-string v9, "TCOM"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v9, "TT2"

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TAL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TP1"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TP2"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TYE"

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TRK"

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TCO"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    const-string v1, "TCM"

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lch/blinkenlights/bastp/Common;-><init>()V

    return-void
.end method

.method private calculateFrameLength([BII)I
    .locals 1

    const/4 v0, 0x3

    if-ge p3, v0, :cond_0

    .line 128
    aget-byte p3, p1, p2

    shl-int/lit8 p3, p3, 0x10

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/2addr p3, v0

    add-int/lit8 p2, p2, 0x2

    aget-byte p1, p1, p2

    add-int/2addr p3, p1

    return p3

    .line 130
    :cond_0
    invoke-virtual {p0, p1, p2}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result p1

    const/4 p2, 0x4

    if-ge p3, p2, :cond_1

    return p1

    .line 135
    :cond_1
    invoke-direct {p0, p1}, Lch/blinkenlights/bastp/ID3v2File;->unsyncsafe(I)I

    move-result p1

    return p1
.end method

.method private getDecodedString([B)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 224
    aget-byte v1, p1, v0

    const/16 v2, 0xff

    and-int/2addr v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, ""

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const-string v1, "ISO-8859-1"

    :cond_0
    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    :try_start_0
    const-string v1, "UTF-8"

    goto :goto_0

    :cond_2
    const-string v1, "UTF-16BE"

    goto :goto_1

    :cond_3
    const-string v1, "UTF-16"

    .line 239
    array-length v7, p1

    const/4 v8, 0x4

    if-le v7, v8, :cond_0

    .line 240
    aget-byte v7, p1, v5

    and-int/2addr v7, v2

    const/16 v9, 0xfe

    if-ne v7, v9, :cond_4

    aget-byte v7, p1, v4

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_4

    aget-byte v7, p1, v3

    and-int/2addr v7, v2

    if-nez v7, :cond_4

    aget-byte v7, p1, v8

    and-int/2addr v7, v2

    if-nez v7, :cond_4

    .line 242
    aget-byte v2, p1, v4

    aput-byte v2, p1, v3

    .line 243
    aget-byte v2, p1, v5

    aput-byte v2, p1, v8

    goto :goto_1

    .line 245
    :cond_4
    aget-byte v7, p1, v5

    and-int/2addr v7, v2

    if-ne v7, v2, :cond_0

    aget-byte v7, p1, v4

    and-int/2addr v7, v2

    if-nez v7, :cond_0

    aget-byte v3, p1, v3

    and-int/2addr v2, v3

    if-ne v2, v9, :cond_0

    .line 247
    aget-byte v2, p1, v5

    aput-byte v2, p1, v4

    const/4 v3, 0x2

    .line 257
    :goto_1
    new-instance v2, Ljava/lang/String;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-direct {v2, p1, v3, v4, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u0000"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 261
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v5

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v2, v6

    :catch_1
    :cond_5
    :goto_2
    return-object v2
.end method

.method private normalizeTaginfo(Ljava/lang/String;[B)Lch/blinkenlights/bastp/ID3v2File$TagItem;
    .locals 3

    .line 203
    new-instance v0, Lch/blinkenlights/bastp/ID3v2File$TagItem;

    const-string v1, ""

    invoke-direct {v0, p0, v1, v1}, Lch/blinkenlights/bastp/ID3v2File$TagItem;-><init>(Lch/blinkenlights/bastp/ID3v2File;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v1, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    sget-object v1, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lch/blinkenlights/bastp/ID3v2File$TagItem;->key:Ljava/lang/String;

    .line 207
    invoke-direct {p0, p2}, Lch/blinkenlights/bastp/ID3v2File;->getDecodedString([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "TXXX"

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    invoke-direct {p0, p2}, Lch/blinkenlights/bastp/ID3v2File;->getDecodedString([B)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 213
    array-length v1, p1

    if-ne v1, v2, :cond_1

    aget-object v1, p1, p2

    const-string v2, "^(?i)REPLAYGAIN_(ALBUM|TRACK)_GAIN$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    aget-object p2, p1, p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lch/blinkenlights/bastp/ID3v2File$TagItem;->key:Ljava/lang/String;

    const/4 p2, 0x1

    .line 215
    aget-object p1, p1, p2

    iput-object p1, v0, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v0
.end method

.method private splitTagPayload(Lch/blinkenlights/bastp/ID3v2File$TagItem;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/blinkenlights/bastp/ID3v2File$TagItem;",
            ")",
            "Ljava/util/ArrayList<",
            "Lch/blinkenlights/bastp/ID3v2File$TagItem;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    sget-object v1, Lch/blinkenlights/bastp/ID3v2File;->sOggNames:Ljava/util/HashMap;

    iget-object v2, p1, Lch/blinkenlights/bastp/ID3v2File$TagItem;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p1, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-lt v1, v3, :cond_2

    iget-object v1, p1, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    iget-object v1, p1, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    const-string v3, "\u0000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v1, v2

    .line 187
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 188
    new-instance v6, Lch/blinkenlights/bastp/ID3v2File$TagItem;

    iget-object v7, p1, Lch/blinkenlights/bastp/ID3v2File$TagItem;->key:Ljava/lang/String;

    invoke-direct {v6, p0, v7, v5}, Lch/blinkenlights/bastp/ID3v2File$TagItem;-><init>(Lch/blinkenlights/bastp/ID3v2File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :cond_2
    if-nez v2, :cond_3

    .line 196
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private unsyncsafe(I)I
    .locals 2

    const/high16 v0, 0x7f000000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x3

    const/high16 v1, 0x7f0000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    and-int/lit16 v1, p1, 0x7f00

    shr-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x7f

    shr-int/lit8 p1, p1, 0x0

    or-int/2addr p1, v0

    return p1
.end method


# virtual methods
.method public getTags(Ljava/io/RandomAccessFile;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xa

    .line 75
    new-array v1, v0, [B

    const-wide/16 v2, 0x0

    .line 78
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 79
    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->read([B)I

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0, v1, v2}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x1

    .line 82
    invoke-virtual {p0, v1, v4}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    const/4 v5, 0x2

    .line 83
    invoke-virtual {p0, v1, v5}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    .line 84
    invoke-virtual {p0, v1, v6}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result v1

    .line 85
    invoke-direct {p0, v1}, Lch/blinkenlights/bastp/ID3v2File;->unsyncsafe(I)I

    move-result v1

    const/4 v7, 0x4

    if-lt v3, v7, :cond_0

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    .line 95
    new-array v4, v6, [B

    .line 96
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    .line 97
    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    .line 100
    invoke-virtual {p0, v4, v2}, Lch/blinkenlights/bastp/Common;->b2be32([BI)I

    move-result v2

    int-to-long v7, v2

    add-long/2addr v5, v7

    .line 101
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_1
    int-to-long v4, v1

    .line 106
    invoke-virtual {p0, p1, v4, v5, v3}, Lch/blinkenlights/bastp/ID3v2File;->parse_v3_frames(Ljava/io/RandomAccessFile;JI)Ljava/util/HashMap;

    move-result-object p1

    add-int/2addr v1, v0

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "_hdrlen"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public parse_v3_frames(Ljava/io/RandomAccessFile;JI)Ljava/util/HashMap;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 142
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x3

    :goto_0
    if-lt v2, v4, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    :cond_1
    const/4 v4, 0x6

    .line 147
    :goto_1
    new-array v4, v4, [B

    const-wide/16 v6, 0x0

    :cond_2
    :goto_2
    cmp-long v8, v6, p2

    if-gez v8, :cond_5

    .line 151
    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 152
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v5}, Ljava/lang/String;-><init>([BII)V

    .line 153
    invoke-direct {v0, v4, v5, v2}, Lch/blinkenlights/bastp/ID3v2File;->calculateFrameLength([BII)I

    move-result v10

    sub-long v11, p2, v6

    const/4 v13, 0x1

    if-lt v10, v13, :cond_5

    int-to-long v14, v10

    cmp-long v16, v14, v11

    if-lez v16, :cond_3

    goto :goto_4

    .line 159
    :cond_3
    new-array v10, v10, [B

    .line 160
    invoke-virtual {v1, v10}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v6, v11

    .line 162
    invoke-virtual {v8, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v11, "T"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 163
    invoke-direct {v0, v8, v10}, Lch/blinkenlights/bastp/ID3v2File;->normalizeTaginfo(Ljava/lang/String;[B)Lch/blinkenlights/bastp/ID3v2File$TagItem;

    move-result-object v8

    .line 164
    iget-object v9, v8, Lch/blinkenlights/bastp/ID3v2File$TagItem;->key:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 165
    invoke-direct {v0, v8}, Lch/blinkenlights/bastp/ID3v2File;->splitTagPayload(Lch/blinkenlights/bastp/ID3v2File$TagItem;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lch/blinkenlights/bastp/ID3v2File$TagItem;

    .line 166
    iget-object v10, v9, Lch/blinkenlights/bastp/ID3v2File$TagItem;->key:Ljava/lang/String;

    iget-object v9, v9, Lch/blinkenlights/bastp/ID3v2File$TagItem;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v10, v9}, Lch/blinkenlights/bastp/Common;->addTagEntry(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v9, "RVA2"

    .line 170
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    :goto_4
    return-object v3
.end method
