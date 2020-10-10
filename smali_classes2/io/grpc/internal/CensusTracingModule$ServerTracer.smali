.class final Lio/grpc/internal/CensusTracingModule$ServerTracer;
.super Lio/grpc/ServerStreamTracer;
.source "CensusTracingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusTracingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerTracer"
.end annotation


# instance fields
.field volatile isSampledToLocalTracing:Z

.field private final span:Lio/opencensus/trace/Span;

.field volatile streamClosed:I


# virtual methods
.method public inboundMessageRead(IJJ)V
    .locals 7

    .line 358
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$ServerTracer;->span:Lio/opencensus/trace/Span;

    sget-object v1, Lio/opencensus/trace/MessageEvent$Type;->RECEIVED:Lio/opencensus/trace/MessageEvent$Type;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lio/grpc/internal/CensusTracingModule;->access$400(Lio/opencensus/trace/Span;Lio/opencensus/trace/MessageEvent$Type;IJJ)V

    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 7

    .line 351
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$ServerTracer;->span:Lio/opencensus/trace/Span;

    sget-object v1, Lio/opencensus/trace/MessageEvent$Type;->SENT:Lio/opencensus/trace/MessageEvent$Type;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lio/grpc/internal/CensusTracingModule;->access$400(Lio/opencensus/trace/Span;Lio/opencensus/trace/MessageEvent$Type;IJJ)V

    return-void
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 2

    .line 327
    invoke-static {}, Lio/grpc/internal/CensusTracingModule;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 328
    invoke-static {}, Lio/grpc/internal/CensusTracingModule;->access$500()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 332
    :cond_0
    iget v0, p0, Lio/grpc/internal/CensusTracingModule$ServerTracer;->streamClosed:I

    if-eqz v0, :cond_1

    return-void

    .line 335
    :cond_1
    iput v1, p0, Lio/grpc/internal/CensusTracingModule$ServerTracer;->streamClosed:I

    .line 337
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$ServerTracer;->span:Lio/opencensus/trace/Span;

    iget-boolean v1, p0, Lio/grpc/internal/CensusTracingModule$ServerTracer;->isSampledToLocalTracing:Z

    invoke-static {p1, v1}, Lio/grpc/internal/CensusTracingModule;->access$300(Lio/grpc/Status;Z)Lio/opencensus/trace/EndSpanOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/opencensus/trace/Span;->end(Lio/opencensus/trace/EndSpanOptions;)V

    return-void
.end method
