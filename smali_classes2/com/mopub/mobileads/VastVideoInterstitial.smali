.class Lcom/mopub/mobileads/VastVideoInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "VastVideoInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/VastManager$VastManagerListener;


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "VastVideoInterstitial"


# instance fields
.field private mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private mExternalViewabilityTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrientation:Lcom/mopub/common/CreativeOrientation;

.field private mVastManager:Lcom/mopub/mobileads/VastManager;

.field private mVastResponse:Ljava/lang/String;

.field private mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private mVideoTrackers:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "html-response-body"

    .line 41
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    const-string v0, "com_mopub_orientation"

    .line 42
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/CreativeOrientation;->fromString(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mOrientation:Lcom/mopub/common/CreativeOrientation;

    const-string v0, "external-video-viewability-trackers"

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 47
    :try_start_0
    invoke-static {v0}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mExternalViewabilityTrackers:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v4, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse video viewability trackers to JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "video-trackers"

    .line 53
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 54
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVideoTrackers:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 60
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->ERROR:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse video trackers to JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVideoTrackers:Lorg/json/JSONObject;

    :goto_1
    return-void
.end method

.method public onInvalidate()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/VastManager;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastManager;->cancel()V

    .line 95
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->onInvalidate()V

    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 106
    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 111
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVideoTrackers:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addVideoTrackers(Lorg/json/JSONObject;)V

    .line 112
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mExternalViewabilityTrackers:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addExternalViewabilityTrackers(Ljava/util/Map;)V

    .line 113
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {p1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    return-void
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 5

    .line 67
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 69
    iget-object p1, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 70
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/VastVideoInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v2, v0

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 71
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v0, 0x2

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v1, v2, v0

    .line 70
    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 73
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/VastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/VastManager;

    .line 78
    iget-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/VastManager;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    iget-object v3, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    .line 79
    invoke-virtual {v3}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p1, v2, p0, v3, v4}, Lcom/mopub/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V

    .line 80
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/VastVideoInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public showInterstitial()V
    .locals 5

    .line 85
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/VastVideoInterstitial;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-wide v2, p0, Lcom/mopub/mobileads/ResponseBodyInterstitial;->mBroadcastIdentifier:J

    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mOrientation:Lcom/mopub/common/CreativeOrientation;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mopub/mobileads/BaseVideoPlayerActivity;->startVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;JLcom/mopub/common/CreativeOrientation;)V

    return-void
.end method
