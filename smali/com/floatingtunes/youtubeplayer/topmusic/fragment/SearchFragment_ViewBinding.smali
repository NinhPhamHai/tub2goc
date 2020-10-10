.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SearchFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;

.field private view7f09010c:Landroid/view/View;

.field private view7f090236:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;Landroid/view/View;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;

    const v0, 0x7f09010c

    const-string v1, "field \'mIvBack\' and method \'onViewClicked\'"

    .line 27
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 28
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mIvBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;->mIvBack:Landroid/widget/ImageView;

    .line 29
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->view7f09010c:Landroid/view/View;

    .line 30
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090236

    const-string v1, "method \'onClick\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 37
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->view7f090236:Landroid/view/View;

    .line 38
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;

    .line 53
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment;->mIvBack:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->view7f09010c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->view7f09010c:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->view7f090236:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment_ViewBinding;->view7f090236:Landroid/view/View;

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
