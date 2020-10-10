.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;
.super Ljava/lang/Object;
.source "BottomMoreDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

.field private view7f090138:Landroid/view/View;

.field private view7f090139:Landroid/view/View;

.field private view7f09013f:Landroid/view/View;

.field private view7f090145:Landroid/view/View;

.field private view7f09014c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;Landroid/view/View;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

    const v0, 0x7f090145

    const-string v1, "field \'mLlPlayNow\' and method \'onMLlPlayNowClicked\'"

    .line 33
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 34
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlPlayNow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlPlayNow:Landroid/widget/LinearLayout;

    .line 35
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090145:Landroid/view/View;

    .line 36
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090139

    const-string v1, "field \'mLlAddQueue\' and method \'onMLlAddQueueClicked\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlAddQueue\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlAddQueue:Landroid/widget/LinearLayout;

    .line 44
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090139:Landroid/view/View;

    .line 45
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090138

    const-string v1, "field \'mLlAddPlaylist\' and method \'onMLlAddPlaylistClicked\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 52
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlAddPlaylist\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlAddPlaylist:Landroid/widget/LinearLayout;

    .line 53
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090138:Landroid/view/View;

    .line 54
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013f

    const-string v1, "field \'mLlDelete\' and method \'onMLlDeleteClicked\'"

    .line 60
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 61
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlDelete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlDelete:Landroid/widget/LinearLayout;

    .line 62
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09014c

    const-string v1, "field \'mLlShare\' and method \'onMLlShareClicked\'"

    .line 69
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 70
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'mLlShare\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlShare:Landroid/widget/LinearLayout;

    .line 71
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f09014c:Landroid/view/View;

    .line 72
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;

    .line 87
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlPlayNow:Landroid/widget/LinearLayout;

    .line 88
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlAddQueue:Landroid/widget/LinearLayout;

    .line 89
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlAddPlaylist:Landroid/widget/LinearLayout;

    .line 90
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlDelete:Landroid/widget/LinearLayout;

    .line 91
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog;->mLlShare:Landroid/widget/LinearLayout;

    .line 93
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090145:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090145:Landroid/view/View;

    .line 95
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090139:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090139:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090138:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f090138:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f09013f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f09014c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomMoreDialog_ViewBinding;->view7f09014c:Landroid/view/View;

    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
