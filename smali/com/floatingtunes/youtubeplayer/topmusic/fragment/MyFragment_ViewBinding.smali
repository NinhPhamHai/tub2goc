.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;
.super Ljava/lang/Object;
.source "MyFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

.field private view7f090045:Landroid/view/View;

.field private view7f09020e:Landroid/view/View;

.field private view7f090210:Landroid/view/View;

.field private view7f090215:Landroid/view/View;

.field private view7f090217:Landroid/view/View;

.field private view7f09021a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;Landroid/view/View;)V
    .locals 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    const v0, 0x7f09021a

    const-string v1, "field \'mRlRecently\' and method \'OnRecently\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 39
    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRlRecently:Landroid/view/View;

    .line 40
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f09021a:Landroid/view/View;

    .line 41
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$1;

    invoke-direct {v1, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090217

    const-string v1, "field \'mRlMyFavorite\' and method \'OnMyFavorite\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 48
    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRlMyFavorite:Landroid/view/View;

    .line 49
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090217:Landroid/view/View;

    .line 50
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090215

    const-string v1, "field \'mLocalMusic\' and method \'onLocalMusic\'"

    .line 56
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mLocalMusic:Landroid/view/View;

    .line 58
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090215:Landroid/view/View;

    .line 59
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$3;

    invoke-direct {v1, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090227

    const-string v2, "field \'mRvPlaylist\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    const v0, 0x7f09020e

    const-string v1, "field \'mRlCreateFolder\' and method \'onCreateFolder\'"

    .line 66
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 67
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mRlCreateFolder\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRlCreateFolder:Landroid/widget/RelativeLayout;

    .line 68
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f09020e:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090045

    const-string v1, "field \'mBtnEdit\' and method \'onViewClicked\'"

    .line 75
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 76
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'mBtnEdit\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mBtnEdit:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090045:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'mAdContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mAdContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f090210

    const-string v1, "field \'rlDownloadTask\' and method \'onDownClicked\'"

    .line 85
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 86
    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'rlDownloadTask\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->rlDownloadTask:Landroid/widget/RelativeLayout;

    .line 87
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090210:Landroid/view/View;

    .line 88
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;

    .line 103
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRlRecently:Landroid/view/View;

    .line 104
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRlMyFavorite:Landroid/view/View;

    .line 105
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mLocalMusic:Landroid/view/View;

    .line 106
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mRlCreateFolder:Landroid/widget/RelativeLayout;

    .line 108
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mBtnEdit:Landroid/widget/TextView;

    .line 109
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->mAdContainer:Landroid/widget/LinearLayout;

    .line 110
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment;->rlDownloadTask:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f09021a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f09021a:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090217:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090217:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090215:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090215:Landroid/view/View;

    .line 118
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f09020e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f09020e:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090045:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090045:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090210:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/MyFragment_ViewBinding;->view7f090210:Landroid/view/View;

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
