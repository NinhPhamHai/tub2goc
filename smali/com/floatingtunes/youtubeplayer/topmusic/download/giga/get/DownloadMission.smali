.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;
.super Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;
.source "DownloadMission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field final blockState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field blocks:J

.field public current:I

.field currentThreadCount:I

.field private transient deleted:Z

.field public done:J

.field public enqueued:Z

.field public errCode:I

.field public errObject:Ljava/lang/Exception;

.field fallback:Z

.field private finishCount:I

.field private transient init:Ljava/lang/Thread;

.field public transient mHandler:Landroid/os/Handler;

.field private transient mWritingToFile:Z

.field public transient maxRetry:I

.field public transient metadata:Ljava/io/File;

.field public nearLength:J

.field public offsets:[J

.field public psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

.field public volatile psState:I

.field public transient recovered:Z

.field public transient running:Z

.field final threadBlockPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final threadBytePositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public threadCount:I

.field public volatile transient threads:[Ljava/lang/Thread;

.field public unknownLength:Z

.field public urls:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 139
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;-><init>()V

    const-wide/16 v0, -0x1

    .line 65
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    const/4 v0, 0x3

    .line 116
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadCount:I

    const/4 v0, -0x1

    .line 122
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/4 v0, 0x0

    .line 124
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 129
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBlockPositions:Ljava/util/List;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBytePositions:Ljava/util/List;

    const/4 v1, 0x0

    .line 136
    new-array v1, v1, [Ljava/lang/Thread;

    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 137
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;CLcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;)V
    .locals 3

    .line 143
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;-><init>()V

    const-wide/16 v0, -0x1

    .line 65
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    const/4 v0, 0x3

    .line 116
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadCount:I

    const/4 v1, -0x1

    .line 122
    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/4 v1, 0x0

    .line 124
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBlockPositions:Ljava/util/List;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBytePositions:Ljava/util/List;

    const/4 v2, 0x0

    .line 136
    new-array v2, v2, [Ljava/lang/Thread;

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 137
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    .line 145
    array-length v1, p1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 146
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    .line 147
    iput-char p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->kind:C

    .line 148
    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    .line 149
    iput-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    .line 150
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->maxRetry:I

    .line 151
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    .line 152
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    return-void

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "urls is empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "urls is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkBlock(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 160
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal block identifier"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private deleteThisFromFile()Z
    .locals 2

    .line 732
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 734
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private doPostprocessing()Z
    .locals 9

    .line 692
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_4

    :cond_0
    const/4 v0, 0x0

    .line 694
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 696
    invoke-direct {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyPostProcessing(I)V

    const-wide/16 v3, 0x0

    .line 697
    invoke-virtual {p0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyProgress(J)V

    .line 705
    new-array v3, v1, [Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    const/16 v3, 0x3ef

    const/4 v4, -0x1

    .line 710
    :try_start_0
    iget-object v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    invoke-virtual {v6, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->run(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    iget v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-ne v6, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyPostProcessing(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "DownloadMission"

    .line 712
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Post-processing failed. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    invoke-virtual {v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 714
    iget v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-ne v6, v4, :cond_2

    iput v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :cond_2
    iget v6, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-ne v6, v4, :cond_1

    goto :goto_0

    .line 721
    :goto_1
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-eq v2, v4, :cond_4

    if-nez v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    .line 723
    :cond_3
    invoke-virtual {p0, v3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return v5

    :cond_4
    return v1

    .line 718
    :goto_2
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-ne v1, v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    invoke-direct {p0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyPostProcessing(I)V

    .line 719
    throw v0

    :cond_6
    :goto_4
    return v1
.end method

.method private initializer()V
    .locals 2

    .line 576
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    return-void
.end method

.method private joinForThread(Ljava/lang/Thread;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 771
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 772
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v0, 0x2710

    .line 785
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 787
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timeout on join : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadMission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A thread is still running:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic lambda$cbZxQknEo0MqImWQ8TDU2ICviiE(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 0

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->writeThisToFile()V

    return-void
.end method

.method private notify(I)V
    .locals 1

    .line 292
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 293
    iput p1, v0, Landroid/os/Message;->what:I

    .line 294
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 296
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private notifyPostProcessing(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string v0, "Failed"

    goto :goto_0

    :cond_0
    const-string v0, "Completed"

    goto :goto_0

    :cond_1
    const-string v0, "Running"

    .line 424
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " postprocessing on "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadMission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    monitor-enter v0

    .line 428
    :try_start_0
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    .line 429
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-static {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    .line 430
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 765
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    return-object p2
.end method

.method private runAsync(ILjava/lang/Runnable;)V
    .locals 1

    .line 744
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method

.method private writeThisToFile()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    monitor-enter v0

    .line 586
    :try_start_0
    iget-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->deleted:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-static {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    .line 588
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->mWritingToFile:Z

    return-void

    :catchall_0
    move-exception v1

    .line 588
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public delete()Z
    .locals 2

    const/4 v0, 0x1

    .line 540
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->deleted:Z

    .line 541
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->cleanupTemporalDir()V

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->deleteThisFromFile()Z

    move-result v0

    .line 545
    invoke-super {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method establishConnection(ILjava/net/HttpURLConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;
        }
    .end annotation

    .line 268
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 269
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xcd

    if-eq p1, v0, :cond_2

    const/16 v0, 0xcf

    if-eq p1, v0, :cond_2

    const/16 p2, 0x1a0

    if-eq p1, p2, :cond_1

    const/16 p2, 0xc8

    if-lt p1, p2, :cond_0

    const/16 p2, 0x12b

    if-gt p1, p2, :cond_0

    return-void

    .line 284
    :cond_0
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;

    invoke-direct {p2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw p2

    :cond_1
    return-void

    .line 279
    :cond_2
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw p1
.end method

.method getBlockPosition(I)J
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBlockPositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLength()J
    .locals 5

    .line 641
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    array-length v3, v0

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v2, v0

    sub-int/2addr v2, v1

    :goto_0
    aget-wide v1, v0, v2

    iget-wide v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    add-long/2addr v1, v3

    goto :goto_2

    .line 642
    :cond_2
    :goto_1
    iget-wide v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    .line 647
    :goto_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    .line 649
    iget-wide v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->nearLength:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    goto :goto_3

    :cond_3
    move-wide v1, v3

    :goto_3
    return-wide v1
.end method

.method getThreadBytePosition(I)J
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBytePositions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasInvalidStorage()Z
    .locals 2

    .line 679
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3f3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->isInvalid()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->existsAsFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method isBlockPreserved(J)Z
    .locals 2

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->checkBlock(J)V

    .line 174
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isCorrupt()Z
    .locals 2

    .line 688
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsFailed()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3f1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->hasInvalidStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFinished()Z
    .locals 2

    .line 598
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInitialized()Z
    .locals 5

    .line 631
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPsFailed()Z
    .locals 2

    .line 607
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    return v0
.end method

.method public isPsRunning()Z
    .locals 3

    .line 622
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public synthetic lambda$pause$1$DownloadMission()V
    .locals 6

    .line 521
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 522
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 523
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    const-wide/16 v4, 0x1388

    .line 524
    invoke-virtual {v3, v4, v5}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 530
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->writeThisToFile()V

    .line 531
    throw v0

    .line 530
    :catch_0
    :cond_1
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->writeThisToFile()V

    return-void
.end method

.method public synthetic lambda$start$0$DownloadMission()V
    .locals 1

    .line 449
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->doPostprocessing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 450
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    .line 451
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->deleteThisFromFile()Z

    const/4 v0, 0x2

    .line 453
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notify(I)V

    :cond_0
    return-void
.end method

.method public declared-synchronized notifyError(ILjava/lang/Exception;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadMission"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyError() code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    instance-of v0, p2, Ljava/io/IOException;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Permission denied"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ENOSPC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p1, 0x3f2

    goto :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x3eb

    goto :goto_1

    :cond_2
    move-object v1, p2

    .line 357
    :goto_1
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    .line 358
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/16 p2, 0x3f4

    if-eq p1, p2, :cond_4

    packed-switch p1, :pswitch_data_0

    const/16 p2, 0x1f4

    if-lt p1, p2, :cond_3

    const/16 p2, 0x257

    if-le p1, p2, :cond_4

    :cond_3
    const/4 p1, 0x0

    .line 370
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    .line 373
    :cond_4
    :pswitch_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->pause()V

    const/4 p1, 0x4

    .line 375
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notify(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized notifyError(Ljava/lang/Exception;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadMission"

    const-string v1, "notifyError()"

    .line 325
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    instance-of v0, p1, Ljava/io/FileNotFoundException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 p1, 0x3e9

    .line 328
    invoke-virtual {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 329
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_1

    const/16 p1, 0x3ec

    .line 330
    invoke-virtual {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 331
    :cond_1
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;

    if-eqz v0, :cond_2

    .line 332
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;

    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;->statusCode:I

    invoke-virtual {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 333
    :cond_2
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_3

    const/16 p1, 0x3ee

    .line 334
    invoke-virtual {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 335
    :cond_3
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_4

    const/16 p1, 0x3ed

    .line 336
    invoke-virtual {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    .line 337
    :cond_4
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_5

    const/16 p1, 0x3f4

    .line 338
    invoke-virtual {p0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    goto :goto_0

    :cond_5
    const/16 v0, 0x3ea

    .line 340
    invoke-virtual {p0, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized notifyFinished()V
    .locals 6

    monitor-enter p0

    .line 379
    :try_start_0
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    monitor-exit p0

    return-void

    .line 381
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->finishCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->finishCount:I

    .line 383
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->finishCount:I

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    if-ne v0, v2, :cond_4

    .line 384
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v1, :cond_1

    monitor-exit p0

    return-void

    .line 390
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 392
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    aget-wide v1, v0, v1

    .line 393
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    iget-wide v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    add-long/2addr v1, v4

    aput-wide v1, v0, v3

    .line 394
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->initializer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 398
    :cond_2
    :try_start_3
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    .line 401
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->doPostprocessing()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    return-void

    .line 403
    :cond_3
    :try_start_4
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    .line 404
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    .line 405
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->deleteThisFromFile()Z

    const/4 v0, 0x2

    .line 407
    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notify(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 409
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized notifyProgress(J)V
    .locals 3

    monitor-enter p0

    .line 300
    :try_start_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 302
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->recovered:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->recovered:Z

    .line 306
    :cond_1
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v0, :cond_2

    .line 307
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    .line 310
    :cond_2
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    .line 312
    iget-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_3

    .line 313
    iget-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    .line 316
    :cond_3
    iget-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_4

    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->deleted:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->mWritingToFile:Z

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->mWritingToFile:Z

    const/4 p1, -0x2

    .line 318
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$cbZxQknEo0MqImWQ8TDU2ICviiE;

    invoke-direct {p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$cbZxQknEo0MqImWQ8TDU2ICviiE;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)V

    :cond_4
    const/4 p1, 0x3

    .line 321
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notify(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method openConnection(IJJ)Ljava/net/HttpURLConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    aget-object v3, v0, v1

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v2 .. v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->openConnection(Ljava/lang/String;IJJ)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method openConnection(Ljava/lang/String;IJJ)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    const/4 p2, 0x1

    .line 239
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string p2, "User-Agent"

    const-string v0, "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0"

    .line 240
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Accept"

    const-string v0, "*/*"

    .line 241
    invoke-virtual {p1, p2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x7530

    .line 244
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 p2, 0x2710

    .line 245
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-ltz p2, :cond_1

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    cmp-long p3, p5, v0

    if-lez p3, :cond_0

    .line 249
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string p3, "Range"

    .line 251
    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public declared-synchronized pause()V
    .locals 5

    monitor-enter p0

    .line 489
    :try_start_0
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 491
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isPsRunning()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    .line 495
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 498
    :try_start_2
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    const/4 v1, 0x1

    .line 499
    iput-boolean v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->recovered:Z

    .line 501
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 502
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 503
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 504
    :try_start_3
    invoke-virtual {p0, v0, v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->resetState(ZZI)V

    .line 505
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 505
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 519
    :cond_3
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$jvMTHlv3Zjv_n8lj-5URyqJe3V4;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$jvMTHlv3Zjv_n8lj-5URyqJe3V4;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    invoke-direct {p0, v3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 533
    monitor-exit p0

    return-void

    .line 514
    :cond_4
    :goto_0
    :try_start_6
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->writeThisToFile()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 515
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method preserveBlock(J)V
    .locals 2

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->checkBlock(J)V

    .line 179
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public psContinue(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 668
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3ef

    .line 669
    :goto_0
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    .line 670
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public resetState(ZZI)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 557
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    const-wide/16 v0, -0x1

    .line 558
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    .line 559
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/4 p3, 0x0

    .line 560
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    const/4 p3, 0x0

    .line 561
    iput-boolean p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->fallback:Z

    .line 562
    iput-boolean p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    .line 563
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->finishCount:I

    .line 564
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBlockPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 565
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBytePositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 566
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 567
    new-array v0, p3, [Ljava/lang/Thread;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    if-eqz p1, :cond_0

    .line 569
    iput p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    :cond_0
    if-eqz p2, :cond_1

    .line 572
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->metadata:Ljava/io/File;

    invoke-static {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->writeToFile(Ljava/io/File;Ljava/io/Serializable;)V

    :cond_1
    return-void
.end method

.method setBlockPosition(IJ)V
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBlockPositions:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEnqueued(Z)V
    .locals 1

    .line 658
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->enqueued:Z

    .line 659
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$cbZxQknEo0MqImWQ8TDU2ICviiE;

    invoke-direct {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$cbZxQknEo0MqImWQ8TDU2ICviiE;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    const/4 v0, -0x2

    invoke-direct {p0, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)V

    return-void
.end method

.method setThreadBytePosition(IJ)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBytePositions:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 7

    .line 437
    iget-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    invoke-direct {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->joinForThread(Ljava/lang/Thread;)V

    .line 441
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->joinForThread(Ljava/lang/Thread;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    const/4 v2, -0x1

    .line 445
    iput v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    .line 447
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    if-eqz v2, :cond_2

    .line 448
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$mSuIttZd3mjfT92DHZ65BPpb-KE;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/-$$Lambda$DownloadMission$mSuIttZd3mjfT92DHZ65BPpb-KE;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Runnable;)V

    return-void

    .line 460
    :cond_2
    iget-wide v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 461
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->initializer()V

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 465
    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->init:Ljava/lang/Thread;

    .line 467
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    array-length v2, v2

    if-ge v2, v0, :cond_5

    .line 468
    :cond_4
    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    new-array v2, v2, [Ljava/lang/Thread;

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    .line 471
    :cond_5
    iget-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->fallback:Z

    if-eqz v2, :cond_7

    .line 472
    iget-boolean v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    if-eqz v2, :cond_6

    .line 473
    iput-wide v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    .line 474
    iput-wide v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    .line 477
    :cond_6
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;

    invoke-direct {v3, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V

    invoke-direct {p0, v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    aput-object v3, v2, v1

    goto :goto_2

    .line 479
    :cond_7
    :goto_1
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    if-ge v1, v0, :cond_8

    .line 480
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threads:[Ljava/lang/Thread;

    add-int/lit8 v2, v1, 0x1

    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;

    invoke-direct {v3, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;I)V

    invoke-direct {p0, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->runAsync(ILjava/lang/Thread;)Ljava/lang/Thread;

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_1

    :cond_8
    :goto_2
    return-void
.end method
