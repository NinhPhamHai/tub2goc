.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment_ViewBinding;
.super Ljava/lang/Object;
.source "RadioFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;Landroid/view/View;)V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    .line 24
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901ff

    const-string v2, "field \'rcv\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    const-class v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    const v1, 0x7f090278

    const-string v2, "field \'swipeRefresh\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 26
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e3

    const-string v2, "field \'progressBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 27
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f0900dd

    const-string v2, "field \'fragmentContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->fragmentContainer:Landroid/widget/RelativeLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;

    .line 37
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->rcv:Landroidx/recyclerview/widget/RecyclerView;

    .line 38
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->swipeRefresh:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 39
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 40
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioFragment;->fragmentContainer:Landroid/widget/RelativeLayout;

    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
