.class public abstract Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "AbstractManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/internal/AbstractManagedChannelImplBuilder<",
        "TT;>;>",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

.field private static final DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

.field private static final DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_NAME_RESOLVER_FACTORY:Lio/grpc/NameResolver$Factory;

.field static final IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

.field static final IDLE_MODE_MIN_TIMEOUT_MILLIS:J


# instance fields
.field authorityOverride:Ljava/lang/String;

.field binlog:Lio/grpc/BinaryLog;

.field private censusStatsOverride:Lio/grpc/internal/CensusStatsModule;

.field channelz:Lio/grpc/InternalChannelz;

.field compressorRegistry:Lio/grpc/CompressorRegistry;

.field decompressorRegistry:Lio/grpc/DecompressorRegistry;

.field defaultLbPolicy:Ljava/lang/String;

.field defaultServiceConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private final directServerAddress:Ljava/net/SocketAddress;

.field executorPool:Lio/grpc/internal/ObjectPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ObjectPool<",
            "+",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field fullStreamDecompression:Z

.field idleTimeoutMillis:J

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field lookUpServiceConfig:Z

.field maxHedgedAttempts:I

.field private maxInboundMessageSize:I

.field maxRetryAttempts:I

.field maxTraceEvents:I

.field private nameResolverFactory:Lio/grpc/NameResolver$Factory;

.field perRpcBufferLimit:J

.field proxyDetector:Lio/grpc/ProxyDetector;

.field private recordFinishedRpcs:Z

.field private recordRealTimeMetrics:Z

.field private recordStartedRpcs:Z

.field retryBufferSize:J

.field retryEnabled:Z

.field private statsEnabled:Z

.field final target:Ljava/lang/String;

.field temporarilyDisableRetry:Z

.field private tracingEnabled:Z

.field protected transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

.field userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 77
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_MIN_TIMEOUT_MILLIS:J

    .line 84
    sget-object v0, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 85
    invoke-static {v0}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    .line 88
    invoke-static {}, Lio/grpc/NameResolverRegistry;->getDefaultRegistry()Lio/grpc/NameResolverRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/NameResolverRegistry;->asFactory()Lio/grpc/NameResolver$Factory;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_NAME_RESOLVER_FACTORY:Lio/grpc/NameResolver$Factory;

    .line 91
    invoke-static {}, Lio/grpc/DecompressorRegistry;->getDefaultInstance()Lio/grpc/DecompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    .line 94
    invoke-static {}, Lio/grpc/CompressorRegistry;->getDefaultInstance()Lio/grpc/CompressorRegistry;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 181
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 99
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_EXECUTOR_POOL:Lio/grpc/internal/ObjectPool;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executorPool:Lio/grpc/internal/ObjectPool;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    .line 104
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_NAME_RESOLVER_FACTORY:Lio/grpc/NameResolver$Factory;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    const-string v0, "pick_first"

    .line 118
    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLbPolicy:Ljava/lang/String;

    .line 122
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_DECOMPRESSOR_REGISTRY:Lio/grpc/DecompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry:Lio/grpc/DecompressorRegistry;

    .line 124
    sget-object v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->DEFAULT_COMPRESSOR_REGISTRY:Lio/grpc/CompressorRegistry;

    iput-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry:Lio/grpc/CompressorRegistry;

    .line 126
    sget-wide v0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->IDLE_MODE_DEFAULT_TIMEOUT_MILLIS:J

    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeoutMillis:J

    const/4 v0, 0x5

    .line 128
    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts:I

    .line 129
    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts:I

    const-wide/32 v0, 0x1000000

    .line 130
    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize:J

    const-wide/32 v0, 0x100000

    .line 131
    iput-wide v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit:J

    const/4 v0, 0x0

    .line 132
    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryEnabled:Z

    .line 138
    invoke-static {}, Lio/grpc/InternalChannelz;->instance()Lio/grpc/InternalChannelz;

    move-result-object v1

    iput-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->channelz:Lio/grpc/InternalChannelz;

    const/4 v1, 0x1

    .line 143
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->lookUpServiceConfig:Z

    .line 145
    invoke-static {}, Lio/grpc/internal/TransportTracer;->getDefaultFactory()Lio/grpc/internal/TransportTracer$Factory;

    move-result-object v2

    iput-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->transportTracerFactory:Lio/grpc/internal/TransportTracer$Factory;

    const/high16 v2, 0x400000

    .line 147
    iput v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    .line 172
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    .line 173
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    .line 174
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    .line 175
    iput-boolean v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    .line 176
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    const-string v0, "target"

    .line 182
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->target:Ljava/lang/String;

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directServerAddress:Ljava/net/SocketAddress;

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 10

    .line 507
    new-instance v0, Lio/grpc/internal/ManagedChannelOrphanWrapper;

    new-instance v9, Lio/grpc/internal/ManagedChannelImpl;

    .line 509
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;

    invoke-direct {v4}, Lio/grpc/internal/ExponentialBackoffPolicy$Provider;-><init>()V

    sget-object v1, Lio/grpc/internal/GrpcUtil;->SHARED_CHANNEL_EXECUTOR:Lio/grpc/internal/SharedResourceHolder$Resource;

    .line 512
    invoke-static {v1}, Lio/grpc/internal/SharedResourcePool;->forResource(Lio/grpc/internal/SharedResourceHolder$Resource;)Lio/grpc/internal/SharedResourcePool;

    move-result-object v5

    sget-object v6, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    .line 514
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->getEffectiveInterceptors()Ljava/util/List;

    move-result-object v7

    sget-object v8, Lio/grpc/internal/TimeProvider;->SYSTEM_TIME_PROVIDER:Lio/grpc/internal/TimeProvider;

    move-object v1, v9

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lio/grpc/internal/ManagedChannelImpl;-><init>(Lio/grpc/internal/AbstractManagedChannelImplBuilder;Lio/grpc/internal/ClientTransportFactory;Lio/grpc/internal/BackoffPolicy$Provider;Lio/grpc/internal/ObjectPool;Lcom/google/common/base/Supplier;Ljava/util/List;Lio/grpc/internal/TimeProvider;)V

    invoke-direct {v0, v9}, Lio/grpc/internal/ManagedChannelOrphanWrapper;-><init>(Lio/grpc/ManagedChannel;)V

    return-object v0
.end method

.method protected abstract buildTransportFactory()Lio/grpc/internal/ClientTransportFactory;
.end method

.method protected abstract getDefaultPort()I
.end method

.method final getEffectiveInterceptors()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->interceptors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 525
    iput-boolean v1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    .line 526
    iget-boolean v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->statsEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 527
    iput-boolean v3, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    .line 528
    iget-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->censusStatsOverride:Lio/grpc/internal/CensusStatsModule;

    if-nez v2, :cond_0

    .line 530
    new-instance v2, Lio/grpc/internal/CensusStatsModule;

    sget-object v5, Lio/grpc/internal/GrpcUtil;->STOPWATCH_SUPPLIER:Lcom/google/common/base/Supplier;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordStartedRpcs:Z

    iget-boolean v8, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordFinishedRpcs:Z

    iget-boolean v9, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->recordRealTimeMetrics:Z

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lio/grpc/internal/CensusStatsModule;-><init>(Lcom/google/common/base/Supplier;ZZZZ)V

    .line 536
    :cond_0
    invoke-virtual {v2}, Lio/grpc/internal/CensusStatsModule;->getClientInterceptor()Lio/grpc/ClientInterceptor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 538
    :cond_1
    iget-boolean v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->tracingEnabled:Z

    if-eqz v2, :cond_2

    .line 539
    iput-boolean v3, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->temporarilyDisableRetry:Z

    .line 540
    new-instance v2, Lio/grpc/internal/CensusTracingModule;

    .line 541
    invoke-static {}, Lio/opencensus/trace/Tracing;->getTracer()Lio/opencensus/trace/Tracer;

    move-result-object v3

    .line 542
    invoke-static {}, Lio/opencensus/trace/Tracing;->getPropagationComponent()Lio/opencensus/trace/propagation/PropagationComponent;

    move-result-object v4

    invoke-virtual {v4}, Lio/opencensus/trace/propagation/PropagationComponent;->getBinaryFormat()Lio/opencensus/trace/propagation/BinaryFormat;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lio/grpc/internal/CensusTracingModule;-><init>(Lio/opencensus/trace/Tracer;Lio/opencensus/trace/propagation/BinaryFormat;)V

    .line 543
    invoke-virtual {v2}, Lio/grpc/internal/CensusTracingModule;->getClientInterceptor()Lio/grpc/ClientInterceptor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method getNameResolverFactory()Lio/grpc/NameResolver$Factory;
    .locals 3

    .line 568
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->authorityOverride:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 569
    iget-object v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    return-object v0

    .line 571
    :cond_0
    new-instance v1, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;

    iget-object v2, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory:Lio/grpc/NameResolver$Factory;

    invoke-direct {v1, v2, v0}, Lio/grpc/internal/OverrideAuthorityNameResolverFactory;-><init>(Lio/grpc/NameResolver$Factory;Ljava/lang/String;)V

    return-object v1
.end method

.method protected final maxInboundMessageSize()I
    .locals 1

    .line 169
    iget v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    return v0
.end method
