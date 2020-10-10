.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;
.super Landroid/app/Service;
.source "DownloadManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;
    }
.end annotation


# instance fields
.field private downloadDoneCount:I

.field private downloadDoneList:Ljava/lang/StringBuilder;

.field private downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

.field private downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

.field private downloadFailedNotificationID:I

.field private icDownloadDone:Landroid/graphics/Bitmap;

.field private icDownloadFailed:Landroid/graphics/Bitmap;

.field private icLauncher:Landroid/graphics/Bitmap;

.field private mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDownloadNotificationEnable:Z

.field private final mEchoObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private mFailedDownloads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mHandler:Landroid/os/Handler;

.field private mLock:Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;

.field private mLockAcquired:Z

.field private mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

.field private mNetworkStateListener:Landroid/content/BroadcastReceiver;

.field private mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOpenDownloadList:Landroid/app/PendingIntent;

.field private final mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mForeground:Z

    const/4 v1, 0x0

    .line 87
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    .line 88
    iput-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    .line 90
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 91
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 92
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 94
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    .line 97
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 100
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/-$$Lambda$DownloadManagerService$uGVc8nKvKyG9kUagEflAnaxx54I;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/-$$Lambda$DownloadManagerService$uGVc8nKvKyG9kUagEflAnaxx54I;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)V

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 103
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mLockAcquired:Z

    .line 104
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mLock:Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;

    const/16 v0, 0x3ea

    .line 106
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 107
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/util/SparseArray;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$300(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Landroid/os/Handler;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->manageObservers(Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroid/app/NotificationManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Ljava/lang/StringBuilder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic access$702(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneCount:I

    return p1
.end method

.method static synthetic access$800(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    return-object p0
.end method

.method static synthetic access$900(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    return p0
.end method

.method static synthetic access$908(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    return v0
.end method

.method static synthetic access$910(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    return v0
.end method

.method private handleConnectivityState(Z)V
    .locals 7

    .line 327
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const-string v1, "DownloadManagerService"

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->Unavailable:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    const-string v2, "Active network [connectivity is unavailable]"

    .line 332
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 334
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 335
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    .line 338
    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->Operating:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    goto :goto_0

    .line 340
    :cond_2
    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->Unavailable:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    .line 342
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Active network [connected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " metered="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v4

    .line 345
    :goto_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    if-nez v1, :cond_3

    return-void

    .line 346
    :cond_3
    invoke-virtual {v1, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->handleConnectivityState(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;Z)V

    return-void
.end method

.method private handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const v0, 0x7f110100

    .line 350
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f110101

    .line 352
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 353
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    :goto_0
    iput p1, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMaxRetry:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 355
    :catch_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    iput v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMaxRetry:I

    .line 357
    :goto_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->updateMaximumAttempts()V

    goto :goto_2

    :cond_1
    const v0, 0x7f1100ff

    .line 358
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    goto :goto_2

    :cond_2
    const v0, 0x7f110102

    .line 360
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefQueueLimit:Z

    goto :goto_2

    :cond_3
    const p1, 0x7f1100f9

    .line 362
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 363
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->loadMainVideoStorage()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object p2

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    goto :goto_2

    :cond_4
    const p1, 0x7f1100f3

    .line 364
    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 365
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->loadMainAudioStorage()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object p2

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic lambda$uGVc8nKvKyG9kUagEflAnaxx54I(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private loadMainAudioStorage()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;
    .locals 2

    const v0, 0x7f1100f3

    const-string v1, "audio"

    .line 557
    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object v0

    return-object v0
.end method

.method private loadMainStorage(ILjava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;
    .locals 6

    .line 561
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 563
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v3, Ljava/io/File;->separatorChar:C

    const-string v4, "DownloadManagerService"

    if-ne v1, v3, :cond_2

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old save path style present: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    const-string v5, ""

    if-ge v1, v3, :cond_1

    .line 569
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    :cond_2
    :try_start_0
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, p0, v1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the storage of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f110218

    const/4 p2, 0x1

    .line 580
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    return-object v2
.end method

.method private loadMainVideoStorage()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;
    .locals 2

    const v0, 0x7f1100f9

    const-string v1, "video"

    .line 553
    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->loadMainStorage(ILjava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object v0

    return-object v0
.end method

.method private makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    .line 527
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/high16 v1, 0x8000000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private manageLock(Z)V
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mLockAcquired:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 545
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mLock:Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;->acquireWifiAndCpu()V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mLock:Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;->releaseWifiAndCpu()V

    .line 549
    :goto_0
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mLockAcquired:Z

    return-void
.end method

.method private manageObservers(Landroid/os/Handler;Z)V
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 534
    :try_start_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 536
    :cond_0
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private notifyMediaScanner(Landroid/net/Uri;)V
    .locals 2

    .line 122
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static startMission(Landroid/content/Context;[Ljava/lang/String;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;CILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;J)V
    .locals 2

    .line 398
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.RUN"

    .line 399
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DownloadManagerService.extra.urls"

    .line 400
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DownloadManagerService.extra.kind"

    .line 401
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    const-string p1, "DownloadManagerService.extra.threads"

    .line 402
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "DownloadManagerService.extra.source"

    .line 403
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DownloadManagerService.extra.postprocessingName"

    .line 404
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DownloadManagerService.extra.postprocessingArgs"

    .line 405
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "DownloadManagerService.extra.nearLength"

    .line 406
    invoke-virtual {v0, p1, p8, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 408
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getParentUri()Landroid/net/Uri;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.storageParentPath"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 409
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-string p3, "DownloadManagerService.extra.storagePath"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 410
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadManagerService.extra.storageTag"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private startMission(Landroid/content/Intent;)V
    .locals 12

    const-string v0, "DownloadManagerService.extra.urls"

    .line 416
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadManagerService.extra.storagePath"

    .line 417
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    const-string v2, "DownloadManagerService.extra.storageParentPath"

    .line 418
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x1

    const-string v4, "DownloadManagerService.extra.threads"

    .line 419
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "DownloadManagerService.extra.kind"

    const/16 v6, 0x3f

    .line 420
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v5

    const-string v6, "DownloadManagerService.extra.postprocessingName"

    .line 421
    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "DownloadManagerService.extra.postprocessingArgs"

    .line 422
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "DownloadManagerService.extra.source"

    .line 423
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "DownloadManagerService.extra.nearLength"

    const-wide/16 v10, 0x0

    .line 424
    invoke-virtual {p1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v11, "DownloadManagerService.extra.storageTag"

    .line 425
    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 429
    :try_start_0
    new-instance v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-direct {v11, p0, v2, v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 438
    :cond_0
    invoke-static {v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->getAlgorithm(Ljava/lang/String;[Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    move-result-object p1

    .line 440
    :goto_0
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-direct {v1, v0, v11, v5, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;-><init>([Ljava/lang/String;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;CLcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;)V

    .line 441
    iput v4, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadCount:I

    .line 442
    iput-object v8, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->source:Ljava/lang/String;

    .line 443
    iput-wide v9, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->nearLength:J

    if-eqz p1, :cond_1

    .line 446
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    .line 448
    :cond_1
    invoke-direct {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 450
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->startMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    return-void

    :catch_0
    move-exception p1

    .line 431
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 289
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 291
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->notifyFailedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    .line 304
    invoke-direct {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 305
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->runMissions()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {p0, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_0

    .line 293
    :cond_2
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->notifyMediaScanner(Landroid/net/Uri;)V

    .line 294
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->notifyFinishedDownload(Ljava/lang/String;)V

    .line 295
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->setFinished(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    .line 296
    invoke-direct {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handleConnectivityState(Z)V

    .line 297
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->runMissions()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getRunningMissionsCount()I

    move-result v1

    if-lez v1, :cond_4

    const/4 v3, 0x1

    :cond_4
    invoke-virtual {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->updateForegroundState(Z)V

    .line 312
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v2, :cond_5

    .line 313
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mEchoObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 317
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 318
    iget v4, p1, Landroid/os/Message;->what:I

    iput v4, v3, Landroid/os/Message;->what:I

    .line 319
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 321
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 323
    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic lambda$onStartCommand$0$DownloadManagerService(Landroid/content/Intent;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->startMission(Landroid/content/Intent;)V

    return-void
.end method

.method public notifyFailedDownload(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 5

    .line 498
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    goto/16 :goto_1

    .line 500
    :cond_0
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotificationID:I

    .line 501
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mFailedDownloads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v1, :cond_1

    .line 504
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108008a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    .line 505
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f110222

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 506
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    .line 507
    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 508
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 509
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 512
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const v3, 0x7f1100ee

    if-ge v1, v2, :cond_2

    .line 513
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f110045

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 514
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 515
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 514
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 517
    :cond_2
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 518
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 519
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 520
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 519
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 523
    :goto_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadFailedNotification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public notifyFinishedDownload(Ljava/lang/String;)V
    .locals 5

    .line 454
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mDownloadNotificationEnable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1080082

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    .line 462
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const v3, 0x7f110222

    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    .line 464
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 465
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "com.floatingtunes.youtubeplayer.topmusic.reset_download_finished"

    .line 466
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v2, "com.floatingtunes.youtubeplayer.topmusic.open_downloads_finished"

    .line 467
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->makePendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    .line 470
    :cond_1
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneCount:I

    if-ge v0, v1, :cond_3

    .line 471
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_2

    .line 474
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f110045

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_0

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 479
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    const v2, 0x7f1100ef

    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 480
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v3, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 481
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 482
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    .line 480
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    goto :goto_1

    .line 485
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 489
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    const v0, 0x7f1100f0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneCount:I

    add-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 490
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 493
    :goto_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v0, 0x3e9

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 494
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneCount:I

    :cond_4
    :goto_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 280
    invoke-static {p0, p1}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    const-string v0, "Permission denied (write)"

    .line 282
    invoke-static {p0, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 6

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 133
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mBinder:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 134
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    .line 141
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    .line 143
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->loadMainVideoStorage()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object v2

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->loadMainAudioStorage()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "android.intent.action.MAIN"

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 148
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 152
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802ae

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const v1, 0x7f110222

    const v2, 0x7f1101fb

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x3

    .line 158
    new-instance v3, Landroid/app/NotificationChannel;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 160
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 162
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 166
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mOpenDownloadList:Landroid/app/PendingIntent;

    .line 167
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x1080081

    .line 168
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    .line 169
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 170
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f1101fc

    .line 171
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 173
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotification:Landroid/app/Notification;

    const-string v0, "notification"

    .line 175
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "connectivity"

    .line 176
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 179
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$2;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 190
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$3;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$3;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    .line 198
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f1100ff

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f110100

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    const v1, 0x7f110102

    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->handlePreferenceChange(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mLock:Lcom/floatingtunes/youtubeplayer/topmusic/download/LockManager;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 241
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 249
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 250
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 251
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    const/4 v1, 0x0

    .line 254
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->manageLock(Z)V

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 257
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListenerL:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNetworkStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mPrefChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 263
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icDownloadDone:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icDownloadFailed:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 265
    :cond_3
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->icLauncher:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 267
    :cond_4
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    invoke-virtual {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->pauseAllMissions(Z)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    const/4 p2, 0x2

    if-nez p1, :cond_0

    return p2

    .line 218
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Got intent: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DownloadManagerService"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string v0, "android.intent.action.RUN"

    .line 221
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/-$$Lambda$DownloadManagerService$OYA_E2M_kSI4x3-pfeFv339Nri4;

    invoke-direct {v0, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/-$$Lambda$DownloadManagerService$OYA_E2M_kSI4x3-pfeFv339Nri4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;Landroid/content/Intent;)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneNotification:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz p1, :cond_4

    const-string p1, "com.floatingtunes.youtubeplayer.topmusic.reset_download_finished"

    .line 224
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "com.floatingtunes.youtubeplayer.topmusic.open_downloads_finished"

    if-nez p1, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x0

    .line 225
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneCount:I

    .line 226
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->downloadDoneList:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 228
    :cond_3
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 229
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "android.intent.action.MAIN"

    .line 230
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p3, 0x10000000

    .line 231
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 229
    invoke-virtual {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return p2
.end method

.method public updateForegroundState(Z)V
    .locals 2

    .line 370
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mForeground:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0x3e8

    .line 373
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 375
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 378
    :goto_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->manageLock(Z)V

    .line 380
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService;->mForeground:Z

    return-void
.end method
