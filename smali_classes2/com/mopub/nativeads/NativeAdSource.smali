.class Lcom/mopub/nativeads/NativeAdSource;
.super Ljava/lang/Object;
.source "NativeAdSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
    }
.end annotation


# static fields
.field static final RETRY_TIME_ARRAY_MILLISECONDS:[I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

.field private mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

.field mCurrentRetries:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

.field private final mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

.field private final mNativeAdCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/TimestampWrapper<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mReplenishCacheHandler:Landroid/os/Handler;

.field private final mReplenishCacheRunnable:Ljava/lang/Runnable;

.field mRequestInFlight:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field private mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

.field mRetryInFlight:Z
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field mSequenceNumber:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    .line 45
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0xbb8
        0x1388
        0x61a8
        0xea60
        0x493e0
    .end array-data
.end method

.method constructor <init>()V
    .locals 3

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-direct {v2}, Lcom/mopub/nativeads/AdRendererRegistry;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/mopub/nativeads/NativeAdSource;-><init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;Landroid/os/Handler;Lcom/mopub/nativeads/AdRendererRegistry;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mopub/nativeads/TimestampWrapper<",
            "Lcom/mopub/nativeads/NativeAd;",
            ">;>;",
            "Landroid/os/Handler;",
            "Lcom/mopub/nativeads/AdRendererRegistry;",
            ")V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    .line 86
    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    .line 87
    new-instance p1, Lcom/mopub/nativeads/NativeAdSource$1;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/NativeAdSource$1;-><init>(Lcom/mopub/nativeads/NativeAdSource;)V

    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    .line 95
    iput-object p3, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    .line 98
    new-instance p1, Lcom/mopub/nativeads/NativeAdSource$2;

    invoke-direct {p1, p0}, Lcom/mopub/nativeads/NativeAdSource$2;-><init>(Lcom/mopub/nativeads/NativeAdSource;)V

    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 138
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->resetRetryTime()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/nativeads/NativeAdSource;)Lcom/mopub/nativeads/MoPubNative;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mopub/nativeads/NativeAdSource;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mopub/nativeads/NativeAdSource;)Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mopub/nativeads/NativeAdSource;)Ljava/lang/Runnable;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mopub/nativeads/NativeAdSource;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method clear()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/mopub/nativeads/MoPubNative;->destroy()V

    .line 202
    iput-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 205
    :cond_0
    iput-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    .line 207
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/TimestampWrapper;

    .line 208
    iget-object v1, v1, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v1, Lcom/mopub/nativeads/NativeAd;

    invoke-virtual {v1}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 212
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 213
    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 214
    iput v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    .line 215
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->resetRetryTime()V

    return-void
.end method

.method dequeueAd()Lcom/mopub/nativeads/NativeAd;
    .locals 8

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 233
    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mRetryInFlight:Z

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeAdSource;->mReplenishCacheRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/nativeads/TimestampWrapper;

    .line 241
    iget-wide v3, v2, Lcom/mopub/nativeads/TimestampWrapper;->mCreatedTimestamp:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xdbba00

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    .line 242
    iget-object v0, v2, Lcom/mopub/nativeads/TimestampWrapper;->mInstance:Ljava/lang/Object;

    check-cast v0, Lcom/mopub/nativeads/NativeAd;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getAdRendererCount()I
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getAdRendererCount()I

    move-result v0

    return v0
.end method

.method public getAdRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererForViewType(I)Lcom/mopub/nativeads/MoPubAdRenderer;

    move-result-object p1

    return-object p1
.end method

.method getRetryTime()I
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 262
    iget v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    sget-object v1, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 263
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    .line 265
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    iget v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    aget v0, v0, v1

    return v0
.end method

.method public getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->getViewTypeForAd(Lcom/mopub/nativeads/NativeAd;)I

    move-result p1

    return p1
.end method

.method loadAds(Landroid/app/Activity;Ljava/lang/String;Lcom/mopub/nativeads/RequestParameters;)V
    .locals 2

    .line 177
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNativeNetworkListener:Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;

    invoke-direct {v0, p1, p2, v1}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    invoke-virtual {p0, p3, v0}, Lcom/mopub/nativeads/NativeAdSource;->loadAds(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V

    return-void
.end method

.method loadAds(Lcom/mopub/nativeads/RequestParameters;Lcom/mopub/nativeads/MoPubNative;)V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->clear()V

    .line 185
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0}, Lcom/mopub/nativeads/AdRendererRegistry;->getRendererIterable()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/nativeads/MoPubAdRenderer;

    .line 186
    invoke-virtual {p2, v1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    goto :goto_0

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    .line 190
    iput-object p2, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    .line 192
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeAdSource;->replenishCache()V

    return-void
.end method

.method registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdRendererRegistry:Lcom/mopub/nativeads/AdRendererRegistry;

    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/AdRendererRegistry;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 156
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    :cond_0
    return-void
.end method

.method replenishCache()V
    .locals 3
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 275
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mNativeAdCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 276
    iput-boolean v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestInFlight:Z

    .line 277
    iget-object v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mMoPubNative:Lcom/mopub/nativeads/MoPubNative;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeAdSource;->mRequestParameters:Lcom/mopub/nativeads/RequestParameters;

    iget v2, p0, Lcom/mopub/nativeads/NativeAdSource;->mSequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method resetRetryTime()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    return-void
.end method

.method setAdSourceListener(Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/mopub/nativeads/NativeAdSource;->mAdSourceListener:Lcom/mopub/nativeads/NativeAdSource$AdSourceListener;

    return-void
.end method

.method updateRetryTime()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 250
    iget v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    sget-object v1, Lcom/mopub/nativeads/NativeAdSource;->RETRY_TIME_ARRAY_MILLISECONDS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 251
    iput v0, p0, Lcom/mopub/nativeads/NativeAdSource;->mCurrentRetries:I

    :cond_0
    return-void
.end method
