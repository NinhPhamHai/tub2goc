.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$1;
.super Ljava/lang/Object;
.source "RadioFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->setRefresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->setColors()V

    .line 205
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->recycleViewAdapter:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$RecycleViewAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 206
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    return-void
.end method
