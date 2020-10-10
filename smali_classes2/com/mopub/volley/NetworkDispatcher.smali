.class public Lcom/mopub/volley/NetworkDispatcher;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final mCache:Lcom/mopub/volley/Cache;

.field private final mDelivery:Lcom/mopub/volley/ResponseDelivery;

.field private final mNetwork:Lcom/mopub/volley/Network;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile mQuit:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/mopub/volley/Network;Lcom/mopub/volley/Cache;Lcom/mopub/volley/ResponseDelivery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/mopub/volley/Request<",
            "*>;>;",
            "Lcom/mopub/volley/Network;",
            "Lcom/mopub/volley/Cache;",
            "Lcom/mopub/volley/ResponseDelivery;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mQuit:Z

    .line 62
    iput-object p1, p0, Lcom/mopub/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 63
    iput-object p2, p0, Lcom/mopub/volley/NetworkDispatcher;->mNetwork:Lcom/mopub/volley/Network;

    .line 64
    iput-object p3, p0, Lcom/mopub/volley/NetworkDispatcher;->mCache:Lcom/mopub/volley/Cache;

    .line 65
    iput-object p4, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    return-void
.end method

.method private addTrafficStatsTag(Lcom/mopub/volley/Request;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method

.method private parseAndDeliverNetworkError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;",
            "Lcom/mopub/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .line 174
    invoke-virtual {p1, p2}, Lcom/mopub/volley/Request;->parseNetworkError(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/VolleyError;

    move-result-object p2

    .line 175
    iget-object v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v0, p1, p2}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    return-void
.end method

.method private processRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/volley/Request;

    .line 111
    invoke-virtual {p0, v0}, Lcom/mopub/volley/NetworkDispatcher;->processRequest(Lcom/mopub/volley/Request;)V

    return-void
.end method


# virtual methods
.method processRequest(Lcom/mopub/volley/Request;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/Request<",
            "*>;)V"
        }
    .end annotation

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 117
    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->sendEvent(I)V

    const/4 v2, 0x4

    :try_start_0
    const-string v3, "network-queue-take"

    .line 119
    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "network-discard-cancelled"

    .line 124
    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_0
    .catch Lcom/mopub/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->sendEvent(I)V

    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/mopub/volley/NetworkDispatcher;->addTrafficStatsTag(Lcom/mopub/volley/Request;)V

    .line 132
    iget-object v3, p0, Lcom/mopub/volley/NetworkDispatcher;->mNetwork:Lcom/mopub/volley/Network;

    invoke-interface {v3, p1}, Lcom/mopub/volley/Network;->performRequest(Lcom/mopub/volley/Request;)Lcom/mopub/volley/NetworkResponse;

    move-result-object v3

    const-string v4, "network-http-complete"

    .line 133
    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 137
    iget-boolean v4, v3, Lcom/mopub/volley/NetworkResponse;->notModified:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->hasHadResponseDelivered()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "not-modified"

    .line 138
    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->finish(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_1
    .catch Lcom/mopub/volley/VolleyError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->sendEvent(I)V

    return-void

    .line 144
    :cond_1
    :try_start_2
    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;

    move-result-object v3

    const-string v4, "network-parse-complete"

    .line 145
    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->shouldCache()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    if-eqz v4, :cond_2

    .line 150
    iget-object v4, p0, Lcom/mopub/volley/NetworkDispatcher;->mCache:Lcom/mopub/volley/Cache;

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Lcom/mopub/volley/Response;->cacheEntry:Lcom/mopub/volley/Cache$Entry;

    invoke-interface {v4, v5, v6}, Lcom/mopub/volley/Cache;->put(Ljava/lang/String;Lcom/mopub/volley/Cache$Entry;)V

    const-string v4, "network-cache-written"

    .line 151
    invoke-virtual {p1, v4}, Lcom/mopub/volley/Request;->addMarker(Ljava/lang/String;)V

    .line 155
    :cond_2
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->markDelivered()V

    .line 156
    iget-object v4, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v4, p1, v3}, Lcom/mopub/volley/ResponseDelivery;->postResponse(Lcom/mopub/volley/Request;Lcom/mopub/volley/Response;)V

    .line 157
    invoke-virtual {p1, v3}, Lcom/mopub/volley/Request;->notifyListenerResponseReceived(Lcom/mopub/volley/Response;)V
    :try_end_2
    .catch Lcom/mopub/volley/VolleyError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "Unhandled exception %s"

    const/4 v5, 0x1

    .line 163
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v4, Lcom/mopub/volley/VolleyError;

    invoke-direct {v4, v3}, Lcom/mopub/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/mopub/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 166
    iget-object v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mDelivery:Lcom/mopub/volley/ResponseDelivery;

    invoke-interface {v0, p1, v4}, Lcom/mopub/volley/ResponseDelivery;->postError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    .line 167
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V

    goto :goto_0

    :catch_1
    move-exception v3

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/mopub/volley/VolleyError;->setNetworkTimeMs(J)V

    .line 160
    invoke-direct {p0, p1, v3}, Lcom/mopub/volley/NetworkDispatcher;->parseAndDeliverNetworkError(Lcom/mopub/volley/Request;Lcom/mopub/volley/VolleyError;)V

    .line 161
    invoke-virtual {p1}, Lcom/mopub/volley/Request;->notifyListenerResponseNotUsable()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    :goto_0
    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->sendEvent(I)V

    return-void

    :goto_1
    invoke-virtual {p1, v2}, Lcom/mopub/volley/Request;->sendEvent(I)V

    throw v0
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mQuit:Z

    .line 74
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 87
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 90
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mopub/volley/NetworkDispatcher;->processRequest()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    iget-boolean v0, p0, Lcom/mopub/volley/NetworkDispatcher;->mQuit:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    invoke-static {v1, v0}, Lcom/mopub/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
