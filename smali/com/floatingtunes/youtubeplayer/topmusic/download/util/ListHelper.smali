.class public final Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;
.super Ljava/lang/Object;
.source "ListHelper.java"


# static fields
.field private static final AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIGH_RESOLUTION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    .line 25
    new-array v1, v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 26
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 29
    new-array v1, v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    aput-object v2, v1, v3

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    aput-object v2, v1, v4

    sget-object v2, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    aput-object v2, v1, v5

    .line 30
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 32
    new-array v0, v0, [Lorg/schabi/newpipe/extractor/MediaFormat;

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    aput-object v1, v0, v3

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/schabi/newpipe/extractor/MediaFormat;->MP3:Lorg/schabi/newpipe/extractor/MediaFormat;

    aput-object v1, v0, v5

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    const-string v0, "1440p"

    const-string v1, "2160p"

    const-string v2, "1440p60"

    const-string v3, "2160p60"

    .line 35
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/List;

    return-void
.end method

.method private static compareAudioStreamBitrate(Lorg/schabi/newpipe/extractor/stream/AudioStream;Lorg/schabi/newpipe/extractor/stream/AudioStream;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    return v1

    .line 384
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v3

    if-ge v2, v3, :cond_2

    return v0

    .line 387
    :cond_2
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/AudioStream;->getAverageBitrate()I

    move-result v2

    if-le v0, v2, :cond_3

    return v1

    .line 392
    :cond_3
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const-string v0, "1"

    const-string v1, "0p\\d+$"

    .line 396
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    const-string v3, "[^\\d.]"

    .line 397
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 396
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 398
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static compareVideoStreamResolution(Lorg/schabi/newpipe/extractor/stream/VideoStream;Lorg/schabi/newpipe/extractor/stream/VideoStream;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 412
    :cond_1
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 418
    :cond_2
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->VIDEO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method private static computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;
    .locals 2

    .line 106
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f11005d

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 113
    :goto_0
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 114
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 115
    invoke-static {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ge p0, v0, :cond_2

    :cond_1
    move-object p1, p2

    :cond_2
    return-object p1
.end method

.method public static getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;)I"
        }
    .end annotation

    const v0, 0x7f1100c4

    const v1, 0x7f1100c5

    .line 70
    invoke-static {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    .line 75
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->isLimitingDataUsage(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 76
    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getMostCompactAudioIndex(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    return p0

    .line 78
    :cond_0
    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getHighestQualityAudioIndex(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method private static getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 2

    .line 345
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 347
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 348
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v1

    if-nez v1, :cond_0

    .line 352
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 353
    invoke-static {p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)I"
        }
    .end annotation

    const v0, 0x7f1100cd

    const v1, 0x7f1100ce

    .line 41
    invoke-static {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->computeDefaultResolution(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {p0, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static getDefaultResolutionIndex(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p3, :cond_3

    .line 129
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 131
    invoke-static {p3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->sortStreamList(Ljava/util/List;Z)V

    .line 132
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 136
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getVideoStreamIndex(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static getDefaultResolutionWithDefaultFormat(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)I"
        }
    .end annotation

    const v0, 0x7f1100d1

    const v1, 0x7f1100d2

    .line 340
    invoke-static {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    const v1, 0x7f11005d

    .line 341
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getDefaultResolutionIndex(Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static getHighestQualityAudioIndex(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    move-object v2, p0

    const/4 p0, -0x1

    :goto_0
    if-ne p0, v0, :cond_6

    const/4 v3, 0x0

    move-object v4, v1

    .line 226
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 227
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v6

    if-ne v6, v2, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    sget-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->AUDIO_FORMAT_QUALITY_RANKING:Ljava/util/List;

    .line 229
    invoke-static {v4, v5, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->compareAudioStreamBitrate(Lorg/schabi/newpipe/extractor/stream/AudioStream;Lorg/schabi/newpipe/extractor/stream/AudioStream;Ljava/util/List;)I

    move-result v6

    if-gez v6, :cond_2

    :cond_1
    move p0, v3

    move-object v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ne p0, v0, :cond_4

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    const/4 p0, -0x1

    :cond_6
    :goto_2
    return p0
.end method

.method private static getMediaFormatFromKey(Landroid/content/Context;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;
    .locals 1

    const v0, 0x7f110311

    .line 361
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBM:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_0

    :cond_0
    const v0, 0x7f11030f

    .line 363
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->MPEG_4:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_0

    :cond_1
    const v0, 0x7f11030e

    .line 365
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->v3GPP:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_0

    :cond_2
    const v0, 0x7f110052

    .line 367
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->WEBMA:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_0

    :cond_3
    const v0, 0x7f110051

    .line 369
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 370
    sget-object p0, Lorg/schabi/newpipe/extractor/MediaFormat;->M4A:Lorg/schabi/newpipe/extractor/MediaFormat;

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static getMostCompactAudioIndex(Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    move-object v2, p0

    const/4 p0, -0x1

    :goto_0
    if-ne p0, v0, :cond_6

    const/4 v3, 0x0

    move-object v4, v1

    .line 257
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 258
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v5}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v6

    if-ne v6, v2, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    sget-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->AUDIO_FORMAT_EFFICIENCY_RANKING:Ljava/util/List;

    .line 260
    invoke-static {v4, v5, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->compareAudioStreamBitrate(Lorg/schabi/newpipe/extractor/stream/AudioStream;Lorg/schabi/newpipe/extractor/stream/AudioStream;Ljava/util/List;)I

    move-result v6

    if-lez v6, :cond_2

    :cond_1
    move p0, v3

    move-object v4, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-ne p0, v0, :cond_4

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    const/4 p0, -0x1

    :cond_6
    :goto_2
    return p0
.end method

.method private static getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 434
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->isMeteredNetwork(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 435
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v2, 0x7f1101b4

    .line 436
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1101b5

    .line 438
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 439
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;Z)",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const v1, 0x7f1102b9

    .line 95
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const v1, 0x7f1100d1

    const v2, 0x7f1100d2

    .line 96
    invoke-static {p0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getDefaultFormat(Landroid/content/Context;II)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p0

    .line 98
    invoke-static {p0, v0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getSortedStreamVideosList(Lorg/schabi/newpipe/extractor/MediaFormat;ZLjava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static getSortedStreamVideosList(Lorg/schabi/newpipe/extractor/MediaFormat;ZLjava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            "Z",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;Z)",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz p3, :cond_1

    .line 162
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-nez p1, :cond_0

    .line 163
    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/List;

    invoke-virtual {v2}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 168
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-nez p1, :cond_2

    .line 169
    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->HIGH_RESOLUTION_LIST:Ljava/util/List;

    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 170
    :cond_2
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 178
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 179
    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object p3

    if-ne p3, p0, :cond_5

    invoke-virtual {p2}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 182
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 183
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-static {v0, p4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->sortStreamList(Ljava/util/List;Z)V

    return-object v0
.end method

.method static getVideoStreamIndex(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/schabi/newpipe/extractor/MediaFormat;",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "p"

    const-string v4, "p\\d+$"

    .line 292
    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    .line 294
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_6

    if-nez v1, :cond_0

    const/4 v13, 0x0

    goto :goto_1

    .line 295
    :cond_0
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v13}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v13

    .line 296
    :goto_1
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    invoke-virtual {v14}, Lorg/schabi/newpipe/extractor/stream/VideoStream;->getResolution()Ljava/lang/String;

    move-result-object v14

    .line 297
    invoke-virtual {v14, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-ne v13, v1, :cond_1

    .line 299
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    move v8, v7

    :cond_1
    if-ne v13, v1, :cond_2

    .line 303
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v9, v7

    :cond_2
    if-ne v10, v6, :cond_3

    .line 307
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    move v10, v7

    :cond_3
    if-ne v11, v6, :cond_4

    .line 311
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move v11, v7

    :cond_4
    if-ne v12, v6, :cond_5

    .line 315
    invoke-static {v15, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->compareVideoStreamResolution(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_5

    move v12, v7

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    if-eq v8, v6, :cond_7

    return v8

    :cond_7
    if-eq v9, v6, :cond_8

    return v9

    :cond_8
    if-eq v10, v6, :cond_9

    return v10

    :cond_9
    if-eq v11, v6, :cond_a

    return v11

    :cond_a
    return v12
.end method

.method private static isLimitingDataUsage(Landroid/content/Context;)Z
    .locals 0

    .line 424
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->getResolutionLimit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMeteredNetwork(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 451
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_1

    .line 452
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$sortStreamList$0(ZLorg/schabi/newpipe/extractor/stream/VideoStream;Lorg/schabi/newpipe/extractor/stream/VideoStream;)I
    .locals 0

    .line 209
    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ListHelper;->compareVideoStreamResolution(Lorg/schabi/newpipe/extractor/stream/VideoStream;Lorg/schabi/newpipe/extractor/stream/VideoStream;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    neg-int p1, p1

    :goto_0
    return p1
.end method

.method private static sortStreamList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;Z)V"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ListHelper$TSD_EX8JrJi4Ih2NAv3jByxl5-U;

    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/-$$Lambda$ListHelper$TSD_EX8JrJi4Ih2NAv3jByxl5-U;-><init>(Z)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
