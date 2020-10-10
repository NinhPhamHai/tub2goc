.class public Lch/blinkenlights/android/vanilla/BastpUtil;
.super Ljava/lang/Object;
.source "BastpUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;,
        Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;
    }
.end annotation


# instance fields
.field private rgCache:Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;

    const/16 v1, 0x40

    invoke-direct {v0, p0, v1}, Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;-><init>(Lch/blinkenlights/android/vanilla/BastpUtil;I)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/BastpUtil;->rgCache:Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;

    return-void
.end method

.method private getFloatFromString(Ljava/lang/String;)F
    .locals 2

    :try_start_0
    const-string v0, "[^0-9.-]"

    const-string v1, ""

    .line 123
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getReplayGainValuesFromFile(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;
    .locals 7

    .line 73
    new-instance v0, Lch/blinkenlights/bastp/Bastp;

    invoke-direct {v0}, Lch/blinkenlights/bastp/Bastp;-><init>()V

    invoke-virtual {v0, p1}, Lch/blinkenlights/bastp/Bastp;->getTags(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 74
    new-instance v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;-><init>(Lch/blinkenlights/android/vanilla/BastpUtil;)V

    const-string v1, "REPLAYGAIN_TRACK_GAIN"

    .line 77
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/BastpUtil;->getFloatFromString(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    .line 79
    iput-boolean v4, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->found:Z

    :cond_0
    const-string v1, "REPLAYGAIN_ALBUM_GAIN"

    .line 81
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/BastpUtil;->getFloatFromString(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    .line 83
    iput-boolean v4, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->found:Z

    :cond_1
    const-string v1, "R128_BASTP_BASE_GAIN"

    .line 88
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/high16 v5, 0x43800000    # 256.0f

    if-eqz v2, :cond_2

    .line 92
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/BastpUtil;->getFloatFromString(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v5

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 94
    iput v2, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    .line 95
    iput v2, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    .line 96
    iput-boolean v4, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->found:Z

    :cond_2
    const-string v1, "R128_TRACK_GAIN"

    .line 99
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iget v2, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/BastpUtil;->getFloatFromString(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v1, v5

    add-float/2addr v2, v1

    iput v2, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    .line 101
    iput-boolean v4, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->found:Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const-string v2, "R128_ALBUM_GAIN"

    .line 104
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 105
    iget v1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/BastpUtil;->getFloatFromString(Ljava/lang/String;)F

    move-result p1

    div-float/2addr p1, v5

    add-float/2addr v1, p1

    iput v1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    .line 106
    iput-boolean v4, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->found:Z

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 111
    iget p1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    const/high16 v1, 0x40a00000    # 5.0f

    add-float/2addr p1, v1

    iput p1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->track:F

    .line 112
    iget p1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    add-float/2addr p1, v1

    iput p1, v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;->album:F

    :cond_5
    return-object v0
.end method


# virtual methods
.method public getReplayGainValues(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "//null\\"

    .line 61
    :cond_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/BastpUtil;->rgCache:Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;

    if-nez v0, :cond_1

    .line 63
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/BastpUtil;->getReplayGainValuesFromFile(Ljava/lang/String;)Lch/blinkenlights/android/vanilla/BastpUtil$GainValues;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/BastpUtil;->rgCache:Lch/blinkenlights/android/vanilla/BastpUtil$RGLruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
