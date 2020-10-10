.class public Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;
.super Lcom/google/android/gms/ads/mediation/Adapter;
.source "MoPubMediationAdapter.java"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationRewardedAd;
.implements Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# static fields
.field static final TAG:Ljava/lang/String; = "MoPubMediationAdapter"


# instance fields
.field private adExpired:Z

.field private adUnitID:Ljava/lang/String;

.field private mAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/Adapter;-><init>()V

    const-string v0, ""

    .line 42
    iput-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSDKVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 4

    const-string v0, "5.8.0"

    const-string v1, "\\."

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 66
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 67
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 68
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 69
    new-instance v3, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v3
.end method

.method public getVersionInfo()Lcom/google/android/gms/ads/mediation/VersionInfo;
    .locals 5

    const-string v0, "5.8.0.0"

    const-string v1, "\\."

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    .line 57
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    .line 58
    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v3, v0

    .line 59
    new-instance v0, Lcom/google/android/gms/ads/mediation/VersionInfo;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/ads/mediation/VersionInfo;-><init>(III)V

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/mediation/MediationConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 77
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "MoPub SDK requires an Activity context to initialize."

    .line 78
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    return-void

    .line 83
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/MediationConfiguration;

    .line 84
    invoke-virtual {v0}, Lcom/google/android/gms/ads/mediation/MediationConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "adUnitId"

    .line 87
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_2
    iget-object p3, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p1, "Initialization failed: Missing or Invalid MoPub Ad Unit ID."

    .line 94
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    return-void

    .line 99
    :cond_3
    new-instance p3, Lcom/mopub/common/SdkConfiguration$Builder;

    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    invoke-direct {p3, v0}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p3

    .line 100
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object v0

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$1;-><init>(Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method public loadRewardedAd(Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdConfiguration;",
            "Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback<",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAd;",
            "Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;",
            ">;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getServerParameters()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "adUnitId"

    .line 117
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Failed to request ad from MoPub: Missing or Invalid MoPub Ad Unit ID."

    .line 122
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    iput-object p2, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 128
    new-instance p2, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;

    const/4 v1, 0x0

    .line 130
    invoke-static {p1, v1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 131
    invoke-static {p1, v2}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Z)Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getLocation()Landroid/location/Location;

    move-result-object p1

    invoke-direct {p2, v1, v2, p1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    .line 134
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p1

    iget-object v1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, p2, p0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->loadRewardedAd(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    return-void
.end method

.method public onRewardedVideoClicked(Ljava/lang/String;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_0

    .line 211
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->reportAdClicked()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoClosed(Ljava/lang/String;)V
    .locals 0

    .line 238
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_0

    .line 239
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdClosed()V

    :cond_0
    return-void
.end method

.method public onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 218
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_0

    .line 221
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoComplete()V

    .line 222
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    new-instance v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$2;-><init>(Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;Lcom/mopub/common/MoPubReward;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onUserEarnedReward(Lcom/google/android/gms/ads/rewarded/RewardItem;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    if-eqz v0, :cond_4

    const-string v0, "Failed to load MoPub rewarded video: "

    .line 167
    sget-object v1, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter$3;->$SwitchMap$com$mopub$mobileads$MoPubErrorCode:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_0

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Internal Error."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 179
    :cond_0
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->adExpired(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 180
    iput-boolean v1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adExpired:Z

    .line 181
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "The MoPub Ad has expired. Please make a new Ad Request."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 175
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Invalid Request."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 172
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Network error."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 169
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "No Fill."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 187
    :goto_0
    sget-object p2, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object p2, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    invoke-interface {p2, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mAdLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1, p0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onSuccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    iput-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    :cond_0
    return-void
.end method

.method public onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .line 202
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to playback MoPub rewarded video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoStarted(Ljava/lang/String;)V
    .locals 0

    .line 194
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationAdCallback;->onAdOpened()V

    .line 196
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    invoke-interface {p1}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onVideoStart()V

    :cond_0
    return-void
.end method

.method public showAd(Landroid/content/Context;)V
    .locals 1

    .line 140
    iget-boolean p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adExpired:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_0

    const-string v0, "Failed to show a MoPub rewarded video. The MoPub Ad has expired. Please make a new Ad Request."

    .line 141
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-boolean p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adExpired:Z

    if-nez p1, :cond_1

    .line 144
    invoke-static {}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;

    move-result-object p1

    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->adUnitID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->showRewardedAd(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 145
    iget-object p1, p0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->mRewardedAdCallback:Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;

    if-eqz p1, :cond_1

    const-string v0, "Failed to show a MoPub rewarded video. Either the video is not ready or the ad unit ID is empty."

    .line 146
    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/mediation/MediationRewardedAdCallback;->onAdFailedToShow(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
