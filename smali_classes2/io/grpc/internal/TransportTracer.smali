.class public final Lio/grpc/internal/TransportTracer;
.super Ljava/lang/Object;
.source "TransportTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/TransportTracer$Factory;,
        Lio/grpc/internal/TransportTracer$FlowControlReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACTORY:Lio/grpc/internal/TransportTracer$Factory;


# instance fields
.field private flowControlWindowReader:Lio/grpc/internal/TransportTracer$FlowControlReader;

.field private keepAlivesSent:J

.field private lastLocalStreamCreatedTimeNanos:J

.field private volatile lastMessageReceivedTimeNanos:J

.field private lastMessageSentTimeNanos:J

.field private final messagesReceived:Lio/grpc/internal/LongCounter;

.field private messagesSent:J

.field private streamsFailed:J

.field private streamsStarted:J

.field private streamsSucceeded:J

.field private final timeProvider:Lio/grpc/internal/TimeProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lio/grpc/internal/TransportTracer$Factory;

    sget-object v1, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    invoke-direct {v0, v1}, Lio/grpc/internal/TransportTracer$Factory;-><init>(Lio/grpc/internal/TimeProvider;)V

    sput-object v0, Lio/grpc/internal/TransportTracer;->DEFAULT_FACTORY:Lio/grpc/internal/TransportTracer$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/TransportTracer;->messagesReceived:Lio/grpc/internal/LongCounter;

    .line 48
    sget-object v0, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    iput-object v0, p0, Lio/grpc/internal/TransportTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-void
.end method

.method private constructor <init>(Lio/grpc/internal/TimeProvider;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lio/grpc/internal/LongCounterFactory;->create()Lio/grpc/internal/LongCounter;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/TransportTracer;->messagesReceived:Lio/grpc/internal/LongCounter;

    .line 52
    iput-object p1, p0, Lio/grpc/internal/TransportTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/TimeProvider;Lio/grpc/internal/TransportTracer$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lio/grpc/internal/TransportTracer;-><init>(Lio/grpc/internal/TimeProvider;)V

    return-void
.end method

.method public static getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;
    .locals 1

    .line 173
    sget-object v0, Lio/grpc/internal/TransportTracer;->DEFAULT_FACTORY:Lio/grpc/internal/TransportTracer$Factory;

    return-object v0
.end method


# virtual methods
.method public reportKeepAliveSent()V
    .locals 4

    .line 128
    iget-wide v0, p0, Lio/grpc/internal/TransportTracer;->keepAlivesSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/TransportTracer;->keepAlivesSent:J

    return-void
.end method

.method public reportLocalStreamStarted()V
    .locals 4

    .line 82
    iget-wide v0, p0, Lio/grpc/internal/TransportTracer;->streamsStarted:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/TransportTracer;->streamsStarted:J

    .line 83
    iget-object v0, p0, Lio/grpc/internal/TransportTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    invoke-interface {v0}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/TransportTracer;->lastLocalStreamCreatedTimeNanos:J

    return-void
.end method

.method public reportMessageReceived()V
    .locals 3

    .line 120
    iget-object v0, p0, Lio/grpc/internal/TransportTracer;->messagesReceived:Lio/grpc/internal/LongCounter;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lio/grpc/internal/LongCounter;->add(J)V

    .line 121
    iget-object v0, p0, Lio/grpc/internal/TransportTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    invoke-interface {v0}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/TransportTracer;->lastMessageReceivedTimeNanos:J

    return-void
.end method

.method public reportMessageSent(I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    iget-wide v0, p0, Lio/grpc/internal/TransportTracer;->messagesSent:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lio/grpc/internal/TransportTracer;->messagesSent:J

    .line 113
    iget-object p1, p0, Lio/grpc/internal/TransportTracer;->timeProvider:Lio/grpc/internal/TimeProvider;

    invoke-interface {p1}, Lio/grpc/internal/TimeProvider;->currentTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lio/grpc/internal/TransportTracer;->lastMessageSentTimeNanos:J

    return-void
.end method

.method public reportStreamClosed(Z)V
    .locals 4

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 99
    iget-wide v2, p0, Lio/grpc/internal/TransportTracer;->streamsSucceeded:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/grpc/internal/TransportTracer;->streamsSucceeded:J

    goto :goto_0

    .line 101
    :cond_0
    iget-wide v2, p0, Lio/grpc/internal/TransportTracer;->streamsFailed:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/grpc/internal/TransportTracer;->streamsFailed:J

    :goto_0
    return-void
.end method

.method public setFlowControlWindowReader(Lio/grpc/internal/TransportTracer$FlowControlReader;)V
    .locals 0

    .line 136
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/internal/TransportTracer$FlowControlReader;

    iput-object p1, p0, Lio/grpc/internal/TransportTracer;->flowControlWindowReader:Lio/grpc/internal/TransportTracer$FlowControlReader;

    return-void
.end method
