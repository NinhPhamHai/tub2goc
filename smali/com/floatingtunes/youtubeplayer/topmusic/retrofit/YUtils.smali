.class public Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;
.super Ljava/lang/Object;
.source "YUtils.java"


# static fields
.field private static final suffixes:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 144
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;->suffixes:Ljava/util/NavigableMap;

    .line 147
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;->suffixes:Ljava/util/NavigableMap;

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "k"

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;->suffixes:Ljava/util/NavigableMap;

    const-wide/32 v1, 0xf4240

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "M"

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;->suffixes:Ljava/util/NavigableMap;

    const-wide/32 v1, 0x3b9aca00

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "G"

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;->suffixes:Ljava/util/NavigableMap;

    const-wide v1, 0xe8d4a51000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "T"

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;->suffixes:Ljava/util/NavigableMap;

    const-wide v1, 0x38d7ea4c68000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "P"

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YUtils;->suffixes:Ljava/util/NavigableMap;

    const-wide v1, 0xde0b6b3a7640000L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "E"

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static convertToHomePlaylist(Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
            ">;"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 436
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;->getItems()Ljava/util/List;

    move-result-object p0

    .line 437
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;

    .line 438
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;-><init>()V

    .line 440
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 442
    invoke-virtual {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;->setPlaylistId(Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$ChannelPlaylist;->getSnippet()Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$Snippet;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule$Snippet;->getTitle()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0

    :cond_2
    return-object v0
.end method
