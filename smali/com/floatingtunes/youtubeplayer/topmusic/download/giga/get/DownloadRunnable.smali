.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;
.super Ljava/lang/Thread;
.source "DownloadRunnable.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private final mId:I

.field private final mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    if-eqz p1, :cond_0

    .line 29
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    .line 30
    iput p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "mission is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 191
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public run()V
    .locals 25

    move-object/from16 v1, p0

    .line 35
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->recovered:Z

    .line 36
    iget v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    invoke-virtual {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->getBlockPosition(I)J

    move-result-wide v3

    .line 48
    :try_start_0
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 v0, 0x0

    move-object v8, v0

    const/4 v7, 0x0

    .line 54
    :goto_0
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    const/4 v10, -0x1

    if-eqz v9, :cond_a

    iget v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-ne v9, v10, :cond_a

    iget-wide v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    cmp-long v0, v3, v11

    if-gez v0, :cond_a

    :goto_1
    const-wide/16 v11, 0x1

    if-nez v2, :cond_0

    .line 61
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    cmp-long v9, v3, v13

    if-gez v9, :cond_0

    invoke-virtual {v0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->isBlockPreserved(J)Z

    move-result v0

    if-eqz v0, :cond_0

    add-long/2addr v3, v11

    goto :goto_1

    .line 72
    :cond_0
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    cmp-long v2, v3, v13

    if-ltz v2, :cond_1

    goto/16 :goto_7

    .line 80
    :cond_1
    invoke-virtual {v0, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->preserveBlock(J)V

    .line 81
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setBlockPosition(IJ)V

    const-wide/32 v13, 0x80000

    mul-long v15, v3, v13

    add-long/2addr v13, v15

    sub-long/2addr v13, v11

    .line 85
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    invoke-virtual {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->getThreadBytePosition(I)J

    move-result-wide v17

    add-long v15, v15, v17

    .line 89
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    move v9, v7

    iget-wide v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    cmp-long v0, v13, v6

    if-ltz v0, :cond_2

    sub-long v13, v6, v11

    :cond_2
    const-wide/16 v6, 0x0

    .line 96
    :try_start_1
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    move-object/from16 v19, v0

    move/from16 v20, v11

    move-wide/from16 v21, v15

    move-wide/from16 v23, v13

    invoke-virtual/range {v19 .. v24}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->openConnection(IJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    .line 97
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    iget-object v12, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 100
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v11, 0x1a0

    if-ne v0, v11, :cond_4

    cmp-long v0, v17, v6

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, -0x1

    .line 102
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;

    invoke-direct {v0, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;-><init>(I)V

    throw v0

    .line 106
    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v11, 0xce

    if-eq v0, v11, :cond_5

    .line 107
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    new-instance v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;

    iget-object v12, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v12

    invoke-direct {v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission$HttpError;-><init>(I)V

    invoke-virtual {v0, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    goto/16 :goto_7

    .line 116
    :cond_5
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    iget-object v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v11, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    aget-wide v11, v0, v11

    add-long/2addr v11, v15

    invoke-virtual {v5, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    .line 118
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/high16 v0, 0x10000

    .line 120
    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v11, v6

    :goto_3
    cmp-long v17, v15, v13

    if-gez v17, :cond_6

    .line 123
    :try_start_2
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_6

    array-length v2, v0

    const/4 v6, 0x0

    invoke-virtual {v8, v0, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v10, :cond_6

    .line 124
    invoke-virtual {v5, v0, v6, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    int-to-long v6, v2

    add-long/2addr v15, v6

    add-long/2addr v11, v6

    .line 127
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v2, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyProgress(J)V

    const-wide/16 v6, 0x0

    goto :goto_3

    .line 134
    :cond_6
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_7

    .line 135
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setThreadBytePosition(IJ)V

    goto :goto_6

    .line 137
    :cond_7
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    invoke-virtual {v0, v2, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setThreadBytePosition(IJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-wide v6, v11

    goto :goto_4

    :catch_1
    move-exception v0

    .line 145
    :goto_4
    :try_start_3
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mId:I

    invoke-virtual {v2, v11, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->setThreadBytePosition(IJ)V

    .line 147
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_a

    instance-of v2, v0, Ljava/nio/channels/ClosedByInterruptException;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v2, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v9, 0x1

    .line 149
    :try_start_4
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->maxRetry:I

    if-lt v9, v6, :cond_9

    .line 150
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v6, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :cond_9
    const/4 v0, 0x1

    move v7, v2

    const/4 v2, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move v9, v2

    goto :goto_5

    :catch_3
    move-exception v0

    .line 156
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    move v7, v9

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    :goto_7
    if-eqz v8, :cond_b

    .line 162
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 168
    :catch_4
    :cond_b
    :try_start_6
    invoke-virtual {v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 177
    :catch_5
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->errCode:I

    if-ne v2, v10, :cond_c

    iget-boolean v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v2, :cond_c

    .line 181
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyFinished()V

    :cond_c
    return-void

    :catch_6
    move-exception v0

    .line 50
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadRunnable;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void
.end method
