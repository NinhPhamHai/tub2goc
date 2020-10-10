.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;
.super Ljava/lang/Thread;
.source "DownloadInitializer.java"


# instance fields
.field private mConn:Ljava/net/HttpURLConnection;

.field private mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 1

    .line 181
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    .line 183
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public run()V
    .locals 21

    move-object/from16 v1, p0

    .line 33
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v2, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v0, v4, v3, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->resetState(ZZI)V

    :cond_0
    const/4 v2, 0x0

    .line 38
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadCount:I

    iput v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    .line 40
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    const-wide/16 v7, 0x1

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-gez v0, :cond_8

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    if-nez v0, :cond_8

    const-wide v5, 0x7fffffffffffffffL

    move-wide v11, v5

    move-wide v5, v9

    const/4 v0, 0x0

    .line 45
    :goto_1
    iget-object v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v13, v13, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    array-length v13, v13

    if-ge v0, v13, :cond_5

    iget-object v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v13, v13, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v13, :cond_5

    .line 46
    iget-object v14, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v13, v13, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->urls:[Ljava/lang/String;

    aget-object v15, v13, v0

    const/16 v16, 0x0

    const-wide/16 v17, -0x1

    const-wide/16 v19, -0x1

    invoke-virtual/range {v14 .. v20}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->openConnection(Ljava/lang/String;IJJ)Ljava/net/HttpURLConnection;

    move-result-object v13

    iput-object v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 47
    iget-object v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v14, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v13, v4, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 49
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v13

    if-eqz v13, :cond_1

    return-void

    .line 50
    :cond_1
    iget-object v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v13}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v13

    if-nez v0, :cond_2

    .line 52
    iget-object v15, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-wide v13, v15, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    :cond_2
    cmp-long v15, v13, v9

    if-lez v15, :cond_3

    add-long/2addr v5, v13

    :cond_3
    cmp-long v15, v13, v11

    if-gez v15, :cond_4

    move-wide v11, v13

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_5
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-wide v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->nearLength:J

    .line 60
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->psAlgorithm:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->reserveSpace:Z

    if-eqz v0, :cond_a

    cmp-long v0, v11, v7

    if-gez v0, :cond_6

    .line 63
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    const-wide/32 v5, 0x500000

    aput-wide v5, v0, v4

    goto :goto_2

    .line 66
    :cond_6
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    const-wide/32 v5, 0x9600000

    cmp-long v13, v11, v5

    if-gez v13, :cond_7

    move-wide v5, v11

    :cond_7
    aput-wide v5, v0, v4

    goto :goto_2

    .line 71
    :cond_8
    iget-object v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/4 v12, 0x0

    const-wide/16 v13, -0x1

    const-wide/16 v15, -0x1

    invoke-virtual/range {v11 .. v16}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->openConnection(IJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 72
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 74
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_9

    .line 76
    :cond_9
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-static {v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/util/Utility;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v5

    iput-wide v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    .line 79
    :cond_a
    :goto_2
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    const/16 v0, 0xcc

    cmp-long v11, v5, v9

    if-eqz v11, :cond_18

    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    if-ne v5, v0, :cond_b

    goto/16 :goto_8

    .line 85
    :cond_b
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    const-wide/16 v11, -0x1

    cmp-long v0, v5, v11

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_c

    .line 86
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    .line 87
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    .line 88
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->fallback:Z

    .line 89
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    .line 90
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    goto/16 :goto_5

    .line 97
    :cond_c
    iget-object v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    const-wide/16 v13, 0xa

    sub-long v13, v5, v13

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    move-wide v15, v5

    invoke-virtual/range {v11 .. v16}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->openConnection(IJJ)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    .line 98
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->establishConnection(ILjava/net/HttpURLConnection;)V

    .line 100
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_17

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_7

    .line 102
    :cond_d
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blockState:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v6, 0xce

    if-ne v0, v6, :cond_11

    .line 104
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    if-le v0, v3, :cond_10

    .line 105
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v11, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    const-wide/32 v13, 0x80000

    div-long/2addr v11, v13

    iput-wide v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    .line 107
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    int-to-long v11, v0

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    cmp-long v0, v11, v9

    if-lez v0, :cond_e

    .line 108
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v9, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    long-to-int v6, v9

    iput v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    .line 110
    :cond_e
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    if-gtz v0, :cond_f

    .line 111
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    .line 113
    :cond_f
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    mul-long v9, v9, v13

    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    cmp-long v0, v9, v11

    if-gez v0, :cond_12

    .line 114
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    add-long/2addr v9, v7

    iput-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    goto :goto_3

    .line 118
    :cond_10
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-wide v7, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    .line 119
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->fallback:Z

    .line 120
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-boolean v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    goto :goto_3

    .line 128
    :cond_11
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->blocks:J

    .line 129
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-boolean v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->fallback:Z

    .line 130
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-boolean v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->unknownLength:Z

    .line 131
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    :cond_12
    :goto_3
    const-wide/16 v9, 0x0

    .line 138
    :goto_4
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->currentThreadCount:I

    int-to-long v11, v0

    cmp-long v0, v9, v11

    if-gez v0, :cond_13

    .line 139
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBlockPositions:Ljava/util/List;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->threadBytePositions:Ljava/util/List;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr v9, v7

    goto :goto_4

    .line 142
    :cond_13
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :try_start_2
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_6

    .line 147
    :cond_14
    :goto_5
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->storage:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredFileHelper;->getStream()Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    move-result-object v0

    .line 148
    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    aget-wide v6, v5, v6

    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-wide v8, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/Mission;->length:J

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->setLength(J)V

    .line 149
    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-object v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->offsets:[J

    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->current:I

    aget-wide v6, v5, v6

    invoke-virtual {v0, v6, v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    .line 150
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    .line 152
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_6

    .line 154
    :cond_15
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iput-boolean v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    iget-object v0, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->start()V

    :cond_16
    :goto_6
    return-void

    :catchall_0
    move-exception v0

    .line 142
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_17
    :goto_7
    return-void

    .line 80
    :cond_18
    :goto_8
    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_19
    :goto_9
    return-void

    :catch_0
    move-exception v0

    .line 159
    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget-boolean v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->running:Z

    if-nez v5, :cond_1a

    return-void

    .line 161
    :cond_1a
    instance-of v5, v0, Ljava/io/IOException;

    if-eqz v5, :cond_1b

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Permission denied"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 162
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(ILjava/lang/Exception;)V

    return-void

    :cond_1b
    add-int/lit8 v5, v2, 0x1

    .line 166
    iget-object v6, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    iget v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->maxRetry:I

    if-le v2, v6, :cond_1c

    const-string v2, "DownloadInitializer"

    const-string v3, "initializer failed"

    .line 167
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadInitializer;->mMission:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;

    invoke-virtual {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/get/DownloadMission;->notifyError(Ljava/lang/Exception;)V

    return-void

    :cond_1c
    const-string v2, "DownloadInitializer"

    const-string v6, "initializer failed, retrying"

    .line 172
    invoke-static {v2, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v5

    goto/16 :goto_0

    :catch_1
    return-void
.end method
