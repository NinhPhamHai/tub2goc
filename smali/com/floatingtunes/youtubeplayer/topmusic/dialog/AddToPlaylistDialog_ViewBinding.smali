.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog_ViewBinding;
.super Ljava/lang/Object;
.source "AddToPlaylistDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;Landroid/view/View;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;

    .line 22
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f090294

    const-string v2, "field \'mTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mTitle:Landroid/widget/TextView;

    .line 23
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090227

    const-string v2, "field \'mRvPlaylist\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;

    .line 33
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mTitle:Landroid/widget/TextView;

    .line 34
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
