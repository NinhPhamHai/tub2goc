.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;
.super Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;
.source "FileStreamSAF.java"


# instance fields
.field private final channel:Ljava/nio/channels/FileChannel;

.field private disposed:Z

.field private final file:Landroid/os/ParcelFileDescriptor;

.field private final in:Ljava/io/FileInputStream;

.field private final out:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;-><init>()V

    const-string v0, "rw"

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->file:Landroid/os/ParcelFileDescriptor;

    .line 34
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->file:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_0

    .line 38
    new-instance p2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    .line 39
    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->file:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    .line 40
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get the ParcelFileDescriptor for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public available()J
    .locals 2

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public canRead()Z
    .locals 1

    const/4 v0, 0x1

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
    .locals 3

    const/4 v0, 0x1

    .line 80
    :try_start_0
    iput-boolean v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->disposed:Z

    .line 82
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->file:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 83
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 84
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 85
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FileStreamSAF"

    const-string v2, "close() error"

    .line 87
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public rewind()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->seek(J)V

    return-void
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public setLength(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    return-void
.end method

.method public skip(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->in:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/FileStreamSAF;->out:Ljava/io/FileOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method
