.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;
.super Ljava/lang/Object;
.source "RateDialog_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

.field private view7f090042:Landroid/view/View;

.field private view7f09004e:Landroid/view/View;

.field private view7f0901f7:Landroid/view/View;

.field private view7f0901f8:Landroid/view/View;

.field private view7f0901f9:Landroid/view/View;

.field private view7f0901fa:Landroid/view/View;

.field private view7f0901fb:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    const v0, 0x7f0901f7

    const-string v1, "field \'mRateStar1\' and method \'onViewClicked\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mRateStar1\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar1:Landroid/widget/ImageButton;

    .line 43
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f7:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f8

    const-string v1, "field \'mRateStar2\' and method \'onViewClicked\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mRateStar2\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar2:Landroid/widget/ImageButton;

    .line 52
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f8:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f9

    const-string v1, "field \'mRateStar3\' and method \'onViewClicked\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mRateStar3\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar3:Landroid/widget/ImageButton;

    .line 61
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f9:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901fa

    const-string v1, "field \'mRateStar4\' and method \'onViewClicked\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mRateStar4\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar4:Landroid/widget/ImageButton;

    .line 70
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901fa:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901fb

    const-string v1, "field \'mRateStar5\' and method \'onViewClicked\'"

    .line 77
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 78
    const-class v2, Landroid/widget/ImageButton;

    const-string v3, "field \'mRateStar5\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar5:Landroid/widget/ImageButton;

    .line 79
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901fb:Landroid/view/View;

    .line 80
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090042

    const-string v1, "field \'mBtnCancel\' and method \'onViewClicked\'"

    .line 86
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 87
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mBtnCancel\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mBtnCancel:Landroid/widget/Button;

    .line 88
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f090042:Landroid/view/View;

    .line 89
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09004e

    const-string v1, "field \'mBtnRate\' and method \'onViewClicked\'"

    .line 95
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 96
    const-class v2, Landroid/widget/Button;

    const-string v3, "field \'mBtnRate\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mBtnRate:Landroid/widget/Button;

    .line 97
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f09004e:Landroid/view/View;

    .line 98
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding$7;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901fc

    const-string v2, "field \'mRateTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateTip:Landroid/widget/TextView;

    .line 105
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0901f6

    const-string v2, "field \'mRateResultTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    .line 106
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090266

    const-string v2, "field \'mStarLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mStarLayout:Landroid/widget/LinearLayout;

    .line 107
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0901f4

    const-string v2, "field \'mRateHand\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateHand:Landroid/widget/ImageView;

    .line 108
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901f5

    const-string v2, "field \'mRateHandLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateHandLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 116
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    .line 118
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar1:Landroid/widget/ImageButton;

    .line 119
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar2:Landroid/widget/ImageButton;

    .line 120
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar3:Landroid/widget/ImageButton;

    .line 121
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar4:Landroid/widget/ImageButton;

    .line 122
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar5:Landroid/widget/ImageButton;

    .line 123
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mBtnCancel:Landroid/widget/Button;

    .line 124
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mBtnRate:Landroid/widget/Button;

    .line 125
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateTip:Landroid/widget/TextView;

    .line 126
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    .line 127
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mStarLayout:Landroid/widget/LinearLayout;

    .line 128
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateHand:Landroid/widget/ImageView;

    .line 129
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateHandLayout:Landroid/widget/LinearLayout;

    .line 131
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f7:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f7:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f8:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f8:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f9:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901f9:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901fa:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901fa:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901fb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f0901fb:Landroid/view/View;

    .line 141
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f090042:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f090042:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f09004e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog_ViewBinding;->view7f09004e:Landroid/view/View;

    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
