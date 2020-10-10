.class public Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;
.super Ljava/lang/Object;
.source "YConfig.java"


# static fields
.field public static NO_MORE_PAGE:Ljava/lang/String; = "no page"

.field private static QUERY_CHANNEL_ID:Ljava/lang/String; = "channelId"

.field private static QUERY_FIELDS:Ljava/lang/String; = "fields"

.field private static QUERY_KEY:Ljava/lang/String; = "key"

.field private static QUERY_MAX:Ljava/lang/String; = "50"

.field private static QUERY_MAX_RESULT:Ljava/lang/String; = "maxResults"

.field private static QUERY_PAGE_TOKEN:Ljava/lang/String; = "pageToken"

.field private static QUERY_PART:Ljava/lang/String; = "part"


# direct methods
.method public static getChannelPlaylistOptionMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 212
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->QUERY_KEY:Ljava/lang/String;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/net/KeyUtil;->getRandomKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->QUERY_PART:Ljava/lang/String;

    const-string v2, "snippet,contentDetails"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->QUERY_CHANNEL_ID:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object p0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->QUERY_FIELDS:Ljava/lang/String;

    const-string v1, "nextPageToken,items(id,snippet(title,thumbnails(medium(url)),channelTitle))"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object p0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->QUERY_MAX_RESULT:Ljava/lang/String;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->QUERY_MAX:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 218
    sget-object p0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YConfig;->QUERY_PAGE_TOKEN:Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method
