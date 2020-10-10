.class public Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;
.super Ljava/lang/Object;
.source "LockPlay_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

.field private view7f090047:Landroid/view/View;

.field private view7f090049:Landroid/view/View;

.field private view7f09004b:Landroid/view/View;

.field private view7f09004c:Landroid/view/View;

.field private view7f09004d:Landroid/view/View;

.field private view7f090111:Landroid/view/View;

.field private view7f09011a:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;Landroid/view/View;)V
    .locals 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    const v0, 0x7f09011a

    const-string v1, "field \'mIvLockMore\' and method \'onViewClickedMore\'"

    .line 47
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 48
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mIvLockMore\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mIvLockMore:Landroid/widget/ImageView;

    .line 49
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09011a:Landroid/view/View;

    .line 50
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c6

    const-string v2, "field \'mTvTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvTime:Landroid/widget/TextView;

    .line 57
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902cc

    const-string v2, "field \'mTvWeek\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvWeek:Landroid/widget/TextView;

    .line 58
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902af

    const-string v2, "field \'mTvDate\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvDate:Landroid/widget/TextView;

    .line 59
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902ba

    const-string v2, "field \'mTvPercent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvPercent:Landroid/widget/TextView;

    .line 60
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09020d

    const-string v2, "field \'mRlChargeLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mRlChargeLayout:Landroid/widget/RelativeLayout;

    .line 61
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090299

    const-string v2, "field \'mAppLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mAppLayout:Landroid/widget/RelativeLayout;

    .line 62
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c0

    const-string v2, "field \'tvSongName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->tvSongName:Landroid/widget/TextView;

    .line 63
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902aa

    const-string v2, "field \'tvAlbum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->tvAlbum:Landroid/widget/TextView;

    const v0, 0x7f09004c

    const-string v1, "field \'btnPlaymode\' and method \'onBtnPlaymodeClicked\'"

    .line 64
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 65
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'btnPlaymode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    .line 66
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004c:Landroid/view/View;

    .line 67
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004d

    const-string v1, "field \'btnPrevious\' and method \'onBtnPreviousClicked\'"

    .line 73
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 74
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'btnPrevious\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPrevious:Landroid/widget/ImageButton;

    .line 75
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004d:Landroid/view/View;

    .line 76
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004b

    const-string v1, "field \'btnPlay\' and method \'onBtnPlayClicked\'"

    .line 82
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 83
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'btnPlay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlay:Landroid/widget/ImageButton;

    .line 84
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004b:Landroid/view/View;

    .line 85
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090049

    const-string v1, "field \'btnNext\' and method \'onBtnNextClicked\'"

    .line 91
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 92
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'btnNext\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnNext:Landroid/widget/ImageButton;

    .line 93
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090049:Landroid/view/View;

    .line 94
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090047

    const-string v1, "field \'btnFavourite\' and method \'onBtnFavouriteClicked\'"

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 101
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'btnFavourite\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    .line 102
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090047:Landroid/view/View;

    .line 103
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090222

    const-string v2, "field \'rootLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->rootLayout:Landroid/widget/RelativeLayout;

    .line 110
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a3

    const-string v2, "field \'durationStart\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->durationStart:Landroid/widget/TextView;

    .line 111
    const-class v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    const v1, 0x7f090242

    const-string v2, "field \'seekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 112
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a2

    const-string v2, "field \'durationEnd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->durationEnd:Landroid/widget/TextView;

    .line 113
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'adContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->adContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f090111

    const-string v1, "field \'ivCover\' and method \'onViewClicked\'"

    .line 114
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 115
    const-class v1, Landroid/widget/ImageView;

    const-string v2, "field \'ivCover\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->ivCover:Landroid/widget/ImageView;

    .line 116
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090111:Landroid/view/View;

    .line 117
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding$7;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 130
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    .line 132
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mIvLockMore:Landroid/widget/ImageView;

    .line 133
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvTime:Landroid/widget/TextView;

    .line 134
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvWeek:Landroid/widget/TextView;

    .line 135
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvDate:Landroid/widget/TextView;

    .line 136
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvPercent:Landroid/widget/TextView;

    .line 137
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mRlChargeLayout:Landroid/widget/RelativeLayout;

    .line 138
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mAppLayout:Landroid/widget/RelativeLayout;

    .line 139
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->tvSongName:Landroid/widget/TextView;

    .line 140
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->tvAlbum:Landroid/widget/TextView;

    .line 141
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlaymode:Landroid/widget/ImageButton;

    .line 142
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPrevious:Landroid/widget/ImageButton;

    .line 143
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnPlay:Landroid/widget/ImageButton;

    .line 144
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnNext:Landroid/widget/ImageButton;

    .line 145
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->btnFavourite:Landroid/widget/ImageView;

    .line 146
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->rootLayout:Landroid/widget/RelativeLayout;

    .line 147
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->durationStart:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->seekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 149
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->durationEnd:Landroid/widget/TextView;

    .line 150
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->adContainer:Landroid/widget/LinearLayout;

    .line 151
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->ivCover:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09011a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09011a:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004c:Landroid/view/View;

    .line 157
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004d:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f09004b:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090049:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090049:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090047:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090047:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090111:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay_ViewBinding;->view7f090111:Landroid/view/View;

    return-void

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
