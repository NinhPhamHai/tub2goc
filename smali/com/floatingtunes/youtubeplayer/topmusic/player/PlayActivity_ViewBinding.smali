.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;
.super Ljava/lang/Object;
.source "PlayActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

.field private view7f090044:Landroid/view/View;

.field private view7f090047:Landroid/view/View;

.field private view7f090049:Landroid/view/View;

.field private view7f09004a:Landroid/view/View;

.field private view7f09004b:Landroid/view/View;

.field private view7f09004c:Landroid/view/View;

.field private view7f09004d:Landroid/view/View;

.field private view7f0901d8:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;Landroid/view/View;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    .line 51
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090223

    const-string v2, "field \'mRootParent\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRootParent:Landroid/widget/LinearLayout;

    .line 52
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090298

    const-string v2, "field \'mToolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 53
    const-class v0, Landroid/widget/FrameLayout;

    const v1, 0x7f0901d7

    const-string v2, "field \'mPlayerContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mPlayerContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0901d8

    const-string v1, "field \'mPlayerCover\' and method \'onViewClicked\'"

    .line 54
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 55
    const-class v2, Landroid/widget/LinearLayout;

    const-string v3, "field \'mPlayerCover\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mPlayerCover:Landroid/widget/LinearLayout;

    .line 56
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f0901d8:Landroid/view/View;

    .line 57
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090044

    const-string v1, "field \'mBtnDown\' and method \'onDownloadClick\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 64
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mBtnDown\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnDown:Landroid/widget/ImageButton;

    .line 65
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090044:Landroid/view/View;

    .line 66
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902c0

    const-string v2, "field \'mTvSongName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mTvSongName:Landroid/widget/TextView;

    .line 73
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902aa

    const-string v2, "field \'mTvAlbum\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mTvAlbum:Landroid/widget/TextView;

    const v0, 0x7f09004a

    const-string v1, "field \'mBtnOptions\' and method \'onMBtnOptionsClicked\'"

    .line 74
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 75
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mBtnOptions\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnOptions:Landroid/widget/ImageButton;

    .line 76
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004a:Landroid/view/View;

    .line 77
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a3

    const-string v2, "field \'mDurationStart\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mDurationStart:Landroid/widget/TextView;

    .line 84
    const-class v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    const v1, 0x7f090242

    const-string v2, "field \'mSeekBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatSeekBar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 85
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0900a2

    const-string v2, "field \'mDurationEnd\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mDurationEnd:Landroid/widget/TextView;

    const v0, 0x7f09004c

    const-string v1, "field \'mBtnPlaymode\' and method \'onMBtnPlaymodeClicked\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 87
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mBtnPlaymode\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    .line 88
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004c:Landroid/view/View;

    .line 89
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004d

    const-string v1, "field \'mBtnPrevious\' and method \'onMBtnPreviousClicked\'"

    .line 95
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 96
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mBtnPrevious\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPrevious:Landroid/widget/ImageButton;

    .line 97
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004d:Landroid/view/View;

    .line 98
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004b

    const-string v1, "field \'mBtnPlay\' and method \'onMBtnPlayClicked\'"

    .line 104
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 105
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mBtnPlay\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlay:Landroid/widget/ImageButton;

    .line 106
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004b:Landroid/view/View;

    .line 107
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090049

    const-string v1, "field \'mBtnNext\' and method \'onMBtnNextClicked\'"

    .line 113
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 114
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mBtnNext\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnNext:Landroid/widget/ImageButton;

    .line 115
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090049:Landroid/view/View;

    .line 116
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$7;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090047

    const-string v1, "field \'mBtnFavourite\' and method \'onMBtnFavouriteClicked\'"

    .line 122
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 123
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'mBtnFavourite\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnFavourite:Landroid/widget/ImageView;

    .line 124
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090047:Landroid/view/View;

    .line 125
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding$8;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f09025a

    const-string v2, "field \'mRvSongList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRvSongList:Landroidx/recyclerview/widget/RecyclerView;

    .line 132
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09001e

    const-string v2, "field \'adContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->adContainer:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 140
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;

    .line 142
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRootParent:Landroid/widget/LinearLayout;

    .line 143
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mToolBar:Landroidx/appcompat/widget/Toolbar;

    .line 144
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mPlayerContainer:Landroid/widget/FrameLayout;

    .line 145
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mPlayerCover:Landroid/widget/LinearLayout;

    .line 146
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnDown:Landroid/widget/ImageButton;

    .line 147
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mTvSongName:Landroid/widget/TextView;

    .line 148
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mTvAlbum:Landroid/widget/TextView;

    .line 149
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnOptions:Landroid/widget/ImageButton;

    .line 150
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mDurationStart:Landroid/widget/TextView;

    .line 151
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mSeekBar:Landroidx/appcompat/widget/AppCompatSeekBar;

    .line 152
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mDurationEnd:Landroid/widget/TextView;

    .line 153
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlaymode:Landroid/widget/ImageButton;

    .line 154
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPrevious:Landroid/widget/ImageButton;

    .line 155
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnPlay:Landroid/widget/ImageButton;

    .line 156
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnNext:Landroid/widget/ImageButton;

    .line 157
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mBtnFavourite:Landroid/widget/ImageView;

    .line 158
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->mRvSongList:Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity;->adContainer:Landroid/widget/LinearLayout;

    .line 161
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f0901d8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f0901d8:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090044:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090044:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004a:Landroid/view/View;

    .line 167
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004c:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004d:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f09004b:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090049:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090049:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090047:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/PlayActivity_ViewBinding;->view7f090047:Landroid/view/View;

    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
