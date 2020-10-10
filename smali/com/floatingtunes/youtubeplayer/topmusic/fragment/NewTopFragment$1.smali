.class Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;
.super Ljava/lang/Object;
.source "NewTopFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 164
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->getLastRefreshTime(Landroid/content/Context;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$102(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Z)Z

    .line 172
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;)V

    return-void
.end method
