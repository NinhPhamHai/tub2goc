.class public abstract Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;
.super Ljava/lang/Object;
.source "Postprocessing.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private args:[Ljava/lang/String;

.field protected transient mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

.field private final name:Ljava/lang/String;

.field public final reserveSpace:Z

.field private tempFile:Ljava/io/File;

.field public final worksOnSameFile:Z


# direct methods
.method constructor <init>(ZZLjava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->reserveSpace:Z

    .line 81
    iput-boolean p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    .line 82
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    return-void
.end method

.method public static getAlgorithm(Ljava/lang/String;[Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;
    .locals 4

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "webm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "ttml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "mp4D-mp4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "mp4D-m4a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_1

    .line 44
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/M4aNoDash;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/M4aNoDash;-><init>()V

    goto :goto_2

    .line 49
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unimplemented post-processing algorithm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_2
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Mp4FromDashMuxer;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Mp4FromDashMuxer;-><init>()V

    goto :goto_2

    .line 38
    :cond_3
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/WebMMuxer;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/WebMMuxer;-><init>()V

    goto :goto_2

    .line 35
    :cond_4
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/TtmlConverter;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/TtmlConverter;-><init>()V

    .line 52
    :goto_2
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x43d5a580 -> :sswitch_3
        -0x43d59e69 -> :sswitch_2
        0x367c1f -> :sswitch_1
        0x379f99 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic lambda$DzILQNutkuKF_sywrsRLrabjtbM(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->progressReport(J)V

    return-void
.end method

.method static synthetic lambda$run$0([Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;)J
    .locals 8

    .line 121
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 126
    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->available()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->getFilePointer()J

    move-result-wide v0

    sub-long/2addr v0, v5

    return-wide v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private progressReport(J)V
    .locals 4

    .line 227
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-wide p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    .line 228
    iget-wide p1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    iget-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    iput-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    .line 230
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x3

    .line 231
    iput p2, p1, Landroid/os/Message;->what:I

    .line 232
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 234
    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public cleanupTemporalDir()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method getArgumentAt(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    aget-object p1, v0, p1

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method public synthetic lambda$run$1$Postprocessing(Ljava/lang/Exception;)Z
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/4 v1, 0x3

    iput v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    const/16 v2, 0x3f1

    .line 141
    invoke-virtual {v0, v2, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    .line 144
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psState:I

    if-ne p1, v1, :cond_0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 147
    :cond_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 150
    :catch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "got InterruptedException"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method varargs abstract process(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public run(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 105
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    .line 106
    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    .line 108
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_b

    .line 109
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length p1, p1

    new-array p1, p1, [Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;

    const/4 v5, 0x0

    .line 112
    :goto_0
    :try_start_0
    array-length v6, p1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 113
    new-instance v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;

    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    move-result-object v8

    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    aget-wide v9, v7, v5

    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    add-int/lit8 v13, v5, 0x1

    aget-wide v11, v7, v13

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;JJ)V

    aput-object v6, p1, v5

    move v5, v13

    goto :goto_0

    .line 115
    :cond_0
    new-instance v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;

    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    move-result-object v7

    iget-object v8, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v8, v8, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    aget-wide v9, v8, v5

    invoke-direct {v6, v7, v9, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;J)V

    aput-object v6, p1, v5

    .line 117
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->test([Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    array-length v5, p1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->rewind()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    :cond_1
    new-instance v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;

    invoke-direct {v5, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$Bp2UM_5ucZG6Cuw6FnZfSjnU2n4;-><init>([Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;)V

    .line 136
    new-instance v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;

    iget-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v7, v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    move-result-object v7

    iget-object v8, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    invoke-direct {v6, v7, v8, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Ljava/io/File;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    new-instance v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$DzILQNutkuKF_sywrsRLrabjtbM;

    invoke-direct {v5, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$DzILQNutkuKF_sywrsRLrabjtbM;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;)V

    iput-object v5, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->onProgress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;

    .line 139
    new-instance v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$QSBSqwmM2pAYtFbbCoYusaWNsXE;

    invoke-direct {v5, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/-$$Lambda$Postprocessing$QSBSqwmM2pAYtFbbCoYusaWNsXE;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;)V

    iput-object v5, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->onWriteError:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$WriteErrorHandle;

    .line 156
    invoke-virtual {p0, v6, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->process(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 159
    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->finalizeFile()J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_2
    move-wide v7, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    move-wide v7, v0

    move-object v6, v3

    const/4 v5, -0x1

    .line 164
    :goto_2
    array-length v9, p1

    :goto_3
    if-ge v4, v9, :cond_5

    aget-object v10, p1, v4

    if-eqz v10, :cond_4

    .line 165
    invoke-virtual {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->isClosed()Z

    move-result v11

    if-nez v11, :cond_4

    .line 166
    invoke-virtual {v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->close()V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    .line 170
    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->close()V

    .line 172
    :cond_6
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz p1, :cond_d

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 175
    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v6, v3

    .line 164
    :goto_4
    array-length v1, p1

    :goto_5
    if-ge v4, v1, :cond_8

    aget-object v2, p1, v4

    if-eqz v2, :cond_7

    .line 165
    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    .line 166
    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/ChunkFileInputStream;->close()V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_9

    .line 170
    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->close()V

    .line 172
    :cond_9
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    if-eqz p1, :cond_a

    .line 174
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 175
    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    .line 177
    :cond_a
    throw v0

    .line 179
    :cond_b
    new-array p1, v4, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->test([Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)Z

    move-result p1

    if-eqz p1, :cond_c

    new-array p1, v4, [Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {p0, v3, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->process(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)I

    move-result p1

    move v5, p1

    goto :goto_6

    :cond_c
    const/4 v5, -0x1

    :goto_6
    move-wide v7, v0

    :cond_d
    :goto_7
    if-ne v5, v2, :cond_e

    cmp-long p1, v7, v0

    if-eqz p1, :cond_f

    .line 184
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-wide v7, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->done:J

    .line 185
    iput-wide v7, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    goto :goto_8

    .line 188
    :cond_e
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/16 v0, 0x3ea

    iput v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "post-processing algorithm returned "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errObject:Ljava/lang/Exception;

    :cond_f
    :goto_8
    if-eq v5, v2, :cond_10

    .line 192
    iget-boolean p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->worksOnSameFile:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->delete()Z

    .line 194
    :cond_10
    iput-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->mission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    return-void
.end method

.method public setTemporalDir(Ljava/io/File;)V
    .locals 4

    .line 86
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    int-to-long v0, v0

    .line 87
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".tmp"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->tempFile:Ljava/io/File;

    return-void
.end method

.method varargs test([Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name="

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 244
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->args:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 245
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    const-string v6, ", "

    .line 246
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 249
    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v1, 0x5d

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
