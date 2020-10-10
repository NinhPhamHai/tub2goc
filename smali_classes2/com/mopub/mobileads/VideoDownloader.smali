.class public Lcom/mopub/mobileads/VideoDownloader;
.super Ljava/lang/Object;
.source "VideoDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;,
        Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;
    }
.end annotation


# static fields
.field private static final sDownloaderTasks:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Deque;
    .locals 1

    .line 29
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    return-object v0
.end method

.method public static cache(Ljava/lang/String;Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V
    .locals 3

    .line 42
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 45
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "VideoDownloader attempted to cache video with null url."

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 46
    invoke-interface {p1, v1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    return-void

    .line 50
    :cond_0
    new-instance v2, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;

    invoke-direct {v2, p1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;-><init>(Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;)V

    .line 52
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    aput-object p0, v0, v1

    invoke-static {v2, v0}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    invoke-interface {p1, v1}, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderListener;->onComplete(Z)V

    :goto_0
    return-void
.end method

.method public static cancelAllDownloaderTasks()V
    .locals 2

    .line 60
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 61
    invoke-static {v1}, Lcom/mopub/mobileads/VideoDownloader;->cancelOneTask(Ljava/lang/ref/WeakReference;)Z

    goto :goto_0

    .line 64
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method public static cancelLastDownloadTask()V
    .locals 1

    .line 68
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/mopub/mobileads/VideoDownloader;->cancelOneTask(Ljava/lang/ref/WeakReference;)Z

    .line 73
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    return-void
.end method

.method private static cancelOneTask(Ljava/lang/ref/WeakReference;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public static clearDownloaderTasks()V
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 189
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method public static getDownloaderTasks()Ljava/util/Deque;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Deque<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/VideoDownloader$VideoDownloaderTask;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    sget-object v0, Lcom/mopub/mobileads/VideoDownloader;->sDownloaderTasks:Ljava/util/Deque;

    return-object v0
.end method
