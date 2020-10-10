.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;
.super Ljava/lang/Thread;
.source "DownloadRunnableFallback.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private mF:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

.field private mIs:Ljava/io/InputStream;

.field private final mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

.field private mRetryCount:I


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 31
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    return-void
.end method

.method private dispose()V
    .locals 1

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mF:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    :cond_1
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 123
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 125
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 127
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public run()V
    .locals 16

    move-object/from16 v1, p0

    .line 50
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {v0, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->getThreadBytePosition(I)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    move-wide v6, v3

    .line 58
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    const-wide/16 v8, -0x1

    if-nez v0, :cond_2

    const-wide/16 v10, 0x1

    cmp-long v0, v6, v10

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move-wide v12, v6

    goto :goto_2

    :cond_2
    :goto_1
    move-wide v12, v8

    .line 61
    :goto_2
    iget-object v10, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const-wide/16 v14, -0x1

    const/4 v11, 0x1

    invoke-virtual/range {v10 .. v15}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->openConnection(IJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    .line 62
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    const/4 v10, 0x1

    invoke-virtual {v0, v10, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 65
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_4

    cmp-long v0, v6, v3

    if-gtz v0, :cond_3

    goto :goto_3

    .line 67
    :cond_3
    :try_start_1
    iget v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mRetryCount:I

    sub-int/2addr v0, v10

    iput v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mRetryCount:I

    .line 68
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;

    invoke-direct {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-wide v6, v3

    goto/16 :goto_8

    .line 72
    :cond_4
    :goto_3
    :try_start_2
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    if-nez v0, :cond_6

    .line 73
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v2

    cmp-long v4, v2, v8

    if-nez v4, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    .line 75
    :cond_6
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    move-result-object v0

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mF:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    .line 76
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mF:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    iget-object v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    aget-wide v3, v2, v3

    add-long/2addr v3, v6

    invoke-virtual {v0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    .line 78
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    const/high16 v0, 0x10000

    .line 80
    new-array v0, v0, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide v3, v6

    const/4 v2, 0x0

    .line 83
    :goto_5
    :try_start_3
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    const/4 v7, -0x1

    if-eqz v6, :cond_7

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mIs:Ljava/io/InputStream;

    array-length v6, v0

    invoke-virtual {v2, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v7, :cond_7

    .line 84
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mF:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v6, v0, v5, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    int-to-long v6, v2

    add-long/2addr v3, v6

    .line 86
    iget-object v8, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v8, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyProgress(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    :cond_7
    if-ne v2, v7, :cond_8

    goto :goto_6

    :cond_8
    const/4 v10, 0x0

    .line 112
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->dispose()V

    if-eqz v10, :cond_9

    .line 115
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyFinished()V

    goto :goto_7

    .line 117
    :cond_9
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v0, v5, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setThreadBytePosition(IJ)V

    :goto_7
    return-void

    :catch_1
    move-exception v0

    .line 92
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->dispose()V

    .line 95
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v2, v5, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setThreadBytePosition(IJ)V

    .line 97
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v3, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v3, :cond_c

    instance-of v3, v0, Ljava/nio/channels/ClosedByInterruptException;

    if-eqz v3, :cond_a

    goto :goto_9

    .line 99
    :cond_a
    iget v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mRetryCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->mRetryCount:I

    iget v4, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->maxRetry:I

    if-lt v3, v4, :cond_b

    .line 100
    invoke-virtual {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void

    .line 108
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnableFallback;->run()V

    :cond_c
    :goto_9
    return-void
.end method
