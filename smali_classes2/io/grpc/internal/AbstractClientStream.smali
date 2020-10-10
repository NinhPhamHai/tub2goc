.class public abstract Lio/grpc/internal/AbstractClientStream;
.super Lio/grpc/internal/AbstractStream;
.source "AbstractClientStream.java"

# interfaces
.implements Lio/grpc/internal/ClientStream;
.implements Lio/grpc/internal/MessageFramer$Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/AbstractClientStream$GetFramer;,
        Lio/grpc/internal/AbstractClientStream$TransportState;,
        Lio/grpc/internal/AbstractClientStream$Sink;
    }
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private volatile cancelled:Z

.field private final framer:Lio/grpc/internal/Framer;

.field private headers:Lio/grpc/Metadata;

.field private shouldBeCountedForInUse:Z

.field private final transportTracer:Lio/grpc/internal/TransportTracer;

.field private useGet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lio/grpc/internal/AbstractClientStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/Metadata;Lio/grpc/CallOptions;Z)V
    .locals 1

    .line 115
    invoke-direct {p0}, Lio/grpc/internal/AbstractStream;-><init>()V

    const-string v0, "headers"

    .line 116
    invoke-static {p4, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportTracer"

    .line 117
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lio/grpc/internal/TransportTracer;

    iput-object p3, p0, Lio/grpc/internal/AbstractClientStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 118
    invoke-static {p5}, Lio/grpc/internal/GrpcUtil;->shouldBeCountedForInUse(Lio/grpc/CallOptions;)Z

    move-result p3

    iput-boolean p3, p0, Lio/grpc/internal/AbstractClientStream;->shouldBeCountedForInUse:Z

    .line 119
    iput-boolean p6, p0, Lio/grpc/internal/AbstractClientStream;->useGet:Z

    if-nez p6, :cond_0

    .line 121
    new-instance p3, Lio/grpc/internal/MessageFramer;

    invoke-direct {p3, p0, p1, p2}, Lio/grpc/internal/MessageFramer;-><init>(Lio/grpc/internal/MessageFramer$Sink;Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V

    iput-object p3, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    .line 122
    iput-object p4, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    goto :goto_0

    .line 124
    :cond_0
    new-instance p1, Lio/grpc/internal/AbstractClientStream$GetFramer;

    invoke-direct {p1, p0, p4, p2}, Lio/grpc/internal/AbstractClientStream$GetFramer;-><init>(Lio/grpc/internal/AbstractClientStream;Lio/grpc/Metadata;Lio/grpc/internal/StatsTraceContext;)V

    iput-object p1, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    :goto_0
    return-void
.end method

.method static synthetic access$300()Ljava/util/logging/Logger;
    .locals 1

    .line 48
    sget-object v0, Lio/grpc/internal/AbstractClientStream;->log:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method protected abstract abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;
.end method

.method public final cancel(Lio/grpc/Status;)V
    .locals 3

    .line 209
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Should not cancel with OK status"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 210
    iput-boolean v1, p0, Lio/grpc/internal/AbstractClientStream;->cancelled:Z

    .line 211
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/AbstractClientStream$Sink;->cancel(Lio/grpc/Status;)V

    return-void
.end method

.method public final deliverFrame(Lio/grpc/internal/WritableBuffer;ZZI)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    .line 195
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 196
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/internal/AbstractClientStream$Sink;->writeFrame(Lio/grpc/internal/WritableBuffer;ZZI)V

    return-void
.end method

.method protected final framer()Lio/grpc/internal/Framer;
    .locals 1

    .line 176
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    return-object v0
.end method

.method protected getTransportTracer()Lio/grpc/internal/TransportTracer;
    .locals 1

    .line 220
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object v0
.end method

.method public final halfClose()V
    .locals 1

    .line 201
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/AbstractClientStream$TransportState;->isOutboundClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$200(Lio/grpc/internal/AbstractClientStream$TransportState;)V

    .line 203
    invoke-virtual {p0}, Lio/grpc/internal/AbstractStream;->endOfMessages()V

    :cond_0
    return-void
.end method

.method public final request(I)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/AbstractClientStream$Sink;->request(I)V

    return-void
.end method

.method public setDeadline(Lio/grpc/Deadline;)V
    .locals 4

    .line 130
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    sget-object v1, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 131
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/Deadline;->timeRemaining(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 132
    iget-object p1, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    sget-object v2, Lio/grpc/internal/GrpcUtil;->TIMEOUT_KEY:Lio/grpc/Metadata$Key;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public final setDecompressorRegistry(Lio/grpc/DecompressorRegistry;)V
    .locals 1

    .line 152
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$100(Lio/grpc/internal/AbstractClientStream$TransportState;Lio/grpc/DecompressorRegistry;)V

    return-void
.end method

.method public final setFullStreamDecompression(Z)V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->access$000(Lio/grpc/internal/AbstractClientStream$TransportState;Z)V

    return-void
.end method

.method public setMaxInboundMessageSize(I)V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractStream$TransportState;->setMaxInboundMessageSize(I)V

    return-void
.end method

.method public setMaxOutboundMessageSize(I)V
    .locals 1

    .line 137
    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->framer:Lio/grpc/internal/Framer;

    invoke-interface {v0, p1}, Lio/grpc/internal/Framer;->setMaxOutboundMessageSize(I)V

    return-void
.end method

.method public final shouldBeCountedForInUse()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lio/grpc/internal/AbstractClientStream;->shouldBeCountedForInUse:Z

    return v0
.end method

.method public final start(Lio/grpc/internal/ClientStreamListener;)V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/AbstractClientStream$TransportState;->setListener(Lio/grpc/internal/ClientStreamListener;)V

    .line 162
    iget-boolean p1, p0, Lio/grpc/internal/AbstractClientStream;->useGet:Z

    if-nez p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/grpc/internal/AbstractClientStream$Sink;->writeHeaders(Lio/grpc/Metadata;[B)V

    .line 164
    iput-object v1, p0, Lio/grpc/internal/AbstractClientStream;->headers:Lio/grpc/Metadata;

    :cond_0
    return-void
.end method

.method protected abstract transportState()Lio/grpc/internal/AbstractClientStream$TransportState;
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->transportState()Lio/grpc/internal/AbstractClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method
