.class public Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SettingFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

.field private view7f090008:Landroid/view/View;

.field private view7f0901dc:Landroid/view/View;

.field private view7f0901e0:Landroid/view/View;

.field private view7f0901fe:Landroid/view/View;

.field private view7f09020f:Landroid/view/View;

.field private view7f090244:Landroid/view/View;

.field private view7f090249:Landroid/view/View;

.field private view7f09024f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;Landroid/view/View;)V
    .locals 4

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    const v0, 0x7f0901fe

    const-string v1, "field \'mRateUs\' and method \'onMRateUsClicked\'"

    .line 41
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 42
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mRateUs\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mRateUs:Landroid/widget/RelativeLayout;

    .line 43
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901fe:Landroid/view/View;

    .line 44
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901dc

    const-string v1, "field \'mPowerSaving\' and method \'onMPowerSavingClicked\'"

    .line 50
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 51
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mPowerSaving\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mPowerSaving:Landroid/widget/RelativeLayout;

    .line 52
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901dc:Landroid/view/View;

    .line 53
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090008

    const-string v1, "field \'mAboutUsRl\' and method \'onMAboutUsRlClicked\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 60
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mAboutUsRl\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mAboutUsRl:Landroid/widget/RelativeLayout;

    .line 61
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090008:Landroid/view/View;

    .line 62
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090249

    const-string v1, "field \'mShareApp\' and method \'onViewClicked\'"

    .line 68
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 69
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mShareApp\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mShareApp:Landroid/widget/RelativeLayout;

    .line 70
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090249:Landroid/view/View;

    .line 71
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$4;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-class v0, Landroidx/appcompat/widget/SwitchCompat;

    const v1, 0x7f090058

    const-string v2, "field \'mCbLock\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mCbLock:Landroidx/appcompat/widget/SwitchCompat;

    .line 78
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f09021c

    const-string v2, "field \'mRlSignOut\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mRlSignOut:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901e0

    const-string v1, "field \'mPrivacy\' and method \'onPrivacy\'"

    .line 79
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 80
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mPrivacy\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mPrivacy:Landroid/widget/RelativeLayout;

    .line 81
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901e0:Landroid/view/View;

    .line 82
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$5;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$5;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090216

    const-string v2, "field \'mRlLock\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mRlLock:Landroid/widget/RelativeLayout;

    .line 89
    const-class v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f090081

    const-string v2, "field \'mCountry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mCountry:Landroid/widget/RelativeLayout;

    .line 90
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f090110

    const-string v2, "field \'mIvCountry\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mIvCountry:Landroid/widget/ImageView;

    const v0, 0x7f090244

    const-string v1, "field \'mSelectSize\' and method \'onSelectSize\'"

    .line 91
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 92
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mSelectSize\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mSelectSize:Landroid/widget/RelativeLayout;

    .line 93
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090244:Landroid/view/View;

    .line 94
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$6;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$6;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024f

    const-string v1, "field \'mSleep\' and method \'onSleep\'"

    .line 100
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 101
    const-class v2, Landroid/widget/RelativeLayout;

    const-string v3, "field \'mSleep\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mSleep:Landroid/widget/RelativeLayout;

    .line 102
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f09024f:Landroid/view/View;

    .line 103
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$7;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$7;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09020f

    const-string v1, "field \'rlDownload\' and method \'onDownload\'"

    .line 109
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 110
    const-class v1, Landroid/widget/RelativeLayout;

    const-string v2, "field \'rlDownload\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->rlDownload:Landroid/widget/RelativeLayout;

    .line 111
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f09020f:Landroid/view/View;

    .line 112
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$8;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding$8;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 125
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;

    .line 127
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mRateUs:Landroid/widget/RelativeLayout;

    .line 128
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mPowerSaving:Landroid/widget/RelativeLayout;

    .line 129
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mAboutUsRl:Landroid/widget/RelativeLayout;

    .line 130
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mShareApp:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mCbLock:Landroidx/appcompat/widget/SwitchCompat;

    .line 132
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mRlSignOut:Landroid/widget/RelativeLayout;

    .line 133
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mPrivacy:Landroid/widget/RelativeLayout;

    .line 134
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mRlLock:Landroid/widget/RelativeLayout;

    .line 135
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mCountry:Landroid/widget/RelativeLayout;

    .line 136
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mIvCountry:Landroid/widget/ImageView;

    .line 137
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mSelectSize:Landroid/widget/RelativeLayout;

    .line 138
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->mSleep:Landroid/widget/RelativeLayout;

    .line 139
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment;->rlDownload:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901fe:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901fe:Landroid/view/View;

    .line 143
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901dc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901dc:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090008:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090008:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090249:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090249:Landroid/view/View;

    .line 149
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901e0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f0901e0:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090244:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f090244:Landroid/view/View;

    .line 153
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f09024f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f09024f:Landroid/view/View;

    .line 155
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f09020f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/fragment/SettingFragment_ViewBinding;->view7f09020f:Landroid/view/View;

    return-void

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
