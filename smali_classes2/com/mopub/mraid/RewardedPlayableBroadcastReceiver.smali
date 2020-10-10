.class public Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;
.super Lcom/mopub/mobileads/BaseBroadcastReceiver;
.source "RewardedPlayableBroadcastReceiver.java"


# static fields
.field private static sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;J)V
    .locals 0

    .line 29
    invoke-direct {p0, p2, p3}, Lcom/mopub/mobileads/BaseBroadcastReceiver;-><init>(J)V

    .line 30
    iput-object p1, p0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    .line 31
    invoke-virtual {p0}, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 36
    sget-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    .line 38
    sget-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mopub.action.rewardedplayable.complete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    :cond_0
    sget-object v0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->sIntentFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->shouldConsumeBroadcast(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.mopub.action.rewardedplayable.complete"

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 55
    iget-object p1, p0, Lcom/mopub/mraid/RewardedPlayableBroadcastReceiver;->mRewardedMraidListener:Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mraid/RewardedMraidInterstitial$RewardedMraidInterstitialListener;->onMraidComplete()V

    .line 56
    invoke-virtual {p0, p0}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method
