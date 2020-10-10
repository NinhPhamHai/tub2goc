.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;
.super Ljava/lang/Object;
.source "ParamsConfig.java"


# direct methods
.method public static getClose(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    if-nez p0, :cond_0

    .line 107
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 110
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->type()I

    move-result v3

    const v4, 0x40008

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x51

    .line 114
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    return-object p0
.end method

.method public static getFrame(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    if-nez p0, :cond_0

    .line 83
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 86
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->type()I

    move-result v3

    const/16 v4, 0x20

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :cond_0
    return-object p0
.end method

.method public static getFull(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    if-nez p0, :cond_0

    .line 66
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 69
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->type()I

    move-result v3

    const v4, 0x104040a

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x0

    .line 76
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :cond_0
    return-object p0
.end method

.method public static getMiddle(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    if-nez p0, :cond_0

    .line 52
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 55
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->type()I

    move-result v3

    const v4, 0x104000a

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    :cond_0
    return-object p0
.end method

.method public static getSmall(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    if-nez p0, :cond_0

    .line 21
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    .line 24
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->type()I

    move-result v3

    const v4, 0x1040008

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const v0, 0x800033

    .line 29
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    return-object p0
.end method

.method public static getWarning(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    if-nez p0, :cond_0

    .line 37
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    .line 40
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/ParamsConfig;->typeWarning()I

    move-result v3

    const v4, 0x1040008

    const/4 v5, -0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x11

    .line 45
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :cond_0
    return-object p0
.end method

.method public static getWeb(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    if-nez p0, :cond_0

    .line 97
    new-instance p0, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    :cond_0
    return-object p0
.end method

.method public static type()I
    .locals 4

    .line 137
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isFromFacebook(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x7d2

    const/16 v2, 0x7f6

    const/16 v3, 0x1a

    if-eqz v0, :cond_3

    .line 140
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isLockEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_0

    const/16 v2, 0x7da

    :cond_0
    return v2

    .line 149
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x7f6

    :goto_0
    return v1

    .line 160
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x7f6

    :goto_1
    return v1
.end method

.method public static typeWarning()I
    .locals 2

    .line 174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/16 v0, 0x7da

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f6

    :goto_0
    return v0
.end method
