.class public Lcom/umeng/commonsdk/proguard/aw;
.super Lcom/umeng/commonsdk/proguard/ay;
.source "TIOStreamTransport.java"


# instance fields
.field protected a:Ljava/io/InputStream;

.field protected b:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ay;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/aw;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/aw;->b:Ljava/io/OutputStream;

    .line 53
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/aw;->a:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ay;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/aw;->a:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/aw;->b:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/aw;->b:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/az;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/aw;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 122
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_0

    return p1

    .line 127
    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/az;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/az;-><init>(I)V

    throw p1

    :catch_0
    move-exception p1

    .line 124
    new-instance p2, Lcom/umeng/commonsdk/proguard/az;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/commonsdk/proguard/az;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 118
    :cond_1
    new-instance p1, Lcom/umeng/commonsdk/proguard/az;

    const/4 p2, 0x1

    const-string p3, "Cannot read from null inputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/commonsdk/proguard/az;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public b([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/az;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/aw;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 142
    new-instance p2, Lcom/umeng/commonsdk/proguard/az;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/umeng/commonsdk/proguard/az;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 137
    :cond_0
    new-instance p1, Lcom/umeng/commonsdk/proguard/az;

    const/4 p2, 0x1

    const-string p3, "Cannot write to null outputStream"

    invoke-direct {p1, p2, p3}, Lcom/umeng/commonsdk/proguard/az;-><init>(ILjava/lang/String;)V

    throw p1
.end method
