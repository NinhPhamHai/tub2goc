.class Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton$1;
.super Lcom/google/android/gms/ads/AdListener;
.source "AdmobInterstitialSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 60
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISMISS:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    invoke-direct {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->access$100()Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;Z)Z

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 0

    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;->DISPLAY:Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;

    invoke-direct {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/bus/AdEvent$AdStatus;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobInterstitialSingleton;->lastShowAdTimeStamp:J

    return-void
.end method
