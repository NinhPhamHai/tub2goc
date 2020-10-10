.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NewArtistListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;Landroid/view/View;)V
    .locals 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    .line 31
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e6

    const-string v2, "field \'mProgressbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mProgressbar:Landroid/widget/ProgressBar;

    .line 32
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090224

    const-string v2, "field \'mRvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 33
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900b2

    const-string v2, "field \'error\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->error:Landroid/widget/TextView;

    .line 34
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090299

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 35
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090277

    const-string v2, "field \'mSwipeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 36
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'mAdContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mAdContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;

    .line 46
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mProgressbar:Landroid/widget/ProgressBar;

    .line 47
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 48
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->error:Landroid/widget/TextView;

    .line 49
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 50
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 51
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewArtistListActivity;->mAdContainer:Landroid/widget/LinearLayout;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
