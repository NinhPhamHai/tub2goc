.class Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$1;
.super Ljava/lang/Object;
.source "LoadAllActivity.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteClick(ZLcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFavoriteClick(ZLjava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$1;->onFavoriteClick(ZLcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;)V

    return-void
.end method

.method public onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$1;->onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;)V

    return-void
.end method

.method public onLoadingClick(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V
    .locals 0

    return-void
.end method

.method public onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMoreItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 87
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity$1;->onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/home/HomePlaylist;)V

    return-void
.end method
