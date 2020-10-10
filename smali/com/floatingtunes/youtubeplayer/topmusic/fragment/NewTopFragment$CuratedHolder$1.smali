.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder$1;
.super Ljava/lang/Object;
.source "NewTopFragment.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/home/IHomeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;

.field final synthetic val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 578
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder$1;->val$this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaylistItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 591
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 592
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$CuratedHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    :cond_0
    return-void
.end method

.method public onViewAllClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
