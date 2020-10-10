.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;
.super Ljava/lang/Object;
.source "BottomPlayMoreDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;

.field private view7f090138:Landroid/view/View;

.field private view7f09013f:Landroid/view/View;

.field private view7f090145:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;Landroid/view/View;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;

    const v0, 0x7f090145

    const-string v1, "field \'mLlPlayNow\' and method \'onMLlPlayNowClicked\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 30
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlPlayNow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;->mLlPlayNow:Landroid/widget/LinearLayout;

    .line 31
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f090145:Landroid/view/View;

    .line 32
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09013f

    const-string v1, "field \'mLlDelete\' and method \'onMLlDeleteClicked\'"

    .line 38
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mLlDelete\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;->mLlDelete:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 41
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090138

    const-string v1, "field \'mLlAddPlaylist\' and method \'onMLlAddPlaylistClicked\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 48
    const-class v1, Landroid/widget/LinearLayout;

    const-string v2, "field \'mLlAddPlaylist\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;->mLlAddPlaylist:Landroid/widget/LinearLayout;

    .line 49
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f090138:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 63
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;

    .line 65
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;->mLlPlayNow:Landroid/widget/LinearLayout;

    .line 66
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;->mLlDelete:Landroid/widget/LinearLayout;

    .line 67
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog;->mLlAddPlaylist:Landroid/widget/LinearLayout;

    .line 69
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f090145:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f090145:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f09013f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f09013f:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f090138:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/BottomPlayMoreDialog_ViewBinding;->view7f090138:Landroid/view/View;

    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
