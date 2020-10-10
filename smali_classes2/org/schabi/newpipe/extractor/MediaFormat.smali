.class public final enum Lorg/schabi/newpipe/extractor/MediaFormat;
.super Ljava/lang/Enum;
.source "MediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/schabi/newpipe/extractor/MediaFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

.field public static final enum v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;


# instance fields
.field public final id:I

.field public final mimeType:Ljava/lang/String;

.field public final name:Ljava/lang/String;

.field public final suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v7, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v1, "MPEG_4"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "MPEG-4"

    const-string v5, "mp4"

    const-string v6, "video/mp4"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 33
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "v3GPP"

    const/4 v10, 0x1

    const/16 v11, 0x10

    const-string v12, "3GPP"

    const-string v13, "3gp"

    const-string v14, "video/3gpp"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 34
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v2, "WEBM"

    const/4 v3, 0x2

    const/16 v4, 0x20

    const-string v5, "WebM"

    const-string v6, "webm"

    const-string v7, "video/webm"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 36
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "M4A"

    const/4 v10, 0x3

    const/16 v11, 0x100

    const-string v12, "m4a"

    const-string v13, "m4a"

    const-string v14, "audio/mp4"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v2, "WEBMA"

    const/4 v3, 0x4

    const/16 v4, 0x200

    const-string v5, "WebM"

    const-string v6, "webm"

    const-string v7, "audio/webm"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 38
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "MP3"

    const/4 v10, 0x5

    const/16 v11, 0x300

    const-string v12, "MP3"

    const-string v13, "mp3"

    const-string v14, "audio/mpeg"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 39
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v2, "OPUS"

    const/4 v3, 0x6

    const/16 v4, 0x400

    const-string v5, "opus"

    const-string v6, "opus"

    const-string v7, "audio/opus"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 40
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "OGG"

    const/4 v10, 0x7

    const/16 v11, 0x500

    const-string v12, "ogg"

    const-string v13, "ogg"

    const-string v14, "audio/ogg"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 42
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v2, "VTT"

    const/16 v3, 0x8

    const/16 v4, 0x1000

    const-string v5, "WebVTT"

    const-string v6, "vtt"

    const-string v7, "text/vtt"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 43
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "TTML"

    const/16 v10, 0x9

    const/16 v11, 0x2000

    const-string v12, "Timed Text Markup Language"

    const-string v13, "ttml"

    const-string v14, "application/ttml+xml"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 44
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v2, "TRANSCRIPT1"

    const/16 v3, 0xa

    const/16 v4, 0x3000

    const-string v5, "TranScript v1"

    const-string v6, "srv1"

    const-string v7, "text/xml"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 45
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "TRANSCRIPT2"

    const/16 v10, 0xb

    const/16 v11, 0x4000

    const-string v12, "TranScript v2"

    const-string v13, "srv2"

    const-string v14, "text/xml"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 46
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v2, "TRANSCRIPT3"

    const/16 v3, 0xc

    const/16 v4, 0x5000

    const-string v5, "TranScript v3"

    const-string v6, "srv3"

    const-string v7, "text/xml"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

    .line 47
    new-instance v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    const-string v9, "SRT"

    const/16 v10, 0xd

    const/16 v11, 0x6000

    const-string v12, "SubRip file format"

    const-string v13, "srt"

    const-string v14, "text/srt"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/schabi/newpipe/extractor/MediaFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v0, 0xe

    .line 29
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->OPUS:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->OGG:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->VTT:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->TTML:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT1:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT2:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->TRANSCRIPT3:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->SRT:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->id:I

    .line 56
    iput-object p4, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    .line 58
    iput-object p6, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public static getFromMimeType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 5

    .line 110
    invoke-static {}, Lorg/schabi/newpipe/extractor/MediaFormat;->values()[Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 111
    iget-object v4, v3, Lorg/schabi/newpipe/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 29
    const-class v0, Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    .line 29
    sget-object v0, Lorg/schabi/newpipe/extractor/MediaFormat;->$VALUES:[Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/extractor/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/MediaFormat;->suffix:Ljava/lang/String;

    return-object v0
.end method
