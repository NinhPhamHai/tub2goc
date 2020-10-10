.class public Lcom/mopub/mobileads/CustomEventBannerAdapter;
.super Ljava/lang/Object;
.source "CustomEventBannerAdapter.java"

# interfaces
.implements Lcom/mopub/mobileads/InternalCustomEventBannerListener;


# static fields
.field public static final DEFAULT_BANNER_TIMEOUT_DELAY:I = 0x2710


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

.field private final mHandler:Landroid/os/Handler;

.field private mImpressionMinVisibleDips:I

.field private mImpressionMinVisibleMs:I

.field private mInvalidated:Z

.field private mIsVisibilityImpressionTrackingEnabled:Z

.field private mLocalExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMoPubView:Lcom/mopub/mobileads/MoPubView;

.field private mServerExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeout:Ljava/lang/Runnable;

.field private mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/MoPubView;Ljava/lang/String;Ljava/util/Map;JLcom/mopub/common/AdReport;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/mopub/common/AdReport;",
            ")V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 50
    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    .line 51
    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    .line 60
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    .line 63
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 64
    new-instance p1, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$1;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    .line 75
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to invoke custom event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 77
    :try_start_0
    invoke-static {p2}, Lcom/mopub/mobileads/factories/CustomEventBannerFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/CustomEventBanner;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1, p3}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 88
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->parseBannerImpressionTrackingHeaders()V

    .line 90
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getLocalExtras()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 91
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object p2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubView;->getLocation()Landroid/location/Location;

    move-result-object p2

    const-string p3, "location"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "broadcastIdentifier"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    const-string p2, "mopub-intent-ad-report"

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object p2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubView;->getAdWidth()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "com_mopub_ad_width"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object p2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p2}, Lcom/mopub/mobileads/MoPubView;->getAdHeight()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "com_mopub_ad_height"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-boolean p2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "banner-impression-pixel-count-enabled"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 79
    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p3, v1, [Ljava/lang/Object;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Couldn\'t locate or instantiate custom event: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 80
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_NOT_FOUND:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1, p2}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/MoPubView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/mobileads/CustomEventBannerAdapter;)Lcom/mopub/mobileads/CustomEventBanner;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    return-object p0
.end method

.method private cancelTimeout()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getTimeoutDelayMilliseconds()I
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    const/16 v1, 0x2710

    if-nez v0, :cond_0

    return v1

    .line 185
    :cond_0
    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->getAdTimeoutDelay(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private parseBannerImpressionTrackingHeaders()V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    const-string v1, "banner-impression-min-pixels"

    .line 190
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    const-string v2, "banner-impression-min-ms"

    .line 192
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 197
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "Cannot parse integer from header banner-impression-min-pixels"

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 204
    :goto_0
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 206
    :catch_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "Cannot parse integer from header banner-impression-min-ms"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 210
    :goto_1
    iget v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    if-ltz v0, :cond_0

    .line 211
    iput-boolean v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method invalidate()V
    .locals 7
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->onInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Invalidating a custom event banner threw an exception"

    aput-object v6, v5, v1

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 132
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 134
    :try_start_1
    invoke-virtual {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 136
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Destroying a banner visibility tracker threw an exception"

    aput-object v6, v2, v1

    aput-object v0, v2, v3

    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 138
    :goto_1
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    .line 140
    :cond_1
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    .line 141
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    .line 142
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    .line 143
    iput-object v4, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    .line 144
    iput-boolean v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    return-void
.end method

.method isInvalidated()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mInvalidated:Z

    return v0
.end method

.method loadAd()V
    .locals 5
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-nez v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mTimeout:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->getTimeoutDelayMilliseconds()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    iget-object v1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mLocalExtras:Ljava/util/Map;

    iget-object v3, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mServerExtras:Ljava/util/Map;

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/CustomEventBanner;->loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAd() failed with code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 115
    invoke-virtual {v4}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 114
    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBannerClicked()V
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->registerClick()V

    :cond_1
    return-void
.end method

.method public onBannerCollapsed()V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->dismissOverlay()V

    .line 311
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adClosed()V

    return-void
.end method

.method public onBannerExpanded()V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->engageOverlay()V

    .line 301
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->adPresentedOverlay()V

    return-void
.end method

.method public onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 286
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 288
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    :cond_2
    return-void
.end method

.method public onBannerImpression()V
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v0, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    .line 335
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    if-eqz v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->trackMpxAndThirdPartyImpressions()V

    :cond_1
    return-void
.end method

.method public onBannerLoaded(Landroid/view/View;)V
    .locals 10

    .line 221
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->isInvalidated()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onBannerLoaded() success. Attempting to show."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 227
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->cancelTimeout()V

    .line 229
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_3

    .line 230
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->creativeDownloaded()V

    .line 238
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->pauseAutoRefresh()V

    .line 244
    new-instance v0, Lcom/mopub/mobileads/BannerVisibilityTracker;

    iget-object v5, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    iget v8, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleDips:I

    iget v9, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mImpressionMinVisibleMs:I

    move-object v4, v0

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/mopub/mobileads/BannerVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    .line 246
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mVisibilityTracker:Lcom/mopub/mobileads/BannerVisibilityTracker;

    new-instance v2, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter$2;-><init>(Lcom/mopub/mobileads/CustomEventBannerAdapter;)V

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/BannerVisibilityTracker;->setBannerVisibilityTrackerListener(Lcom/mopub/mobileads/BannerVisibilityTracker$BannerVisibilityTrackerListener;)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdContentView(Landroid/view/View;)V

    .line 262
    iget-boolean v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mIsVisibilityImpressionTrackingEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mCustomEventBanner:Lcom/mopub/mobileads/CustomEventBanner;

    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v0}, Lcom/mopub/mobileads/CustomEventBanner;->isAutomaticImpressionAndClickTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    instance-of p1, p1, Lcom/mopub/mobileads/HtmlBannerWebView;

    if-nez p1, :cond_2

    .line 266
    iget-object p1, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubView;->trackNativeImpression()V

    .line 270
    :cond_2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "onBannerLoaded() - Show successful."

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 272
    :cond_3
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBannerLoaded() - Show failed with code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 273
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 272
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onLeaveApplication()V
    .locals 0

    .line 343
    invoke-virtual {p0}, Lcom/mopub/mobileads/CustomEventBannerAdapter;->onBannerClicked()V

    return-void
.end method

.method public onPauseAutoRefresh()V
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->engageOverlay()V

    :cond_0
    return-void
.end method

.method public onResumeAutoRefresh()V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/mopub/mobileads/CustomEventBannerAdapter;->mMoPubView:Lcom/mopub/mobileads/MoPubView;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->dismissOverlay()V

    :cond_0
    return-void
.end method
