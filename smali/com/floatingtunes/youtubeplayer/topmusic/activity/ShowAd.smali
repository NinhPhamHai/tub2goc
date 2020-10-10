.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/ShowAd;
.super Landroid/app/Activity;
.source "ShowAd.java"


# instance fields
.field private number:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ShowAd;->number:I

    return-void
.end method

.method public static actionStart(Landroid/content/Context;)V
    .locals 2

    .line 20
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ShowAd;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000000

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 24
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c002f

    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 37
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->getInstance(Landroid/app/Activity;)Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->showInterstitialNow()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ShowAd;->number:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ShowAd;->number:I

    .line 50
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/ShowAd;->number:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
