.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment_ViewBinding;
.super Ljava/lang/Object;
.source "NewTopFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    const v0, 0x7f09014f

    const-string v1, "field \'mLoadingView\'"

    .line 22
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mLoadingView:Landroid/view/View;

    .line 23
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090224

    const-string v2, "field \'mRvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090277

    const-string v2, "field \'mSwipeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 32
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;

    .line 34
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mLoadingView:Landroid/view/View;

    .line 35
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/NewTopFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-void

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
