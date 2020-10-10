.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ManageListActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

.field private view7f09013f:Landroid/view/View;

.field private view7f09014b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;Landroid/view/View;)V
    .locals 4

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    .line 36
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f090227

    const-string v2, "field \'mRvPlaylist\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090113

    const-string v2, "field \'mIvDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mIvDelete:Landroid/widget/ImageView;

    .line 38
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902b0

    const-string v2, "field \'mTvDelete\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvDelete:Landroid/widget/TextView;

    const v0, 0x7f09013f

    const-string v1, "field \'mLlDelete\' and method \'onMLlDeleteClicked\'"

    .line 39
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 40
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlDelete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlDelete:Landroid/widget/LinearLayout;

    .line 41
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 42
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902bf

    const-string v2, "field \'mTvSelectAll\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvSelectAll:Landroid/widget/TextView;

    const v0, 0x7f09014b

    const-string v1, "field \'mLlSelectAll\' and method \'onMLlSelectAllClicked\'"

    .line 49
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 50
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlSelectAll\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlSelectAll:Landroid/widget/LinearLayout;

    .line 51
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->view7f09014b:Landroid/view/View;

    .line 52
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090299

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 59
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090144

    const-string v2, "field \'mLlNothing\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlNothing:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;

    .line 69
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    .line 70
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mIvDelete:Landroid/widget/ImageView;

    .line 71
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvDelete:Landroid/widget/TextView;

    .line 72
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlDelete:Landroid/widget/LinearLayout;

    .line 73
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mTvSelectAll:Landroid/widget/TextView;

    .line 74
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlSelectAll:Landroid/widget/LinearLayout;

    .line 75
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 76
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity;->mLlNothing:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->view7f09013f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->view7f09014b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ManageListActivity_ViewBinding;->view7f09014b:Landroid/view/View;

    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
