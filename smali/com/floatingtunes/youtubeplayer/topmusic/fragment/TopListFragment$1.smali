.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;
.super Ljava/lang/Object;
.source "TopListFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteClick(ZLcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadUtil;->startDownload(Landroid/app/Activity;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 231
    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveToFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->deleteFromFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFavoriteClick(ZLjava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->onFavoriteClick(ZLcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    const/16 v0, 0x3c

    .line 204
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitial()Z

    .line 208
    :cond_0
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 209
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public bridge synthetic onItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public onLoadingClick(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V
    .locals 1

    .line 216
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;

    move-result-object p1

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;->LOADING:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadingAdapter;->setLoadingSate(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/LoadState;)V

    .line 217
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;)V

    return-void
.end method

.method public onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    const/4 v0, 0x0

    .line 242
    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->newInstance(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Z)Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "dialog"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onMoreItemClick(Ljava/lang/Object;)V
    .locals 0

    .line 200
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/TopListFragment$1;->onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method
