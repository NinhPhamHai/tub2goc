.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "RateDialog.java"


# instance fields
.field mBtnCancel:Landroid/widget/Button;

.field mBtnRate:Landroid/widget/Button;

.field mRateHand:Landroid/widget/ImageView;

.field mRateHandLayout:Landroid/widget/LinearLayout;

.field mRateResultTip:Landroid/widget/TextView;

.field mRateStar1:Landroid/widget/ImageButton;

.field mRateStar2:Landroid/widget/ImageButton;

.field mRateStar3:Landroid/widget/ImageButton;

.field mRateStar4:Landroid/widget/ImageButton;

.field mRateStar5:Landroid/widget/ImageButton;

.field mRateTip:Landroid/widget/TextView;

.field mStarLayout:Landroid/widget/LinearLayout;

.field star_level:I

.field unbinder:Lbutterknife/Unbinder;

.field private user_feedback:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->user_feedback:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->user_feedback:Ljava/lang/String;

    return-object p1
.end method

.method public static newInstance()Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;
    .locals 1

    .line 69
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;-><init>()V

    return-object v0
.end method

.method public static showMarket(Landroid/content/Context;)V
    .locals 5

    const-string v0, "com.android.vending"

    if-nez p0, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 239
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 241
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.finsky.activities.LaunchUrlHandlerActivity"

    invoke-direct {v3, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 244
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    new-instance v0, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showStar(I)V
    .locals 7

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const v1, 0x7f06008d

    const/4 v2, 0x0

    const/16 v3, 0x8

    const v4, 0x7f0802a8

    const v5, 0x7f0802a9

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    const v6, 0x7f060087

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 221
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar2:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 222
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar3:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 223
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar4:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 224
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar5:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 225
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateTip:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    const v0, 0x7f1101a4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 208
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 209
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar2:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 210
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar3:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 211
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar4:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 212
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar5:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 213
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 214
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateTip:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    const v0, 0x7f1101a3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 197
    :cond_2
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 198
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar2:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 199
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar3:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 200
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar4:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 201
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar5:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 202
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateTip:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    const v0, 0x7f1101a2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 205
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v6}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 186
    :cond_3
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 187
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar2:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 188
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar3:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 189
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar4:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 190
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar5:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 191
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateTip:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    const v0, 0x7f1101a0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 194
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 175
    :cond_4
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar1:Landroid/widget/ImageButton;

    invoke-virtual {p1, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 176
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar2:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 177
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar3:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 178
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar4:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 179
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateStar5:Landroid/widget/ImageButton;

    invoke-virtual {p1, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 180
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateTip:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    const v0, 0x7f1101a1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 183
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->mRateResultTip:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 86
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0100

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->unbinder:Lbutterknife/Unbinder;

    .line 90
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 79
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 3

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090042

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const v0, 0x7f09004e

    const/4 v2, 0x3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p1, 0x5

    .line 117
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    .line 118
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->showStar(I)V

    goto/16 :goto_0

    :pswitch_1
    const/4 p1, 0x4

    .line 113
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    .line 114
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->showStar(I)V

    goto/16 :goto_0

    .line 109
    :pswitch_2
    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    .line 110
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->showStar(I)V

    goto/16 :goto_0

    :pswitch_3
    const/4 p1, 0x2

    .line 105
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    .line 106
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->showStar(I)V

    goto/16 :goto_0

    .line 101
    :pswitch_4
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    .line 102
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->showStar(I)V

    goto/16 :goto_0

    .line 125
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setUserRateStatus(Landroid/content/Context;Z)V

    .line 126
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 127
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->star_level:I

    if-lt p1, v2, :cond_1

    .line 128
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;->showMarket(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 130
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f110197

    .line 131
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f110198

    .line 132
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f110199

    .line 133
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f11019a

    .line 134
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f11019b

    .line 135
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f110196

    .line 138
    invoke-virtual {v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 139
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const/4 p1, 0x0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$2;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    .line 140
    invoke-virtual {v0, p1, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallbackMultiChoice([Ljava/lang/Integer;Lcom/afollestad/materialdialogs/MaterialDialog$ListCallbackMultiChoice;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 155
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->alwaysCallMultiChoiceCallback()Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const p1, 0x7f110195

    .line 156
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    const p1, 0x7f110194

    .line 157
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$1;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/RateDialog;)V

    .line 158
    invoke-virtual {v0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 164
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setUserRateStatus(Landroid/content/Context;Z)V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0901f7
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
