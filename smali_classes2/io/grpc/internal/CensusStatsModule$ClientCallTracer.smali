.class final Lio/grpc/internal/CensusStatsModule$ClientCallTracer;
.super Lio/grpc/ClientStreamTracer$Factory;
.source "CensusStatsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusStatsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientCallTracer"
.end annotation


# static fields
.field private static final callEndedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientCallTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final streamTracerUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientCallTracer;",
            "Lio/grpc/internal/CensusStatsModule$ClientTracer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile callEnded:I

.field private final module:Lio/grpc/internal/CensusStatsModule;

.field private final parentCtx:Lio/opencensus/tags/TagContext;

.field private final startCtx:Lio/opencensus/tags/TagContext;

.field private final stopwatch:Lcom/google/common/base/Stopwatch;

.field private volatile streamTracer:Lio/grpc/internal/CensusStatsModule$ClientTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    .line 333
    :try_start_0
    const-class v1, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;

    const-class v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    const-string v3, "streamTracer"

    .line 334
    invoke-static {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    .line 336
    const-class v2, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;

    const-string v3, "callEnded"

    .line 337
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

    .line 339
    invoke-static {}, Lio/grpc/internal/CensusStatsModule;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Creating atomic field updaters failed"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 343
    :goto_0
    sput-object v0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->streamTracerUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 344
    sput-object v1, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->callEndedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Ljava/lang/String;)V
    .locals 2

    .line 354
    invoke-direct {p0}, Lio/grpc/ClientStreamTracer$Factory;-><init>()V

    .line 355
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lio/grpc/internal/CensusStatsModule;

    iput-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    .line 356
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lio/opencensus/tags/TagContext;

    iput-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->parentCtx:Lio/opencensus/tags/TagContext;

    .line 357
    invoke-static {p3}, Lio/opencensus/tags/TagValue;->create(Ljava/lang/String;)Lio/opencensus/tags/TagValue;

    move-result-object p3

    .line 358
    invoke-static {p1}, Lio/grpc/internal/CensusStatsModule;->access$300(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/tags/Tagger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/opencensus/tags/Tagger;->toBuilder(Lio/opencensus/tags/TagContext;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object p2

    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_METHOD:Lio/opencensus/tags/TagKey;

    .line 359
    invoke-virtual {p2, v0, p3}, Lio/opencensus/tags/TagContextBuilder;->putPropagating(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/TagContextBuilder;

    .line 360
    invoke-virtual {p2}, Lio/opencensus/tags/TagContextBuilder;->build()Lio/opencensus/tags/TagContext;

    move-result-object p2

    iput-object p2, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->startCtx:Lio/opencensus/tags/TagContext;

    .line 361
    invoke-static {p1}, Lio/grpc/internal/CensusStatsModule;->access$400(Lio/grpc/internal/CensusStatsModule;)Lcom/google/common/base/Supplier;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/base/Stopwatch;

    invoke-virtual {p2}, Lcom/google/common/base/Stopwatch;->start()Lcom/google/common/base/Stopwatch;

    iput-object p2, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->stopwatch:Lcom/google/common/base/Stopwatch;

    .line 362
    invoke-static {p1}, Lio/grpc/internal/CensusStatsModule;->access$500(Lio/grpc/internal/CensusStatsModule;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 363
    invoke-static {p1}, Lio/grpc/internal/CensusStatsModule;->access$600(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/stats/StatsRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lio/opencensus/stats/StatsRecorder;->newMeasureMap()Lio/opencensus/stats/MeasureMap;

    move-result-object p1

    sget-object p2, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_STARTED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    const-wide/16 v0, 0x1

    .line 364
    invoke-virtual {p1, p2, v0, v1}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    iget-object p2, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->startCtx:Lio/opencensus/tags/TagContext;

    .line 365
    invoke-virtual {p1, p2}, Lio/opencensus/stats/MeasureMap;->record(Lio/opencensus/tags/TagContext;)V

    :cond_0
    return-void
.end method


# virtual methods
.method callEnded(Lio/grpc/Status;)V
    .locals 9

    .line 401
    sget-object v0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->callEndedUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 406
    :cond_0
    iget v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->callEnded:I

    if-eqz v0, :cond_1

    return-void

    .line 409
    :cond_1
    iput v1, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->callEnded:I

    .line 411
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    invoke-static {v0}, Lio/grpc/internal/CensusStatsModule;->access$800(Lio/grpc/internal/CensusStatsModule;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 414
    :cond_3
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->stopwatch:Lcom/google/common/base/Stopwatch;

    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 415
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->stopwatch:Lcom/google/common/base/Stopwatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 416
    iget-object v2, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->streamTracer:Lio/grpc/internal/CensusStatsModule$ClientTracer;

    if-nez v2, :cond_4

    .line 418
    new-instance v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    iget-object v3, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v4, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->startCtx:Lio/opencensus/tags/TagContext;

    invoke-direct {v2, v3, v4}, Lio/grpc/internal/CensusStatsModule$ClientTracer;-><init>(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;)V

    .line 420
    :cond_4
    iget-object v3, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    invoke-static {v3}, Lio/grpc/internal/CensusStatsModule;->access$600(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/stats/StatsRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lio/opencensus/stats/StatsRecorder;->newMeasureMap()Lio/opencensus/stats/MeasureMap;

    move-result-object v3

    sget-object v4, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_FINISHED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    const-wide/16 v5, 0x1

    .line 422
    invoke-virtual {v3, v4, v5, v6}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    sget-object v4, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    long-to-double v0, v0

    .line 426
    invoke-static {}, Lio/grpc/internal/CensusStatsModule;->access$900()D

    move-result-wide v7

    div-double/2addr v0, v7

    .line 424
    invoke-virtual {v3, v4, v0, v1}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;

    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_REQUEST_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    iget-wide v7, v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundMessageCount:J

    .line 427
    invoke-virtual {v3, v0, v7, v8}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_RESPONSE_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    iget-wide v7, v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundMessageCount:J

    .line 428
    invoke-virtual {v3, v0, v7, v8}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    iget-wide v7, v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundWireSize:J

    long-to-double v7, v7

    .line 429
    invoke-virtual {v3, v0, v7, v8}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;

    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    iget-wide v7, v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundWireSize:J

    long-to-double v7, v7

    .line 430
    invoke-virtual {v3, v0, v7, v8}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;

    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_UNCOMPRESSED_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    iget-wide v7, v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundUncompressedSize:J

    long-to-double v7, v7

    .line 431
    invoke-virtual {v3, v0, v7, v8}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;

    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_UNCOMPRESSED_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    iget-wide v1, v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundUncompressedSize:J

    long-to-double v1, v1

    .line 434
    invoke-virtual {v3, v0, v1, v2}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureDouble;D)Lio/opencensus/stats/MeasureMap;

    .line 437
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-nez v0, :cond_5

    .line 438
    sget-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_ERROR_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    invoke-virtual {v3, v0, v5, v6}, Lio/opencensus/stats/MeasureMap;->put(Lio/opencensus/stats/Measure$MeasureLong;J)Lio/opencensus/stats/MeasureMap;

    .line 440
    :cond_5
    invoke-virtual {p1}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/opencensus/tags/TagValue;->create(Ljava/lang/String;)Lio/opencensus/tags/TagValue;

    move-result-object p1

    .line 441
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    .line 443
    invoke-static {v0}, Lio/grpc/internal/CensusStatsModule;->access$300(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/tags/Tagger;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->startCtx:Lio/opencensus/tags/TagContext;

    .line 444
    invoke-virtual {v0, v1}, Lio/opencensus/tags/Tagger;->toBuilder(Lio/opencensus/tags/TagContext;)Lio/opencensus/tags/TagContextBuilder;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_STATUS:Lio/opencensus/tags/TagKey;

    .line 445
    invoke-virtual {v0, v1, p1}, Lio/opencensus/tags/TagContextBuilder;->putPropagating(Lio/opencensus/tags/TagKey;Lio/opencensus/tags/TagValue;)Lio/opencensus/tags/TagContextBuilder;

    .line 446
    invoke-virtual {v0}, Lio/opencensus/tags/TagContextBuilder;->build()Lio/opencensus/tags/TagContext;

    move-result-object p1

    .line 441
    invoke-virtual {v3, p1}, Lio/opencensus/stats/MeasureMap;->record(Lio/opencensus/tags/TagContext;)V

    return-void
.end method

.method public newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 3

    .line 372
    new-instance p1, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v1, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->startCtx:Lio/opencensus/tags/TagContext;

    invoke-direct {p1, v0, v1}, Lio/grpc/internal/CensusStatsModule$ClientTracer;-><init>(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;)V

    .line 375
    sget-object v0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->streamTracerUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v1, "Are you creating multiple streams per call? This class doesn\'t yet support this case"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 377
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 376
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_1

    .line 380
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->streamTracer:Lio/grpc/internal/CensusStatsModule$ClientTracer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 383
    iput-object p1, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->streamTracer:Lio/grpc/internal/CensusStatsModule$ClientTracer;

    .line 385
    :goto_1
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    invoke-static {v0}, Lio/grpc/internal/CensusStatsModule;->access$700(Lio/grpc/internal/CensusStatsModule;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 386
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v0, v0, Lio/grpc/internal/CensusStatsModule;->statsHeader:Lio/grpc/Metadata$Key;

    invoke-virtual {p2, v0}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 387
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    invoke-static {v0}, Lio/grpc/internal/CensusStatsModule;->access$300(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/tags/Tagger;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/tags/Tagger;->empty()Lio/opencensus/tags/TagContext;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->parentCtx:Lio/opencensus/tags/TagContext;

    invoke-virtual {v0, v1}, Lio/opencensus/tags/TagContext;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 388
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v0, v0, Lio/grpc/internal/CensusStatsModule;->statsHeader:Lio/grpc/Metadata$Key;

    iget-object v1, p0, Lio/grpc/internal/CensusStatsModule$ClientCallTracer;->parentCtx:Lio/opencensus/tags/TagContext;

    invoke-virtual {p2, v0, v1}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method
