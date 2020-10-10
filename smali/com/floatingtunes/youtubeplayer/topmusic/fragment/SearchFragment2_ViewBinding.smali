.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;
.super Ljava/lang/Object;
.source "SearchFragment2_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

.field private view7f09010c:Landroid/view/View;

.field private view7f090236:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    const v0, 0x7f09010c

    const-string v1, "field \'mIvBack\' and method \'onViewClicked\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 30
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mIvBack\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mIvBack:Landroid/widget/ImageView;

    .line 31
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->view7f09010c:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const v1, 0x7f090238

    const-string v2, "field \'mSearchEdit\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f090236

    const-string v1, "field \'mBtnTextClean\' and method \'onClick\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 40
    const-class v1, Landroid/widget/ImageButton;

    const-string v2, "field \'mBtnTextClean\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mBtnTextClean:Landroid/widget/ImageButton;

    .line 41
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->view7f090236:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 55
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;

    .line 57
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mIvBack:Landroid/widget/ImageView;

    .line 58
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mSearchEdit:Landroid/widget/AutoCompleteTextView;

    .line 59
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2;->mBtnTextClean:Landroid/widget/ImageButton;

    .line 61
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->view7f09010c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->view7f09010c:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->view7f090236:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SearchFragment2_ViewBinding;->view7f090236:Landroid/view/View;

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
