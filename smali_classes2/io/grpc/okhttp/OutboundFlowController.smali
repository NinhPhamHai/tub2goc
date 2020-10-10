.class Lio/grpc/okhttp/OutboundFlowController;
.super Ljava/lang/Object;
.source "OutboundFlowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;,
        Lio/grpc/okhttp/OutboundFlowController$WriteStatus;
    }
.end annotation


# instance fields
.field private final connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

.field private final frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

.field private initialWindowSize:I

.field private final transport:Lio/grpc/okhttp/OkHttpClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/internal/framed/FrameWriter;I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "transport"

    .line 42
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/okhttp/OkHttpClientTransport;

    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    const-string p1, "frameWriter"

    .line 43
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/grpc/okhttp/internal/framed/FrameWriter;

    iput-object p2, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    .line 44
    iput p3, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 45
    new-instance p1, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p3}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;II)V

    iput-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    return-object p0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OutboundFlowController;)Lio/grpc/okhttp/internal/framed/FrameWriter;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    return-object p0
.end method

.method private state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;
    .locals 2

    .line 149
    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientStream;->getOutboundFlowState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    invoke-direct {v0, p0, p1, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientStream;I)V

    .line 152
    invoke-virtual {p1, v0}, Lio/grpc/okhttp/OkHttpClientStream;->setOutboundFlowState(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method data(ZILokio/Buffer;Z)V
    .locals 4

    const-string v0, "source"

    .line 108
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0, p2}, Lio/grpc/okhttp/OkHttpClientTransport;->getStream(I)Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-direct {p0, p2}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object p2

    .line 119
    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v0

    .line 120
    invoke-virtual {p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->hasPendingData()Z

    move-result v1

    .line 121
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v2

    long-to-int v3, v2

    if-nez v1, :cond_1

    if-lt v0, v3, :cond_1

    .line 125
    invoke-virtual {p2, p3, v3, p1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->write(Lokio/Buffer;IZ)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    if-lez v0, :cond_2

    const/4 v1, 0x0

    .line 129
    invoke-virtual {p2, p3, v0, v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->write(Lokio/Buffer;IZ)V

    .line 132
    :cond_2
    invoke-virtual {p3}, Lokio/Buffer;->size()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p2, p3, v1, p1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->enqueue(Lokio/Buffer;IZ)V

    :goto_0
    if-eqz p4, :cond_3

    .line 136
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    :cond_3
    return-void
.end method

.method flush()V
    .locals 2

    .line 142
    :try_start_0
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->frameWriter:Lio/grpc/okhttp/internal/framed/FrameWriter;

    invoke-interface {v0}, Lio/grpc/okhttp/internal/framed/FrameWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 144
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method initialOutboundWindowSize(I)Z
    .locals 7

    if-ltz p1, :cond_3

    .line 62
    iget v0, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    sub-int v0, p1, v0

    .line 63
    iput p1, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    .line 64
    iget-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {p1}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    .line 65
    invoke-virtual {v4}, Lio/grpc/okhttp/OkHttpClientStream;->getOutboundFlowState()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    if-nez v5, :cond_0

    .line 68
    new-instance v5, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    iget v6, p0, Lio/grpc/okhttp/OutboundFlowController;->initialWindowSize:I

    invoke-direct {v5, p0, v4, v6}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;-><init>(Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientStream;I)V

    .line 69
    invoke-virtual {v4, v5}, Lio/grpc/okhttp/OkHttpClientStream;->setOutboundFlowState(Ljava/lang/Object;)V

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {v5, v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 59
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid initial window size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method windowUpdate(Lio/grpc/okhttp/OkHttpClientStream;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    move-result p1

    .line 89
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->writeStreams()V

    goto :goto_0

    .line 92
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p2}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->incrementStreamWindow(I)I

    move-result p2

    .line 95
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 96
    invoke-virtual {p1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writableWindow()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 97
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    :cond_1
    move p1, p2

    :goto_0
    return p1
.end method

.method writeStreams()V
    .locals 9

    .line 163
    iget-object v0, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v0}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->connectionState:Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    invoke-virtual {v1}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->window()I

    move-result v1

    .line 165
    array-length v2, v0

    :goto_0
    const/4 v3, 0x0

    if-lez v2, :cond_3

    if-lez v1, :cond_3

    int-to-float v4, v1

    int-to-float v5, v2

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 167
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    if-lez v1, :cond_2

    .line 169
    aget-object v6, v0, v3

    .line 170
    invoke-direct {p0, v6}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v7

    .line 172
    invoke-virtual {v7}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->unallocatedBytes()I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-lez v8, :cond_0

    .line 174
    invoke-virtual {v7, v8}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocateBytes(I)V

    sub-int/2addr v1, v8

    .line 178
    :cond_0
    invoke-virtual {v7}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->unallocatedBytes()I

    move-result v7

    if-lez v7, :cond_1

    add-int/lit8 v7, v5, 0x1

    .line 181
    aput-object v6, v0, v5

    move v5, v7

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_0

    .line 188
    :cond_3
    new-instance v0, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;-><init>(Lio/grpc/okhttp/OutboundFlowController$1;)V

    .line 189
    iget-object v1, p0, Lio/grpc/okhttp/OutboundFlowController;->transport:Lio/grpc/okhttp/OkHttpClientTransport;

    invoke-virtual {v1}, Lio/grpc/okhttp/OkHttpClientTransport;->getActiveStreams()[Lio/grpc/okhttp/OkHttpClientStream;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 190
    invoke-direct {p0, v4}, Lio/grpc/okhttp/OutboundFlowController;->state(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;

    move-result-object v4

    .line 191
    invoke-virtual {v4}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->allocatedBytes()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->writeBytes(ILio/grpc/okhttp/OutboundFlowController$WriteStatus;)I

    .line 192
    invoke-virtual {v4}, Lio/grpc/okhttp/OutboundFlowController$OutboundFlowState;->clearAllocatedBytes()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 195
    :cond_4
    invoke-virtual {v0}, Lio/grpc/okhttp/OutboundFlowController$WriteStatus;->hasWritten()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-virtual {p0}, Lio/grpc/okhttp/OutboundFlowController;->flush()V

    :cond_5
    return-void
.end method
