.class Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;
.super Ljava/lang/Object;
.source "CircularFileWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BufferedFile"
.end annotation


# instance fields
.field protected length:J

.field private offset:J

.field private queue:[B

.field private queueSize:I

.field protected final target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V
    .locals 0

    .line 396
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2000

    .line 389
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 397
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    return-void
.end method

.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 392
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x2000

    .line 389
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 393
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStream;

    invoke-direct {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStream;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;)J
    .locals 2

    .line 382
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;J)J
    .locals 0

    .line 382
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    return-wide p1
.end method


# virtual methods
.method protected available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->flush()V

    .line 442
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    array-length v0, v0

    return v0

    .line 445
    :cond_0
    array-length v1, v1

    sub-int/2addr v1, v0

    return v1
.end method

.method protected close()V
    .locals 1

    const/4 v0, 0x0

    .line 405
    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    .line 406
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->close()V

    return-void
.end method

.method flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-virtual {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->writeProof([BI)V

    .line 430
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    const/4 v0, 0x0

    .line 431
    iput v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    return-void
.end method

.method protected getOffset()J
    .locals 4

    .line 401
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 449
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 450
    iput-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    .line 451
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v2, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method protected seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 458
    :cond_0
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 459
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->seek(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    .line 491
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    .line 493
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const-string v0, "offset=%s  length=%s  queue=%s  absLength=%s"

    .line 491
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->available()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 415
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queue:[B

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 416
    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_0

    .line 422
    :cond_0
    iget-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->offset:J

    iget p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->queueSize:I

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 423
    iget-wide v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 424
    iput-wide p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->length:J

    :cond_1
    return-void
.end method

.method writeProof([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->onWriteError:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$WriteErrorHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, v1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    return-void

    .line 470
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->target:Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;

    invoke-virtual {v0, p1, v1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 473
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$BufferedFile;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter;->onWriteError:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$WriteErrorHandle;

    invoke-interface {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/CircularFileWriter$WriteErrorHandle;->handle(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 474
    :cond_1
    throw v0
.end method
