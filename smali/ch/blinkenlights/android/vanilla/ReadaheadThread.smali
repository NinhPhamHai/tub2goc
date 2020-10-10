.class Lch/blinkenlights/android/vanilla/ReadaheadThread;
.super Ljava/lang/Object;
.source "ReadaheadThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInputStream:Ljava/io/FileInputStream;

.field private mPath:Ljava/lang/String;

.field private mReadDelay:J

.field private mScratch:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    .line 61
    new-array v0, v0, [B

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mScratch:[B

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ReadaheadThread"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11

    const-string v0, ": "

    .line 90
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "VanillaMusic"

    if-eq v1, v2, :cond_2

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, -0x1

    .line 131
    :try_start_0
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mScratch:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-ltz p1, :cond_1

    .line 136
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mHandler:Landroid/os/Handler;

    iget-wide v0, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mReadDelay:J

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 138
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Readahead for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " finished"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 92
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lch/blinkenlights/android/vanilla/Song;

    .line 94
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mPath:Ljava/lang/String;

    iget-object v5, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 97
    :try_start_1
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to close file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    .line 101
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mPath:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 102
    iput-wide v5, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mReadDelay:J

    .line 103
    iput-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    .line 106
    :cond_3
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    if-nez v1, :cond_4

    .line 109
    :try_start_2
    iget-object v1, p1, Lch/blinkenlights/android/vanilla/Song;->path:Ljava/lang/String;

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mPath:Ljava/lang/String;

    .line 110
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v5, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mPath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    .line 111
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    const v5, 0x8000

    div-int/2addr v1, v5

    int-to-double v5, v1

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v5, v7

    if-lez v1, :cond_4

    const-wide v7, 0x3feccccccccccccdL    # 0.9

    .line 114
    iget-wide v9, p1, Lch/blinkenlights/android/vanilla/Song;->duration:J

    long-to-double v9, v9

    mul-double v9, v9, v7

    div-double/2addr v9, v5

    double-to-long v5, v9

    iput-wide v5, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mReadDelay:J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO Exception on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v1

    .line 117
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to song "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_4
    :goto_1
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mInputStream:Ljava/io/FileInputStream;

    if-eqz p1, :cond_5

    .line 124
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_2
    return v2
.end method

.method public pause()V
    .locals 2

    .line 71
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public setSong(Lch/blinkenlights/android/vanilla/Song;)V
    .locals 3

    .line 82
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/ReadaheadThread;->pause()V

    .line 83
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/ReadaheadThread;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
