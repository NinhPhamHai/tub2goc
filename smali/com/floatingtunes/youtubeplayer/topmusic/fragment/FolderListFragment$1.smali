.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;
.super Ljava/lang/Object;
.source "FolderListFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/IVideoItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 2

    .line 87
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->getQueueLab()Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/QueueLab;->addMusicListToQueue(Ljava/util/List;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 88
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->start(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    return-void
.end method

.method public onLovedClick(ZLcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isDownloadEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadUtil;->startDownload(Landroid/app/Activity;Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 105
    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveToFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->deleteFromFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    :goto_0
    return-void
.end method

.method public onMoreItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->newInstance(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;ZLcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->mDataList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/FolderListFragment;->mDeletePosition:I

    return-void
.end method
