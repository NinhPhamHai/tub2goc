.class public Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LoadAllActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;Landroid/view/View;)V
    .locals 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    .line 27
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090298

    const-string v2, "field \'mToolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 28
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090201

    const-string v2, "field \'mRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;

    .line 38
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 39
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/home/LoadAllActivity;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
