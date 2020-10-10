.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;
.super Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;
.source "CircularFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$WriteErrorHandle;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;
    }
.end annotation


# instance fields
.field private aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

.field private callback:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;

.field private maxLengthKnown:J

.field public onProgress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;

.field public onWriteError:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$WriteErrorHandle;

.field private out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

.field private reportPosition:J


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Ljava/io/File;Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 24
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->maxLengthKnown:J

    if-eqz p3, :cond_2

    .line 34
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Cannot create a temporal file"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 40
    :cond_1
    :goto_0
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-direct {v0, p0, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;Ljava/io/File;)V

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    .line 41
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    .line 43
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->callback:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;

    const-wide/32 p1, 0x10000

    .line 45
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->reportPosition:J

    return-void

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "checker is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private flushAuxiliar(J)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 49
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    const-wide/16 v3, 0x1

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 54
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 56
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v1

    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-ltz v7, :cond_2

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v1

    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v7, v1, v3

    if-gez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const/high16 v2, 0x20000

    .line 57
    new-array v2, v2, [B

    .line 59
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    const-wide/16 v7, 0x0

    invoke-virtual {v3, v7, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    .line 60
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v4, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-wide v9, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-virtual {v4, v9, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    move-wide/from16 v3, p1

    :goto_2
    const-wide/32 v9, 0x7fffffff

    cmp-long v11, v3, v7

    if-lez v11, :cond_4

    .line 64
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    long-to-int v12, v11

    .line 65
    iget-object v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v11, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    array-length v13, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v11, v2, v6, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->read([BII)I

    move-result v11

    if-ge v11, v5, :cond_3

    sub-long v3, p1, v3

    goto :goto_3

    .line 72
    :cond_3
    iget-object v9, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v9, v2, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    int-to-long v9, v11

    sub-long/2addr v3, v9

    goto :goto_2

    :cond_4
    move-wide/from16 v3, p1

    :goto_3
    if-eqz v1, :cond_7

    .line 77
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v11

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v13, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v1, v11, v13

    if-ltz v1, :cond_6

    .line 79
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v11

    cmp-long v1, v11, v3

    if-gez v1, :cond_5

    .line 80
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v11

    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v1, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J

    .line 81
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1, v7, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J

    .line 82
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v5, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    goto :goto_4

    .line 84
    :cond_5
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v11

    sub-long/2addr v11, v3

    invoke-static {v1, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J

    .line 85
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v11, v3

    invoke-static {v1, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J

    goto :goto_4

    .line 88
    :cond_6
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1, v7, v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J

    goto :goto_4

    .line 91
    :cond_7
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v11

    add-long/2addr v11, v3

    invoke-static {v1, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J

    .line 92
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-static {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J

    move-result-wide v11

    sub-long/2addr v11, v3

    invoke-static {v1, v11, v12}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J

    .line 95
    :goto_4
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v11, v3

    iput-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 97
    iget-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-wide v13, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->maxLengthKnown:J

    cmp-long v1, v11, v13

    if-lez v1, :cond_8

    .line 98
    iput-wide v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->maxLengthKnown:J

    .line 101
    :cond_8
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v5, v3, v11

    if-gez v5, :cond_a

    sub-long/2addr v11, v3

    .line 106
    iput-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 107
    iget-wide v11, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    move-wide v13, v3

    move-wide v3, v7

    :goto_5
    cmp-long v1, v11, v7

    if-lez v1, :cond_9

    .line 109
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v1, v7

    .line 110
    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    array-length v7, v2

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v5, v2, v6, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->read([BII)I

    move-result v1

    .line 112
    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v5, v5, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v5, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    .line 113
    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v5, v2, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    int-to-long v7, v1

    add-long/2addr v3, v7

    add-long/2addr v13, v7

    sub-long/2addr v11, v7

    .line 119
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v1, v13, v14}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    const-wide/16 v7, 0x0

    goto :goto_5

    .line 122
    :cond_9
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    iget-wide v3, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-virtual {v2, v3, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->setLength(J)V

    return-void

    :cond_a
    const-wide/32 v2, 0xf00000

    cmp-long v4, v11, v2

    if-lez v4, :cond_b

    .line 127
    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->setLength(J)V

    .line 130
    :cond_b
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->reset()V

    return-void
.end method


# virtual methods
.method public available()J
    .locals 2

    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "write-only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public canRead()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canRewind()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canSeek()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canWrite()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->close()V

    .line 163
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->close()V

    .line 167
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    :cond_1
    return-void
.end method

.method public finalizeFile()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-direct {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    .line 143
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 146
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->maxLengthKnown:J

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->length()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 148
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v2, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->setLength(J)V

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->close()V

    return-wide v0
.end method

.method public flush()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 247
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 249
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v0, v2

    .line 250
    iget-wide v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->maxLengthKnown:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 251
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->maxLengthKnown:J

    :cond_0
    return-void
.end method

.method public read([B)I
    .locals 1

    .line 334
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "write-only"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public read([BII)I
    .locals 0

    .line 340
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "write-only"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public rewind()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->onProgress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    neg-long v1, v1

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    sub-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;->report(J)V

    :cond_0
    const-wide/16 v0, 0x0

    .line 267
    invoke-virtual {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->seek(J)V

    const-wide/32 v0, 0x10000

    .line 269
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->reportPosition:J

    return-void
.end method

.method public seek(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    iget-object v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v3, v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v1, v3

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 278
    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v4

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    return-void

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->flush()V

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_2

    if-gtz v3, :cond_2

    .line 291
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    .line 292
    invoke-virtual {v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 293
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    sub-long/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    goto :goto_0

    .line 295
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    .line 296
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {p1, v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->seek(J)V

    :goto_0
    return-void

    .line 288
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "desired offset is outside of range=0-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " offset="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v0

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v2

    add-long/2addr v0, v2

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->seek(J)V

    return-wide p1
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    if-nez v3, :cond_0

    return-void

    .line 188
    :cond_0
    iget-object v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v4

    .line 189
    iget-object v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v6}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v6

    .line 190
    iget-object v8, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->callback:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;

    invoke-interface {v8}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$OffsetChecker;->check()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-nez v12, :cond_1

    const-wide/32 v8, 0x7fffffff

    goto :goto_0

    :cond_1
    cmp-long v10, v8, v4

    if-ltz v10, :cond_b

    sub-long/2addr v8, v4

    .line 200
    :goto_0
    iget-object v10, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v10, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    cmp-long v16, v10, v12

    if-lez v16, :cond_2

    iget-object v10, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v10, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v12, v4, v10

    if-ltz v12, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    .line 201
    :goto_1
    iget-object v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v11, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v13, v6, v11

    if-ltz v13, :cond_4

    iget-object v11, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v11, v11, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v13, v4, v11

    if-gez v13, :cond_3

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :cond_4
    :goto_2
    if-eqz v10, :cond_7

    int-to-long v4, v3

    add-long/2addr v6, v4

    if-eqz v14, :cond_5

    .line 207
    iget-object v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v4, v4, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long v10, v4, v6

    if-lez v10, :cond_6

    move-wide v6, v4

    goto :goto_3

    .line 211
    :cond_5
    iget-object v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    add-long/2addr v6, v4

    .line 214
    :cond_6
    :goto_3
    iget-object v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v4, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    const-wide/32 v1, 0xf00000

    cmp-long v3, v6, v1

    if-ltz v3, :cond_9

    cmp-long v1, v6, v8

    if-gtz v1, :cond_9

    .line 217
    invoke-direct {v0, v8, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->flushAuxiliar(J)V

    goto :goto_4

    :cond_7
    if-eqz v14, :cond_8

    .line 221
    iget-object v6, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    iget-wide v6, v6, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    sub-long v8, v6, v4

    :cond_8
    long-to-int v4, v8

    .line 224
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 225
    iget-object v5, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v5, v1, v2, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    sub-int/2addr v3, v4

    add-int/2addr v2, v4

    if-lez v3, :cond_9

    .line 231
    iget-object v4, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v4, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->write([BII)V

    .line 235
    :cond_9
    :goto_4
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->onProgress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;

    if-eqz v1, :cond_a

    .line 236
    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->out:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v1

    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->aux:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;

    invoke-virtual {v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->getOffset()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 237
    iget-wide v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->reportPosition:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_a

    const-wide/32 v3, 0x10000

    add-long/2addr v3, v1

    .line 238
    iput-wide v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->reportPosition:J

    .line 239
    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->onProgress:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;

    invoke-interface {v3, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$ProgressReport;->report(J)V

    :cond_a
    return-void

    .line 195
    :cond_b
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The reported offset is invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
