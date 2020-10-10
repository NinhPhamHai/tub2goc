.class public Lcom/floatingtunes/youtubeplayer/topmusic/net/KeyUtil;
.super Ljava/lang/Object;
.source "KeyUtil.java"


# direct methods
.method public static decodeBase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 33
    new-instance p0, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static getRandomKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 18
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;->newInstance(Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;

    move-result-object p0

    .line 20
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/net/NetConfig;->LK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 21
    sget-object p0, Lcom/floatingtunes/youtubeplayer/topmusic/net/NetConfig;->LK:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "LocalKey"

    .line 22
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/SuperPrefs;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/net/KeyUtil;->decodeBase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method
