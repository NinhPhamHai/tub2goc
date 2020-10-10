.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionItem;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadManager"


# instance fields
.field private final mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

.field private final mHandler:Landroid/os/Handler;

.field private mLastNetworkStatus:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

.field mMainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

.field mMainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

.field private final mMissionsFinished:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;",
            ">;"
        }
    .end annotation
.end field

.field private final mMissionsPending:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingMissionsDir:Ljava/io/File;

.field mPrefMaxRetry:I

.field mPrefMeteredDownloads:Z

.field mPrefQueueLimit:Z

.field private mSelfMissionsControl:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    .line 50
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->Unavailable:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mLastNetworkStatus:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    .line 71
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    .line 72
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 74
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 75
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->loadFinishedMissions()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    .line 76
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getPendingDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    .line 78
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->mkdir(Ljava/io/File;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->loadPendingMissions(Landroid/content/Context;)V

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "failed to create pending_downloads in data directory"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    return-object p0
.end method

.method private canDownloadInCurrentNetwork()Z
    .locals 3

    .line 458
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mLastNetworkStatus:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->Unavailable:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 459
    :cond_0
    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private getAnyMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;
    .locals 1

    .line 343
    monitor-enter p0

    .line 344
    :try_start_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getPendingMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    monitor-exit p0

    return-object v0

    .line 347
    :cond_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getFinishedMissionIndex(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 348
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    monitor-exit p0

    return-object p1

    .line 349
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getFinishedMissionIndex(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)I
    .locals 2

    const/4 v0, 0x0

    .line 333
    :goto_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 334
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->equals(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getMainStorage(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;
    .locals 3

    const-string v0, "audio"

    .line 554
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    return-object p1

    :cond_0
    const-string v0, "video"

    .line 555
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    return-object p1

    .line 557
    :cond_1
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown download category, not [audio video]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getPendingDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const-string v0, "pending_downloads"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    .line 93
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    const-string v1, "path to pending downloads are not accessible"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method private getPendingMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 319
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->equals(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static isDirectoryAvailable(Ljava/io/File;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 539
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$loadPendingMissions$0(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)I
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->timestamp:J

    iget-wide p0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->timestamp:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method private loadFinishedMissions()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;",
            ">;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;->loadFinishedMissions()Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    .line 109
    iget-object v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->existsAsFile()Z

    move-result v3

    if-nez v3, :cond_0

    .line 112
    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v3, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private loadPendingMissions(Landroid/content/Context;)V
    .locals 11

    .line 121
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    const-string v0, "listFiles() returned null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return-void

    .line 134
    :cond_1
    array-length v1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_b

    aget-object v5, v0, v4

    .line 135
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_4

    .line 137
    :cond_2
    invoke-static {v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->readFromFile(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    if-eqz v6, :cond_a

    .line 138
    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 146
    :cond_3
    :try_start_0
    iget-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-static {v7, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->deserialize(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;Landroid/content/Context;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    move-result-object v7

    iput-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 147
    iget-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->existsAsFile()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    .line 149
    sget-object v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load the file source of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    iget-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalidate()V

    :cond_4
    const/4 v7, 0x0

    .line 154
    :goto_1
    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsRunning()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 155
    iget-object v8, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    iget-boolean v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    if-eqz v8, :cond_6

    if-eqz v7, :cond_5

    .line 160
    iget-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->delete()Z

    move-result v7

    if-nez v7, :cond_5

    .line 161
    sget-object v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to delete incomplete download file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v7, 0x1

    .line 166
    :cond_6
    iput v3, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    const/16 v8, 0x3f0

    .line 167
    iput v8, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    goto :goto_2

    :cond_7
    if-nez v7, :cond_8

    .line 169
    invoke-virtual {p0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->tryRecover(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    .line 172
    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isInitialized()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x3f3

    .line 173
    invoke-virtual {v6, v2, v2, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->resetState(ZZI)V

    .line 176
    :cond_8
    :goto_2
    iget-object v8, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    if-eqz v8, :cond_9

    .line 177
    invoke-virtual {v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->cleanupTemporalDir()V

    .line 178
    iget-object v8, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->setTemporalDir(Ljava/io/File;)V

    .line 181
    :cond_9
    iput-boolean v7, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->recovered:Z

    .line 182
    iput-object v5, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 183
    iget v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v5, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->maxRetry:I

    .line 184
    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    iput-object v5, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    .line 186
    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 140
    :cond_a
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 189
    :cond_b
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v2, :cond_c

    .line 190
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;->INSTANCE:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/-$$Lambda$DownloadManager$v_YVu8-zrTed-YtdSxQ4_fIPkj8;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_c
    return-void
.end method

.method static pickAvailableTemporalDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0

    .line 545
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->isDirectoryAvailable(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    const-string v1, "tmp"

    .line 549
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public checkForExistingMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;
    .locals 1

    .line 521
    monitor-enter p0

    .line 522
    :try_start_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getPendingMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    move-result-object v0

    if-nez v0, :cond_1

    .line 525
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getFinishedMissionIndex(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)I

    move-result p1

    if-ltz p1, :cond_0

    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;->Finished:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    monitor-exit p0

    return-object p1

    .line 533
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;->None:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    return-object p1

    .line 527
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 528
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;->Finished:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    monitor-exit p0

    return-object p1

    .line 530
    :cond_2
    iget-boolean p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;->PendingRunning:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;->Pending:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/MissionState;

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 533
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V
    .locals 2

    .line 259
    monitor-enter p0

    .line 260
    :try_start_0
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_0
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 267
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 268
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->delete()Z

    .line 269
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public forgetFinishedDownloads()V
    .locals 3

    .line 449
    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    .line 451
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    goto :goto_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 454
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)V
    .locals 2

    .line 273
    monitor-enter p0

    .line 274
    :try_start_0
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getAnyMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;

    move-result-object p1

    if-nez p1, :cond_0

    .line 275
    monitor-exit p0

    return-void

    .line 277
    :cond_0
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_1
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 281
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;->deleteMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;)V

    .line 284
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x0

    .line 285
    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 286
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->delete()Z

    .line 287
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getIterator()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;
    .locals 2

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mSelfMissionsControl:Z

    .line 442
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$MissionIterator;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$1;)V

    return-object v0
.end method

.method getRunningMissionsCount()I
    .locals 4

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 358
    iget-boolean v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsFailed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleConnectivityState(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;Z)V
    .locals 5

    .line 463
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mLastNetworkStatus:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    if-ne p1, v0, :cond_0

    return-void

    .line 465
    :cond_0
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mLastNetworkStatus:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    .line 466
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->Unavailable:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    if-ne p1, v0, :cond_1

    return-void

    .line 468
    :cond_1
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mSelfMissionsControl:Z

    if-eqz p1, :cond_a

    if-eqz p2, :cond_2

    goto :goto_2

    .line 472
    :cond_2
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMeteredDownloads:Z

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mLastNetworkStatus:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;->MeteredOperating:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager$NetworkState;

    if-ne p1, v1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 476
    :goto_0
    monitor-enter p0

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 478
    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isCorrupt()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 480
    :cond_5
    iget-boolean v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v4, :cond_6

    if-eqz p1, :cond_6

    add-int/lit8 p2, p2, 0x1

    .line 482
    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->pause()V

    goto :goto_1

    .line 483
    :cond_6
    iget-boolean v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v4, :cond_4

    if-nez p1, :cond_4

    iget-boolean v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    if-eqz v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    .line 485
    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->start()V

    .line 486
    iget-boolean v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v3, :cond_4

    .line 489
    :cond_7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_8

    .line 492
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_8
    if-lez p2, :cond_9

    .line 495
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    .line 489
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_a
    :goto_2
    return-void
.end method

.method public pauseAllMissions(Z)V
    .locals 5

    .line 369
    monitor-enter p0

    .line 370
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 371
    iget-boolean v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsRunning()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 373
    iput-object v2, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 375
    :cond_2
    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->pause()V

    const/4 v2, 0x1

    goto :goto_0

    .line 378
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 380
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 378
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public pauseMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 1

    .line 251
    iget-boolean v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setEnqueued(Z)V

    .line 253
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->pause()V

    .line 254
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public resumeMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 2

    .line 244
    iget-boolean v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->start()V

    :cond_0
    return-void
.end method

.method runMissions()Z
    .locals 5

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    monitor-exit p0

    return v1

    .line 419
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->canDownloadInCurrentNetwork()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    .line 421
    :cond_1
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 423
    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_2

    monitor-exit p0

    return v2

    .line 427
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 428
    iget-boolean v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v4, :cond_4

    iget-boolean v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 431
    :cond_5
    invoke-virtual {p0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->resumeMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    .line 432
    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v1, :cond_6

    monitor-exit p0

    return v2

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    .line 436
    :cond_7
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    .line 437
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setFinished(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 3

    .line 404
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsFinished:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;

    invoke-direct {v2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/FinishedMission;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mFinishedMissionStore:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;

    invoke-virtual {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/sqlite/FinishedMissionStore;->addFinishedMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    .line 408
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startAllMissions()V
    .locals 4

    .line 386
    monitor-enter p0

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 388
    iget-boolean v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isCorrupt()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 391
    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->start()V

    goto :goto_0

    .line 393
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 395
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 393
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method startMission(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 4

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->timestamp:J

    .line 201
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    .line 202
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->maxRetry:I

    .line 206
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPendingMissionsDir:Ljava/io/File;

    iget-wide v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    .line 207
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    .line 209
    :try_start_1
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 219
    :try_start_2
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mSelfMissionsControl:Z

    .line 220
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    .line 225
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    if-nez v1, :cond_1

    const/16 v0, 0x3e9

    .line 227
    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    .line 228
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DownloadMission.storage == NULL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 233
    :cond_1
    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefQueueLimit:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getRunningMissionsCount()I

    move-result v1

    if-ge v1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 235
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->canDownloadInCurrentNetwork()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->start()V

    .line 239
    :cond_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 210
    :cond_5
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Cant create download metadata file"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    .line 212
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 216
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->timestamp:J

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 239
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public tryRecover(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 3

    .line 291
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->getMainStorage(Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object v0

    .line 293
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->create()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 299
    :cond_0
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->invalidate()V

    if-nez v0, :cond_1

    return-void

    .line 304
    :cond_1
    iget-object v1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 306
    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    :cond_2
    return-void
.end method

.method updateMaximumAttempts()V
    .locals 3

    .line 499
    monitor-enter p0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mMissionsPending:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;->mPrefMaxRetry:I

    iput v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->maxRetry:I

    goto :goto_0

    .line 501
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
