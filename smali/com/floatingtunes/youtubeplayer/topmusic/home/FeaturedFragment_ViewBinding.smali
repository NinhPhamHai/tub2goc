.class public Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment_ViewBinding;
.super Ljava/lang/Object;
.source "FeaturedFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;Landroid/view/View;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    .line 23
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090224

    const-string v2, "field \'mRvContent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 24
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901a5

    const-string v2, "field \'networkErrorLl\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->networkErrorLl:Landroid/widget/LinearLayout;

    .line 25
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e3

    const-string v2, "field \'mProgressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 33
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;

    .line 35
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->mRvContent:Landroidx/recyclerview/widget/RecyclerView;

    .line 36
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->networkErrorLl:Landroid/widget/LinearLayout;

    .line 37
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/FeaturedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
