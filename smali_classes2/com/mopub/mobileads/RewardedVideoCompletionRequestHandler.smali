.class public Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;
.super Ljava/lang/Object;
.source "RewardedVideoCompletionRequestHandler.java"

# interfaces
.implements Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;


# static fields
.field static final RETRY_TIMES:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mRequestQueue:Lcom/mopub/volley/RequestQueue;

.field private mRetryCount:I

.field private volatile mShouldStop:Z

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 35
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 66
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 83
    invoke-static {p8}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 85
    invoke-static/range {p2 .. p7}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->appendParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    const/4 p2, 0x0

    .line 86
    iput p2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 87
    iput-object p8, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mHandler:Landroid/os/Handler;

    .line 88
    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static appendParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 168
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 169
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 170
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "&customer_id="

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&rcn="

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&rca="

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&nv="

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "5.8.0"

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&v="

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&cec="

    .line 180
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p4, :cond_1

    goto :goto_1

    .line 181
    :cond_1
    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "&rcd="

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getTimeout(I)I
    .locals 2

    if-ltz p0, :cond_0

    .line 155
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 156
    aget p0, v0, p0

    return p0

    .line 158
    :cond_0
    sget-object p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget p0, p0, v0

    return p0
.end method

.method public static makeRewardedVideoCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method makeRewardedVideoCompletionRequest()V
    .locals 7

    .line 93
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    new-instance v3, Lcom/mopub/volley/DefaultRetryPolicy;

    iget v4, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 101
    invoke-static {v4}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->getTimeout(I)I

    move-result v4

    add-int/lit16 v4, v4, -0x3e8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;)V

    .line 103
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/Request;->setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;

    .line 104
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 106
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    .line 107
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Exceeded number of retries for rewarded video completion request."

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;

    invoke-direct {v1, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;-><init>(Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;)V

    iget v3, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 116
    invoke-static {v3}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->getTimeout(I)I

    move-result v3

    int-to-long v3, v3

    .line 111
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 117
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    return-void
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 130
    iget-object p1, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_0

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 133
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    :cond_1
    return-void
.end method

.method public onResponse(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x258

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    :cond_1
    return-void
.end method
