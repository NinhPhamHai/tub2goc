.class public Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;
.super Ljava/lang/Object;
.source "RadioPlaying_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

.field private view7f09011d:Landroid/view/View;

.field private view7f09011f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;Landroid/view/View;)V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    .line 37
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090299

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 38
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f09011e

    const-string v2, "field \'ivPlayPause\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    .line 39
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0901e6

    const-string v2, "field \'progressbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->progressbar:Landroid/widget/ProgressBar;

    .line 40
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'mAdContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mAdContainer:Landroid/widget/LinearLayout;

    .line 41
    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/StatusBarView;

    const v1, 0x7f09026a

    const-string v2, "field \'status\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/view/StatusBarView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->status:Lcom/floatingtunes/youtubeplayer/topmusic/view/StatusBarView;

    .line 42
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0900fc

    const-string v2, "field \'imageView2\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->imageView2:Landroid/widget/ImageView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c8

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->tvTitle:Landroid/widget/TextView;

    const v0, 0x7f09011d

    const-string v1, "field \'ivNext\' and method \'onViewClicked\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivNext\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivNext:Landroid/widget/ImageView;

    .line 46
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->view7f09011d:Landroid/view/View;

    .line 47
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09011f

    const-string v1, "field \'ivPrevious\' and method \'onViewClicked\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 54
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'ivPrevious\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPrevious:Landroid/widget/ImageView;

    .line 55
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->view7f09011f:Landroid/view/View;

    .line 56
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09013b

    const-string v2, "field \'llBg\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->llBg:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;

    .line 72
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 73
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPlayPause:Landroid/widget/ImageView;

    .line 74
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->progressbar:Landroid/widget/ProgressBar;

    .line 75
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->mAdContainer:Landroid/widget/LinearLayout;

    .line 76
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->status:Lcom/floatingtunes/youtubeplayer/topmusic/view/StatusBarView;

    .line 77
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->imageView2:Landroid/widget/ImageView;

    .line 78
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->tvTitle:Landroid/widget/TextView;

    .line 79
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivNext:Landroid/widget/ImageView;

    .line 80
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->ivPrevious:Landroid/widget/ImageView;

    .line 81
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying;->llBg:Landroid/widget/LinearLayout;

    .line 83
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->view7f09011d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->view7f09011d:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->view7f09011f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioPlaying_ViewBinding;->view7f09011f:Landroid/view/View;

    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
