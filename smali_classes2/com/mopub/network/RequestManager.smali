.class public abstract Lcom/mopub/network/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/RequestManager$RequestFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/mopub/network/RequestManager$RequestFactory;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mBackoffPolicy:Lcom/mopub/network/BackoffPolicy;

.field protected mCurrentRequest:Lcom/mopub/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mRequestFactory:Lcom/mopub/network/RequestManager$RequestFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/network/RequestManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 2

    .line 74
    invoke-static {}, Lcom/mopub/network/Networking;->getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/mopub/network/RequestManager;->mCurrentRequest:Lcom/mopub/volley/Request;

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, v1}, Lcom/mopub/network/MoPubRequestQueue;->cancel(Lcom/mopub/volley/Request;)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/network/RequestManager;->clearRequest()V

    return-void
.end method

.method clearRequest()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/mopub/network/RequestManager;->mCurrentRequest:Lcom/mopub/volley/Request;

    .line 101
    iput-object v0, p0, Lcom/mopub/network/RequestManager;->mRequestFactory:Lcom/mopub/network/RequestManager$RequestFactory;

    .line 102
    iput-object v0, p0, Lcom/mopub/network/RequestManager;->mBackoffPolicy:Lcom/mopub/network/BackoffPolicy;

    return-void
.end method

.method abstract createRequest()Lcom/mopub/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation
.end method

.method public isAtCapacity()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mopub/network/RequestManager;->mCurrentRequest:Lcom/mopub/volley/Request;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeRequest(Lcom/mopub/network/RequestManager$RequestFactory;Lcom/mopub/network/BackoffPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/mopub/network/BackoffPolicy;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 62
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/mopub/network/RequestManager;->cancelRequest()V

    .line 65
    iput-object p1, p0, Lcom/mopub/network/RequestManager;->mRequestFactory:Lcom/mopub/network/RequestManager$RequestFactory;

    .line 66
    iput-object p2, p0, Lcom/mopub/network/RequestManager;->mBackoffPolicy:Lcom/mopub/network/BackoffPolicy;

    .line 67
    invoke-virtual {p0}, Lcom/mopub/network/RequestManager;->makeRequestInternal()V

    return-void
.end method

.method makeRequestInternal()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/mopub/network/RequestManager;->createRequest()Lcom/mopub/volley/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/network/RequestManager;->mCurrentRequest:Lcom/mopub/volley/Request;

    .line 84
    invoke-static {}, Lcom/mopub/network/Networking;->getRequestQueue()Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MoPubRequest queue is null. Clearing request."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p0}, Lcom/mopub/network/RequestManager;->clearRequest()V

    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/RequestManager;->mBackoffPolicy:Lcom/mopub/network/BackoffPolicy;

    invoke-virtual {v1}, Lcom/mopub/network/BackoffPolicy;->getRetryCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/mopub/network/RequestManager;->mCurrentRequest:Lcom/mopub/volley/Request;

    invoke-virtual {v0, v1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    goto :goto_0

    .line 94
    :cond_1
    iget-object v1, p0, Lcom/mopub/network/RequestManager;->mCurrentRequest:Lcom/mopub/volley/Request;

    iget-object v2, p0, Lcom/mopub/network/RequestManager;->mBackoffPolicy:Lcom/mopub/network/BackoffPolicy;

    invoke-virtual {v2}, Lcom/mopub/network/BackoffPolicy;->getBackoffMs()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mopub/network/MoPubRequestQueue;->addDelayedRequest(Lcom/mopub/volley/Request;I)V

    :goto_0
    return-void
.end method
