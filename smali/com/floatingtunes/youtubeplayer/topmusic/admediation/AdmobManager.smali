.class public Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobManager;
.super Ljava/lang/Object;
.source "AdmobManager.java"


# direct methods
.method public static initAds(Landroid/content/Context;)V
    .locals 4

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/mopub/common/SdkConfiguration$Builder;

    const-string v1, "c467c5d89d7343838a805f01e4e9ef37"

    invoke-direct {v0, v1}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isPersonalizedAdsEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "npa"

    const-string v3, "1"

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object v0

    .line 34
    :goto_0
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobManager$1;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobManager$1;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method
