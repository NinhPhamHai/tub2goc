.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;
.super Ljava/lang/Object;
.source "DownloadSetting_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;

.field private view7f09020b:Landroid/view/View;

.field private view7f09021f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;

    .line 34
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090298

    const-string v2, "field \'toolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->toolBar:Landroidx/appcompat/widget/Toolbar;

    .line 35
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c9

    const-string v2, "field \'tvVideoPath\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->tvVideoPath:Landroid/widget/TextView;

    const v0, 0x7f09021f

    const-string v1, "field \'rlVideoPath\' and method \'onRlVideoPathClicked\'"

    .line 36
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 37
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'rlVideoPath\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->rlVideoPath:Landroid/widget/RelativeLayout;

    .line 38
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->view7f09021f:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902ab

    const-string v2, "field \'tvAudioPath\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->tvAudioPath:Landroid/widget/TextView;

    const v0, 0x7f09020b

    const-string v1, "field \'rlAudioPath\' and method \'onRlAudioPathClicked\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 47
    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'rlAudioPath\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->rlAudioPath:Landroid/widget/RelativeLayout;

    .line 48
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->view7f09020b:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 62
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;

    .line 64
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->toolBar:Landroidx/appcompat/widget/Toolbar;

    .line 65
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->tvVideoPath:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->rlVideoPath:Landroid/widget/RelativeLayout;

    .line 67
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->tvAudioPath:Landroid/widget/TextView;

    .line 68
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting;->rlAudioPath:Landroid/widget/RelativeLayout;

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->view7f09021f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->view7f09021f:Landroid/view/View;

    .line 72
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->view7f09020b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadSetting_ViewBinding;->view7f09020b:Landroid/view/View;

    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
