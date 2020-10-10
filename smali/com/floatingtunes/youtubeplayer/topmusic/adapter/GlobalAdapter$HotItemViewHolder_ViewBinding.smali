.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;
.super Ljava/lang/Object;
.source "GlobalAdapter$HotItemViewHolder_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;

.field private view7f0900e6:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;Landroid/view/View;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;

    .line 27
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090111

    const-string v2, "field \'mImageView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c8

    const-string v2, "field \'mTextTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;->mTextTitle:Landroid/widget/TextView;

    const v0, 0x7f0900e6

    const-string v1, "method \'onItemClick\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 30
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;->view7f0900e6:Landroid/view/View;

    .line 31
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;

    .line 46
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 47
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder;->mTextTitle:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;->view7f0900e6:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/GlobalAdapter$HotItemViewHolder_ViewBinding;->view7f0900e6:Landroid/view/View;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
