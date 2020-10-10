.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "NewTopListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;Landroid/view/View;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    .line 30
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090224

    const-string v2, "field \'mRvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090299

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 32
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'mAdContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mAdContainer:Landroid/widget/LinearLayout;

    .line 33
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e3

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 34
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901a5

    const-string v2, "field \'mErrorView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mErrorView:Landroid/widget/LinearLayout;

    .line 35
    const-class v0, Landroid/widget/Button;

    const v1, 0x7f09004f

    const-string v2, "field \'mRetry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRetry:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 43
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;

    .line 45
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 46
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 47
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mAdContainer:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 49
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mErrorView:Landroid/widget/LinearLayout;

    .line 50
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/NewTopListActivity;->mRetry:Landroid/widget/Button;

    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
