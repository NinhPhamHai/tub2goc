.class final Lio/grpc/internal/CensusStatsModule$ClientTracer;
.super Lio/grpc/ClientStreamTracer;
.source "CensusStatsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusStatsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientTracer"
.end annotation


# static fields
.field private static final inboundMessageCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final inboundUncompressedSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final inboundWireSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final outboundMessageCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final outboundUncompressedSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientTracer;",
            ">;"
        }
    .end annotation
.end field

.field private static final outboundWireSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/grpc/internal/CensusStatsModule$ClientTracer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile inboundMessageCount:J

.field volatile inboundUncompressedSize:J

.field volatile inboundWireSize:J

.field private final module:Lio/grpc/internal/CensusStatsModule;

.field volatile outboundMessageCount:J

.field volatile outboundUncompressedSize:J

.field volatile outboundWireSize:J

.field private final startCtx:Lio/opencensus/tags/TagContext;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    .line 203
    :try_start_0
    const-class v1, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    const-string v2, "outboundMessageCount"

    .line 204
    invoke-static {v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    .line 205
    const-class v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    const-string v3, "inboundMessageCount"

    .line 206
    invoke-static {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v2

    .line 207
    const-class v3, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    const-string v4, "outboundWireSize"

    .line 208
    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v3

    .line 209
    const-class v4, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    const-string v5, "inboundWireSize"

    .line 210
    invoke-static {v4, v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v4

    .line 211
    const-class v5, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    const-string v6, "outboundUncompressedSize"

    .line 212
    invoke-static {v5, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v5

    .line 213
    const-class v6, Lio/grpc/internal/CensusStatsModule$ClientTracer;

    const-string v7, "inboundUncompressedSize"

    .line 214
    invoke-static {v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_0

    :catch_0
    move-exception v1

    .line 216
    invoke-static {}, Lio/grpc/internal/CensusStatsModule;->access$000()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Creating atomic field updaters failed"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    .line 224
    :goto_0
    sput-object v0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundMessageCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 225
    sput-object v2, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundMessageCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 226
    sput-object v3, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundWireSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 227
    sput-object v4, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundWireSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 228
    sput-object v5, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundUncompressedSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 229
    sput-object v1, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundUncompressedSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method constructor <init>(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;)V
    .locals 1

    .line 242
    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    const-string v0, "module"

    .line 243
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/internal/CensusStatsModule;

    iput-object p1, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->module:Lio/grpc/internal/CensusStatsModule;

    const-string p1, "startCtx"

    .line 244
    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lio/opencensus/tags/TagContext;

    iput-object p2, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->startCtx:Lio/opencensus/tags/TagContext;

    return-void
.end method


# virtual methods
.method public inboundMessage(I)V
    .locals 4

    .line 294
    sget-object p1, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundMessageCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    goto :goto_0

    .line 297
    :cond_0
    iget-wide v2, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundMessageCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundMessageCount:J

    .line 299
    :goto_0
    iget-object p1, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v2, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->startCtx:Lio/opencensus/tags/TagContext;

    sget-object v3, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->GRPC_CLIENT_RECEIVED_MESSAGES_PER_METHOD:Lio/opencensus/stats/Measure$MeasureLong;

    invoke-static {p1, v2, v3, v0, v1}, Lio/grpc/internal/CensusStatsModule;->access$200(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureLong;J)V

    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 2

    .line 284
    sget-object v0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundUncompressedSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    goto :goto_0

    .line 287
    :cond_0
    iget-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundUncompressedSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundUncompressedSize:J

    :goto_0
    return-void
.end method

.method public inboundWireSize(J)V
    .locals 3

    .line 262
    sget-object v0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundWireSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    goto :goto_0

    .line 265
    :cond_0
    iget-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundWireSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->inboundWireSize:J

    .line 267
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v1, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->startCtx:Lio/opencensus/tags/TagContext;

    sget-object v2, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->GRPC_CLIENT_RECEIVED_BYTES_PER_METHOD:Lio/opencensus/stats/Measure$MeasureDouble;

    long-to-double p1, p1

    invoke-static {v0, v1, v2, p1, p2}, Lio/grpc/internal/CensusStatsModule;->access$100(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureDouble;D)V

    return-void
.end method

.method public outboundMessage(I)V
    .locals 4

    .line 306
    sget-object p1, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundMessageCountUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    goto :goto_0

    .line 309
    :cond_0
    iget-wide v2, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundMessageCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundMessageCount:J

    .line 311
    :goto_0
    iget-object p1, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v2, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->startCtx:Lio/opencensus/tags/TagContext;

    sget-object v3, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->GRPC_CLIENT_SENT_MESSAGES_PER_METHOD:Lio/opencensus/stats/Measure$MeasureLong;

    invoke-static {p1, v2, v3, v0, v1}, Lio/grpc/internal/CensusStatsModule;->access$200(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureLong;J)V

    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 2

    .line 274
    sget-object v0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundUncompressedSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    goto :goto_0

    .line 277
    :cond_0
    iget-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundUncompressedSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundUncompressedSize:J

    :goto_0
    return-void
.end method

.method public outboundWireSize(J)V
    .locals 3

    .line 250
    sget-object v0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundWireSizeUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndAdd(Ljava/lang/Object;J)J

    goto :goto_0

    .line 253
    :cond_0
    iget-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundWireSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->outboundWireSize:J

    .line 255
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->module:Lio/grpc/internal/CensusStatsModule;

    iget-object v1, p0, Lio/grpc/internal/CensusStatsModule$ClientTracer;->startCtx:Lio/opencensus/tags/TagContext;

    sget-object v2, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->GRPC_CLIENT_SENT_BYTES_PER_METHOD:Lio/opencensus/stats/Measure$MeasureDouble;

    long-to-double p1, p1

    invoke-static {v0, v1, v2, p1, p2}, Lio/grpc/internal/CensusStatsModule;->access$100(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/TagContext;Lio/opencensus/stats/Measure$MeasureDouble;D)V

    return-void
.end method
