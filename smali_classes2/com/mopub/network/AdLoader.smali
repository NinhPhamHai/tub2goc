.class public Lcom/mopub/network/AdLoader;
.super Ljava/lang/Object;
.source "AdLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdLoader$Listener;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private final mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

.field private mContentDownloaded:Z

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

.field private volatile mFailed:Z

.field private mHandler:Landroid/os/Handler;

.field protected mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

.field private mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

.field protected mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

.field private final mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

.field private volatile mRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .locals 6

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 75
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 76
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    .line 80
    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

    .line 82
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance p5, Lcom/mopub/network/AdLoader$1;

    invoke-direct {p5, p0}, Lcom/mopub/network/AdLoader$1;-><init>(Lcom/mopub/network/AdLoader;)V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

    const/4 p5, 0x0

    .line 106
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    .line 107
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    .line 108
    new-instance p5, Lcom/mopub/network/MultiAdRequest;

    iget-object v5, p0, Lcom/mopub/network/AdLoader;->mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    return-void
.end method

.method static synthetic access$002(Lcom/mopub/network/AdLoader;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    return p1
.end method

.method static synthetic access$102(Lcom/mopub/network/AdLoader;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mopub/network/AdLoader;Lcom/mopub/volley/VolleyError;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mopub/network/AdLoader;->deliverError(Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/network/AdLoader;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mopub/network/AdLoader;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mopub/network/AdLoader;->deliverResponse(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method private creativeDownloadFailed(Lcom/mopub/mobileads/MoPubError;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 242
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Must provide error code to report creative download error"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 247
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    if-eqz v0, :cond_2

    .line 253
    invoke-virtual {v0, v2, p1}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoad(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 254
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    invoke-virtual {v0, v2, p1}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoadFail(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    :cond_2
    return-void

    .line 248
    :cond_3
    :goto_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot send creative mFailed analytics."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method private deliverError(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    .line 293
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    .line 296
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_1

    .line 297
    instance-of v1, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v1, :cond_0

    .line 298
    invoke-interface {v0, p1}, Lcom/mopub/volley/Response$ErrorListener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    goto :goto_0

    .line 300
    :cond_0
    new-instance v1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v3, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v1, v2, p1, v3}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    .line 300
    invoke-interface {v0, v1}, Lcom/mopub/volley/Response$ErrorListener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private deliverResponse(Lcom/mopub/network/AdResponse;)V
    .locals 2

    .line 313
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 315
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 316
    new-instance v1, Lcom/mopub/network/ContentDownloadAnalytics;

    invoke-direct {v1, p1}, Lcom/mopub/network/ContentDownloadAnalytics;-><init>(Lcom/mopub/network/AdResponse;)V

    iput-object v1, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    .line 317
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    invoke-virtual {v1, v0}, Lcom/mopub/network/ContentDownloadAnalytics;->reportBeforeLoad(Landroid/content/Context;)V

    .line 319
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mOriginalListener:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_0

    .line 320
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    .line 321
    invoke-interface {v0, p1}, Lcom/mopub/network/AdLoader$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    :cond_0
    return-void
.end method

.method private fetchAd(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/network/MultiAdRequest;",
            "Landroid/content/Context;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 268
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/network/MoPubRequest;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubRequest;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string v0, "<no body>"

    .line 278
    :goto_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->REQUESTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 280
    iput-boolean v3, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    .line 281
    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    .line 282
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    .line 283
    invoke-virtual {p2, p1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-object p1
.end method


# virtual methods
.method public creativeDownloadSuccess()V
    .locals 4

    const/4 v0, 0x1

    .line 223
    iput-boolean v0, p0, Lcom/mopub/network/AdLoader;->mContentDownloaded:Z

    .line 225
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 226
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Response analytics should not be null here"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 230
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 231
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->mLastDeliveredResponse:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoad(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 237
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mDownloadTracker:Lcom/mopub/network/ContentDownloadAnalytics;

    invoke-virtual {v0, v1}, Lcom/mopub/network/ContentDownloadAnalytics;->reportAfterLoadSuccess(Landroid/content/Context;)V

    return-void

    .line 232
    :cond_2
    :goto_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Cannot send \'x-after-load-url\' analytics."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public hasMoreAds()Z
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 124
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mContentDownloaded:Z

    if-eqz v0, :cond_1

    return v1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->isWaterfallFinished()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isFailed()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    return v0
.end method

.method public loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubError;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mRunning:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    return-object p1

    .line 147
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->mFailed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 149
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$2;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$2;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    if-nez v2, :cond_3

    .line 162
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object p1

    iget-object v2, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v2, v2, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/mopub/network/RequestRateTracker;->isBlockedByRateLimit(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 164
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v5, v5, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is blocked by request rate limiting."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 165
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$3;

    invoke-direct {v2, p0}, Lcom/mopub/network/AdLoader$3;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    monitor-exit v0

    return-object v1

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/mopub/network/AdLoader;->fetchAd(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_3
    if-eqz p1, :cond_4

    .line 179
    invoke-direct {p0, p1}, Lcom/mopub/network/AdLoader;->creativeDownloadFailed(Lcom/mopub/mobileads/MoPubError;)V

    .line 183
    :cond_4
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 185
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object p1

    .line 186
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$4;

    invoke-direct {v2, p0, p1}, Lcom/mopub/network/AdLoader$4;-><init>(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    monitor-exit v0

    return-object p1

    .line 196
    :cond_5
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->isWaterfallFinished()Z

    move-result p1

    if-nez p1, :cond_6

    .line 198
    new-instance p1, Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mMultiAdResponse:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/MultiAdResponse;->getFailURL()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v4, v1, Lcom/mopub/network/MultiAdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v5, v1, Lcom/mopub/network/MultiAdRequest;->mAdUnitId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    .line 201
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/mopub/network/AdLoader;->mAdListener:Lcom/mopub/network/MultiAdRequest$Listener;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    .line 204
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mMultiAdRequest:Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/mopub/network/AdLoader;->fetchAd(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 206
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$5;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$5;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :catchall_0
    move-exception p1

    .line 206
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
