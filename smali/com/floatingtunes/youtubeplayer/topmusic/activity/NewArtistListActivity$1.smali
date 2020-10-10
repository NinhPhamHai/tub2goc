.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;
.super Ljava/lang/Object;
.source "NewArtistListActivity.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 113
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->access$202(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;Z)Z

    .line 120
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;)V

    return-void
.end method
