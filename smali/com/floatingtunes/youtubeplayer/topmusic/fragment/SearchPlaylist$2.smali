.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;
.super Ljava/lang/Object;
.source "SearchPlaylist.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteClick(ZLcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onFavoriteClick(ZLjava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;->onFavoriteClick(ZLcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    return-void
.end method

.method public onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 252
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 253
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    :cond_0
    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;->onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    return-void
.end method

.method public onLoadingClick(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V
    .locals 0

    return-void
.end method

.method public onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onMoreItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 246
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchPlaylist$2;->onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    return-void
.end method
