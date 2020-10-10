.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder$1;
.super Ljava/lang/Object;
.source "NewTopFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

.field final synthetic val$this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder$1;->val$this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 496
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mTopList:Ljava/util/List;

    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;->current:I

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/TopListActivity;->actionStart(Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;)V

    const/16 p1, 0x3c

    .line 498
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/mopub/AdUtil;->getRandomBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder$1;->this$2:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter$BaseHolder;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$BaseAdapter;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    :cond_0
    return-void
.end method
