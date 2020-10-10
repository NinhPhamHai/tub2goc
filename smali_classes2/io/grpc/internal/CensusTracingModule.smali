.class final Lio/grpc/internal/CensusTracingModule;
.super Ljava/lang/Object;
.source "CensusTracingModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;,
        Lio/grpc/internal/CensusTracingModule$ServerTracerFactory;,
        Lio/grpc/internal/CensusTracingModule$ServerTracer;,
        Lio/grpc/internal/CensusTracingModule$ClientTracer;,
        Lio/grpc/internal/CensusTracingModule$ClientCallTracer;
    }
.end annotation


# static fields
.field private static final callEndedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/internal/CensusTracingModule$ClientCallTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;

.field private static final streamClosedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/internal/CensusTracingModule$ServerTracer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final censusTracer:Lio/opencensus/trace/Tracer;

.field private final clientInterceptor:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;

.field private final serverTracerFactory:Lio/grpc/internal/CensusTracingModule$ServerTracerFactory;

.field final tracingHeader:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Lio/opencensus/trace/SpanContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 61
    const-class v0, Lio/grpc/internal/CensusTracingModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/CensusTracingModule;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 76
    :try_start_0
    const-class v1, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;

    const-string v2, "callEnded"

    .line 77
    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    .line 78
    const-class v2, Lio/grpc/internal/CensusTracingModule$ServerTracer;

    const-string v3, "streamClosed"

    .line 79
    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v1

    .line 81
    sget-object v2, Lio/grpc/internal/CensusTracingModule;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Creating atomic field updaters failed"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 85
    :goto_0
    sput-object v0, Lio/grpc/internal/CensusTracingModule;->callEndedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 86
    sput-object v1, Lio/grpc/internal/CensusTracingModule;->streamClosedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/opencensus/trace/Tracer;Lio/opencensus/trace/propagation/BinaryFormat;)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;

    invoke-direct {v0, p0}, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;-><init>(Lio/grpc/internal/CensusTracingModule;)V

    iput-object v0, p0, Lio/grpc/internal/CensusTracingModule;->clientInterceptor:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;

    .line 93
    new-instance v0, Lio/grpc/internal/CensusTracingModule$ServerTracerFactory;

    invoke-direct {v0, p0}, Lio/grpc/internal/CensusTracingModule$ServerTracerFactory;-><init>(Lio/grpc/internal/CensusTracingModule;)V

    iput-object v0, p0, Lio/grpc/internal/CensusTracingModule;->serverTracerFactory:Lio/grpc/internal/CensusTracingModule$ServerTracerFactory;

    const-string v0, "censusTracer"

    .line 97
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/opencensus/trace/Tracer;

    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule;->censusTracer:Lio/opencensus/trace/Tracer;

    const-string p1, "censusPropagationBinaryFormat"

    .line 98
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance p1, Lio/grpc/internal/CensusTracingModule$1;

    invoke-direct {p1, p0, p2}, Lio/grpc/internal/CensusTracingModule$1;-><init>(Lio/grpc/internal/CensusTracingModule;Lio/opencensus/trace/propagation/BinaryFormat;)V

    const-string p2, "grpc-trace-bin"

    .line 100
    invoke-static {p2, p1}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule;->tracingHeader:Lio/grpc/Metadata$Key;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 60
    sget-object v0, Lio/grpc/internal/CensusTracingModule;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/CensusTracingModule;)Lio/opencensus/trace/Tracer;
    .locals 0

    .line 60
    iget-object p0, p0, Lio/grpc/internal/CensusTracingModule;->censusTracer:Lio/opencensus/trace/Tracer;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 60
    sget-object v0, Lio/grpc/internal/CensusTracingModule;->callEndedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/Status;Z)Lio/opencensus/trace/EndSpanOptions;
    .locals 0

    .line 60
    invoke-static {p0, p1}, Lio/grpc/internal/CensusTracingModule;->createEndSpanOptions(Lio/grpc/Status;Z)Lio/opencensus/trace/EndSpanOptions;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lio/opencensus/trace/Span;Lio/opencensus/trace/MessageEvent$Type;IJJ)V
    .locals 0

    .line 60
    invoke-static/range {p0 .. p6}, Lio/grpc/internal/CensusTracingModule;->recordMessageEvent(Lio/opencensus/trace/Span;Lio/opencensus/trace/MessageEvent$Type;IJJ)V

    return-void
.end method

.method static synthetic access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 60
    sget-object v0, Lio/grpc/internal/CensusTracingModule;->streamClosedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method

.method static convertStatus(Lio/grpc/Status;)Lio/opencensus/trace/Status;
    .locals 3

    .line 143
    sget-object v0, Lio/grpc/internal/CensusTracingModule$2;->$SwitchMap$io$grpc$Status$Code:[I

    invoke-virtual {p0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 193
    :pswitch_0
    sget-object v0, Lio/opencensus/trace/Status;->UNAUTHENTICATED:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 190
    :pswitch_1
    sget-object v0, Lio/opencensus/trace/Status;->DATA_LOSS:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 187
    :pswitch_2
    sget-object v0, Lio/opencensus/trace/Status;->UNAVAILABLE:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 184
    :pswitch_3
    sget-object v0, Lio/opencensus/trace/Status;->INTERNAL:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 181
    :pswitch_4
    sget-object v0, Lio/opencensus/trace/Status;->UNIMPLEMENTED:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 178
    :pswitch_5
    sget-object v0, Lio/opencensus/trace/Status;->OUT_OF_RANGE:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 175
    :pswitch_6
    sget-object v0, Lio/opencensus/trace/Status;->ABORTED:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 172
    :pswitch_7
    sget-object v0, Lio/opencensus/trace/Status;->FAILED_PRECONDITION:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 169
    :pswitch_8
    sget-object v0, Lio/opencensus/trace/Status;->RESOURCE_EXHAUSTED:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 166
    :pswitch_9
    sget-object v0, Lio/opencensus/trace/Status;->PERMISSION_DENIED:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 163
    :pswitch_a
    sget-object v0, Lio/opencensus/trace/Status;->ALREADY_EXISTS:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 160
    :pswitch_b
    sget-object v0, Lio/opencensus/trace/Status;->NOT_FOUND:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 157
    :pswitch_c
    sget-object v0, Lio/opencensus/trace/Status;->DEADLINE_EXCEEDED:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 154
    :pswitch_d
    sget-object v0, Lio/opencensus/trace/Status;->INVALID_ARGUMENT:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 151
    :pswitch_e
    sget-object v0, Lio/opencensus/trace/Status;->UNKNOWN:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 148
    :pswitch_f
    sget-object v0, Lio/opencensus/trace/Status;->CANCELLED:Lio/opencensus/trace/Status;

    goto :goto_0

    .line 145
    :pswitch_10
    sget-object v0, Lio/opencensus/trace/Status;->OK:Lio/opencensus/trace/Status;

    .line 198
    :goto_0
    invoke-virtual {p0}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Lio/grpc/Status;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/opencensus/trace/Status;->withDescription(Ljava/lang/String;)Lio/opencensus/trace/Status;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createEndSpanOptions(Lio/grpc/Status;Z)Lio/opencensus/trace/EndSpanOptions;
    .locals 1

    .line 206
    invoke-static {}, Lio/opencensus/trace/EndSpanOptions;->builder()Lio/opencensus/trace/EndSpanOptions$Builder;

    move-result-object v0

    .line 207
    invoke-static {p0}, Lio/grpc/internal/CensusTracingModule;->convertStatus(Lio/grpc/Status;)Lio/opencensus/trace/Status;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/opencensus/trace/EndSpanOptions$Builder;->setStatus(Lio/opencensus/trace/Status;)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 208
    invoke-virtual {v0, p1}, Lio/opencensus/trace/EndSpanOptions$Builder;->setSampleToLocalSpanStore(Z)Lio/opencensus/trace/EndSpanOptions$Builder;

    .line 209
    invoke-virtual {v0}, Lio/opencensus/trace/EndSpanOptions$Builder;->build()Lio/opencensus/trace/EndSpanOptions;

    move-result-object p0

    return-object p0
.end method

.method static generateTraceSpanName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string p0, "Recv"

    goto :goto_0

    :cond_0
    const-string p0, "Sent"

    .line 419
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static recordMessageEvent(Lio/opencensus/trace/Span;Lio/opencensus/trace/MessageEvent$Type;IJJ)V
    .locals 2

    int-to-long v0, p2

    .line 215
    invoke-static {p1, v0, v1}, Lio/opencensus/trace/MessageEvent;->builder(Lio/opencensus/trace/MessageEvent$Type;J)Lio/opencensus/trace/MessageEvent$Builder;

    move-result-object p1

    const-wide/16 v0, -0x1

    cmp-long p2, p5, v0

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p1, p5, p6}, Lio/opencensus/trace/MessageEvent$Builder;->setUncompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    :cond_0
    cmp-long p2, p3, v0

    if-eqz p2, :cond_1

    .line 220
    invoke-virtual {p1, p3, p4}, Lio/opencensus/trace/MessageEvent$Builder;->setCompressedMessageSize(J)Lio/opencensus/trace/MessageEvent$Builder;

    .line 222
    :cond_1
    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent$Builder;->build()Lio/opencensus/trace/MessageEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->addMessageEvent(Lio/opencensus/trace/MessageEvent;)V

    return-void
.end method


# virtual methods
.method getClientInterceptor()Lio/grpc/ClientInterceptor;
    .locals 1

    .line 137
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule;->clientInterceptor:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;

    return-object v0
.end method

.method newClientCallTracer(Lio/opencensus/trace/Span;Lio/grpc/MethodDescriptor;)Lio/grpc/internal/CensusTracingModule$ClientCallTracer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/Span;",
            "Lio/grpc/MethodDescriptor<",
            "**>;)",
            "Lio/grpc/internal/CensusTracingModule$ClientCallTracer;"
        }
    .end annotation

    .line 123
    new-instance v0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;-><init>(Lio/grpc/internal/CensusTracingModule;Lio/opencensus/trace/Span;Lio/grpc/MethodDescriptor;)V

    return-object v0
.end method
