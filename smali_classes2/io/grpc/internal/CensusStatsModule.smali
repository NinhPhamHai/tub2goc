.class public final Lio/grpc/internal/CensusStatsModule;
.super Ljava/lang/Object;
.source "CensusStatsModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;,
        Lio/grpc/internal/CensusStatsModule$ClientCallTracer;,
        Lio/grpc/internal/CensusStatsModule$ClientTracer;
    }
.end annotation


# static fields
.field private static final NANOS_PER_MILLI:D

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final propagateTags:Z

.field private final recordFinishedRpcs:Z

.field private final recordRealTimeMetrics:Z

.field private final recordStartedRpcs:Z

.field final statsHeader:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Lio/opencensus/tags/TagContext;",
            ">;"
        }
    .end annotation
.end field

.field private final statsRecorder:Lio/opencensus/stats/StatsRecorder;

.field private final stopwatchSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;"
        }
    .end annotation
.end field

.field private final tagger:Lio/opencensus/tags/Tagger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    const-class v0, Lio/grpc/internal/CensusStatsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/CensusStatsModule;->logger:Ljava/util/logging/Logger;

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    sput-wide v0, Lio/grpc/internal/CensusStatsModule;->NANOS_PER_MILLI:D

    return-void
.end method

.method constructor <init>(Lcom/google/common/base/Supplier;ZZZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 91
    invoke-static {}, Lio/opencensus/tags/Tags;->getTagger()Lio/opencensus/tags/Tagger;

    move-result-object v1

    .line 92
    invoke-static {}, Lio/opencensus/tags/Tags;->getTagPropagationComponent()Lio/opencensus/tags/propagation/TagPropagationComponent;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/tags/propagation/TagPropagationComponent;->getBinarySerializer()Lio/opencensus/tags/propagation/TagContextBinarySerializer;

    move-result-object v2

    .line 93
    invoke-static {}, Lio/opencensus/stats/Stats;->getStatsRecorder()Lio/opencensus/stats/StatsRecorder;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 90
    invoke-direct/range {v0 .. v8}, Lio/grpc/internal/CensusStatsModule;-><init>(Lio/opencensus/tags/Tagger;Lio/opencensus/tags/propagation/TagContextBinarySerializer;Lio/opencensus/stats/StatsRecorder;Lcom/google/common/base/Supplier;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Lio/opencensus/tags/Tagger;Lio/opencensus/tags/propagation/TagContextBinarySerializer;Lio/opencensus/stats/StatsRecorder;Lcom/google/common/base/Supplier;ZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/tags/Tagger;",
            "Lio/opencensus/tags/propagation/TagContextBinarySerializer;",
            "Lio/opencensus/stats/StatsRecorder;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/common/base/Stopwatch;",
            ">;ZZZZ)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "tagger"

    .line 107
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lio/opencensus/tags/Tagger;

    iput-object v0, p0, Lio/grpc/internal/CensusStatsModule;->tagger:Lio/opencensus/tags/Tagger;

    const-string v0, "statsRecorder"

    .line 108
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lio/opencensus/stats/StatsRecorder;

    iput-object p3, p0, Lio/grpc/internal/CensusStatsModule;->statsRecorder:Lio/opencensus/stats/StatsRecorder;

    const-string p3, "tagCtxSerializer"

    .line 109
    invoke-static {p2, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "stopwatchSupplier"

    .line 110
    invoke-static {p4, p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lcom/google/common/base/Supplier;

    iput-object p4, p0, Lio/grpc/internal/CensusStatsModule;->stopwatchSupplier:Lcom/google/common/base/Supplier;

    .line 111
    iput-boolean p5, p0, Lio/grpc/internal/CensusStatsModule;->propagateTags:Z

    .line 112
    iput-boolean p6, p0, Lio/grpc/internal/CensusStatsModule;->recordStartedRpcs:Z

    .line 113
    iput-boolean p7, p0, Lio/grpc/internal/CensusStatsModule;->recordFinishedRpcs:Z

    .line 114
    iput-boolean p8, p0, Lio/grpc/internal/CensusStatsModule;->recordRealTimeMetrics:Z

    .line 115
    new-instance p3, Lio/grpc/internal/CensusStatsModule$1;

    invoke-direct {p3, p0, p2, p1}, Lio/grpc/internal/CensusStatsModule$1;-><init>(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/propagation/TagContextBinarySerializer;Lio/opencensus/tags/Tagger;)V

    const-string p1, "grpc-tags-bin"

    .line 116
    invoke-static {p1, p3}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$BinaryMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/CensusStatsModule;->statsHeader:Lio/grpc/Metadata$Key;

    return-void
.end method

.method static synthetic access$000()Ljava/util/logging/Logger;
    .locals 1

    .line 70
    sget-object v0, Lio/grpc/internal/CensusStatsModule;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureDouble;D)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/internal/CensusStatsModule;->recordRealTimeMetric(Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureDouble;D)V

    return-void
.end method

.method static synthetic access$200(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureLong;J)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lio/grpc/internal/CensusStatsModule;->recordRealTimeMetric(Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureLong;J)V

    return-void
.end method

.method static synthetic access$300(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/tags/Tagger;
    .locals 0

    .line 70
    iget-object p0, p0, Lio/grpc/internal/CensusStatsModule;->tagger:Lio/opencensus/tags/Tagger;

    return-object p0
.end method

.method static synthetic access$400(Lio/grpc/internal/CensusStatsModule;)Lcom/google/common/base/Supplier;
    .locals 0

    .line 70
    iget-object p0, p0, Lio/grpc/internal/CensusStatsModule;->stopwatchSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method static synthetic access$500(Lio/grpc/internal/CensusStatsModule;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lio/grpc/internal/CensusStatsModule;->recordStartedRpcs:Z

    return p0
.end method

.method static synthetic access$600(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/stats/StatsRecorder;
    .locals 0

    .line 70
    iget-object p0, p0, Lio/grpc/internal/CensusStatsModule;->statsRecorder:Lio/opencensus/stats/StatsRecorder;

    return-object p0
.end method

.method static synthetic access$700(Lio/grpc/internal/CensusStatsModule;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lio/grpc/internal/CensusStatsModule;->propagateTags:Z

    return p0
.end method

.method static synthetic access$800(Lio/grpc/internal/CensusStatsModule;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lio/grpc/internal/CensusStatsModule;->recordFinishedRpcs:Z

    return p0
.end method

.method static synthetic access$900()D
    .locals 2

    .line 70
    sget-wide v0, Lio/grpc/internal/CensusStatsModule;->NANOS_PER_MILLI:D

    return-wide v0
.end method

.method private recordRealTimeMetric(Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureDouble;D)V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lio/grpc/internal/CensusStatsModule;->recordRealTimeMetrics:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule;->statsRecorder:Lio/opencensus/stats/StatsRecorder;

    invoke-virtual {v0}, Lio/opencensus/stats/StatsRecorder;->newMeasureMap()Lio/opencensus/stats/MeasureMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;

    .line 166
    invoke-virtual {v0, p1}, Lio/opencensus/stats/MeasureMap;->record(Lio/opencensus/tags/TagContext;)V

    :cond_0
    return-void
.end method

.method private recordRealTimeMetric(Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureLong;J)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lio/grpc/internal/CensusStatsModule;->recordRealTimeMetrics:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule;->statsRecorder:Lio/opencensus/stats/StatsRecorder;

    invoke-virtual {v0}, Lio/opencensus/stats/StatsRecorder;->newMeasureMap()Lio/opencensus/stats/MeasureMap;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    .line 173
    invoke-virtual {v0, p1}, Lio/opencensus/stats/MeasureMap;->record(Lio/opencensus/tags/TagContext;)V

    :cond_0
    return-void
.end method


# virtual methods
.method getClientInterceptor()Lio/grpc/ClientInterceptor;
    .locals 1

    .line 160
    new-instance v0, Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;

    invoke-direct {v0, p0}, Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;-><init>(Lio/grpc/internal/CensusStatsModule;)V

    return-object v0
.end method

.method newClientCallTracer(Lio/opencensus/tags/TagContext;Ljava/lang/String;)Lio/grpc/internal/CensusStatsModule$ClientCallTracer;
    .locals 1

    .line 146
    new-instance v0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;-><init>(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Ljava/lang/String;)V

    return-object v0
.end method
