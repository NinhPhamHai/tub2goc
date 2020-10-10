.class public Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdUtil;
.super Ljava/lang/Object;
.source "AdUtil.java"


# direct methods
.method public static randomBoolean(I)Z
    .locals 2

    .line 125
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-gt v0, p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
