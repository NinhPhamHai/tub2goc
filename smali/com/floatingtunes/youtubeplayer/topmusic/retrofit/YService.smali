.class public interface abstract Lcom/floatingtunes/youtubeplayer/topmusic/retrofit/YService;
.super Ljava/lang/Object;
.source "YService.java"


# virtual methods
.method public abstract listChannelPlaylist(Ljava/lang/String;Ljava/util/Map;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation runtime Lretrofit2/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/ChannelPlaylistModule;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "{type}"
    .end annotation
.end method
