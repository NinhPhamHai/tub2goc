.class Lio/grpc/okhttp/OkHttpClientStream;
.super Lio/grpc/internal/AbstractClientStream;
.source "OkHttpClientStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpClientStream$TransportState;,
        Lio/grpc/okhttp/OkHttpClientStream$Sink;
    }
.end annotation


# static fields
.field private static final EMPTY_BUFFER:Lokio/Buffer;


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private authority:Ljava/lang/String;

.field private volatile id:I

.field private final method:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "**>;"
        }
    .end annotation
.end field

.field private outboundFlowState:Ljava/lang/Object;

.field private final sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

.field private final state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

.field private final statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

.field private useGet:Z

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    sput-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    return-void
.end method

.method constructor <init>(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OkHttpClientTransport;Lio/grpc/okhttp/OutboundFlowController;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/CallOptions;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/okhttp/ExceptionHandlingFrameWriter;",
            "Lio/grpc/okhttp/OkHttpClientTransport;",
            "Lio/grpc/okhttp/OutboundFlowController;",
            "Ljava/lang/Object;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/grpc/internal/StatsTraceContext;",
            "Lio/grpc/internal/TransportTracer;",
            "Lio/grpc/CallOptions;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v7, p11

    .line 76
    new-instance v1, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;

    invoke-direct {v1}, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;-><init>()V

    .line 82
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->isSafe()Z

    move-result v6

    move-object v0, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p12

    move-object v4, p2

    move-object/from16 v5, p13

    .line 76
    invoke-direct/range {v0 .. v6}, Lio/grpc/internal/AbstractClientStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;Lio/grpc/Metadata;Lio/grpc/CallOptions;Z)V

    const/4 v0, -0x1

    .line 55
    iput v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->id:I

    .line 57
    new-instance v0, Lio/grpc/okhttp/OkHttpClientStream$Sink;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpClientStream$Sink;-><init>(Lio/grpc/okhttp/OkHttpClientStream;)V

    iput-object v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    const-string v0, "statsTraceCtx"

    .line 83
    invoke-static {v7, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, Lio/grpc/internal/StatsTraceContext;

    iput-object v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    move-object v0, p1

    .line 84
    iput-object v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    move-object/from16 v0, p9

    .line 85
    iput-object v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    move-object/from16 v0, p10

    .line 86
    iput-object v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    .line 90
    invoke-virtual {p4}, Lio/grpc/okhttp/OkHttpClientTransport;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    iput-object v0, v9, Lio/grpc/okhttp/OkHttpClientStream;->attributes:Lio/grpc/Attributes;

    .line 91
    new-instance v10, Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-object v0, v10

    move-object v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p11

    move-object/from16 v4, p6

    move-object v5, p3

    move-object/from16 v6, p5

    move-object v7, p4

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lio/grpc/okhttp/OkHttpClientStream$TransportState;-><init>(Lio/grpc/okhttp/OkHttpClientStream;ILio/grpc/internal/StatsTraceContext;Ljava/lang/Object;Lio/grpc/okhttp/ExceptionHandlingFrameWriter;Lio/grpc/okhttp/OutboundFlowController;Lio/grpc/okhttp/OkHttpClientTransport;I)V

    iput-object v10, v9, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-void
.end method

.method static synthetic access$000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/MethodDescriptor;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    return-object p0
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OkHttpClientStream;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return p0
.end method

.method static synthetic access$1000(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lio/grpc/okhttp/OkHttpClientStream;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return p1
.end method

.method static synthetic access$1100(Lio/grpc/okhttp/OkHttpClientStream;)I
    .locals 0

    .line 43
    iget p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->id:I

    return p0
.end method

.method static synthetic access$1102(Lio/grpc/okhttp/OkHttpClientStream;I)I
    .locals 0

    .line 43
    iput p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->id:I

    return p1
.end method

.method static synthetic access$1200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/StatsTraceContext;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->statsTraceCtx:Lio/grpc/internal/StatsTraceContext;

    return-object p0
.end method

.method static synthetic access$1300(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lio/grpc/okhttp/OkHttpClientStream;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/okhttp/OkHttpClientStream$TransportState;
    .locals 0

    .line 43
    iget-object p0, p0, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-object p0
.end method

.method static synthetic access$500()Lokio/Buffer;
    .locals 1

    .line 43
    sget-object v0, Lio/grpc/okhttp/OkHttpClientStream;->EMPTY_BUFFER:Lokio/Buffer;

    return-object v0
.end method

.method static synthetic access$600(Lio/grpc/okhttp/OkHttpClientStream;I)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractStream;->onSendingBytes(I)V

    return-void
.end method

.method static synthetic access$800(Lio/grpc/okhttp/OkHttpClientStream;)Lio/grpc/internal/TransportTracer;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lio/grpc/internal/AbstractClientStream;->getTransportTracer()Lio/grpc/internal/TransportTracer;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic abstractClientStreamSink()Lio/grpc/internal/AbstractClientStream$Sink;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->abstractClientStreamSink()Lio/grpc/okhttp/OkHttpClientStream$Sink;

    move-result-object v0

    return-object v0
.end method

.method protected abstractClientStreamSink()Lio/grpc/okhttp/OkHttpClientStream$Sink;
    .locals 1

    .line 109
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->sink:Lio/grpc/okhttp/OkHttpClientStream$Sink;

    return-object v0
.end method

.method getOutboundFlowState()Ljava/lang/Object;
    .locals 1

    .line 394
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlowState:Ljava/lang/Object;

    return-object v0
.end method

.method public getType()Lio/grpc/MethodDescriptor$MethodType;
    .locals 1

    .line 116
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->method:Lio/grpc/MethodDescriptor;

    invoke-virtual {v0}, Lio/grpc/MethodDescriptor;->getType()Lio/grpc/MethodDescriptor$MethodType;

    move-result-object v0

    return-object v0
.end method

.method public id()I
    .locals 1

    .line 120
    iget v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->id:I

    return v0
.end method

.method public setAuthority(Ljava/lang/String;)V
    .locals 1

    const-string v0, "authority"

    .line 133
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->authority:Ljava/lang/String;

    return-void
.end method

.method setOutboundFlowState(Ljava/lang/Object;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lio/grpc/okhttp/OkHttpClientStream;->outboundFlowState:Ljava/lang/Object;

    return-void
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractClientStream$TransportState;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpClientStream;->transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method protected transportState()Lio/grpc/okhttp/OkHttpClientStream$TransportState;
    .locals 1

    .line 104
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->state:Lio/grpc/okhttp/OkHttpClientStream$TransportState;

    return-object v0
.end method

.method useGet()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lio/grpc/okhttp/OkHttpClientStream;->useGet:Z

    return v0
.end method
