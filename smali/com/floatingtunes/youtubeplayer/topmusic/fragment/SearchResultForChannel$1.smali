.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$1;
.super Ljava/lang/Object;
.source "SearchResultForChannel.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->reqPlaylistByChannel(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Ljava/util/List<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    const-string v0, "SearchPlaylist"

    const-string v1, "onComplete: "

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 137
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$1;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
            ">;)V"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 146
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->access$102(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;Z)Z

    .line 147
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchResultForChannel;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
