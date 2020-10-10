.class final Lio/grpc/internal/CensusTracingModule$ClientCallTracer;
.super Lio/grpc/ClientStreamTracer$Factory;
.source "CensusTracingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusTracingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ClientCallTracer"
.end annotation


# instance fields
.field volatile callEnded:I

.field private final isSampledToLocalTracing:Z

.field private final span:Lio/opencensus/trace/Span;

.field final synthetic this$0:Lio/grpc/internal/CensusTracingModule;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusTracingModule;Lio/opencensus/trace/Span;Lio/grpc/MethodDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/opencensus/trace/Span;",
            "Lio/grpc/MethodDescriptor<",
            "**>;)V"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->this$0:Lio/grpc/internal/CensusTracingModule;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer$Factory;-><init>()V

    const-string v0, "method"

    .line 233
    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {p3}, Lio/grpc/MethodDescriptor;->isSampledToLocalTracing()Z

    move-result v0

    iput-boolean v0, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->isSampledToLocalTracing:Z

    .line 236
    invoke-static {p1}, Lio/grpc/internal/CensusTracingModule;->access$100(Lio/grpc/internal/CensusTracingModule;)Lio/opencensus/trace/Tracer;

    move-result-object p1

    .line 238
    invoke-virtual {p3}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0, p3}, Lio/grpc/internal/CensusTracingModule;->generateTraceSpanName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 237
    invoke-virtual {p1, p3, p2}, Lio/opencensus/trace/Tracer;->spanBuilderWithExplicitParent(Ljava/lang/String;Lio/opencensus/trace/Span;)Lio/opencensus/trace/SpanBuilder;

    move-result-object p1

    const/4 p2, 0x1

    .line 240
    invoke-virtual {p1, p2}, Lio/opencensus/trace/SpanBuilder;->setRecordEvents(Z)Lio/opencensus/trace/SpanBuilder;

    .line 241
    invoke-virtual {p1}, Lio/opencensus/trace/SpanBuilder;->startSpan()Lio/opencensus/trace/Span;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->span:Lio/opencensus/trace/Span;

    return-void
.end method


# virtual methods
.method callEnded(Lio/grpc/Status;)V
    .locals 2

    .line 261
    invoke-static {}, Lio/grpc/internal/CensusTracingModule;->access$200()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 262
    invoke-static {}, Lio/grpc/internal/CensusTracingModule;->access$200()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndSet(Ljava/lang/Object;I)I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 266
    :cond_0
    iget v0, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->callEnded:I

    if-eqz v0, :cond_1

    return-void

    .line 269
    :cond_1
    iput v1, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->callEnded:I

    .line 271
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->span:Lio/opencensus/trace/Span;

    iget-boolean v1, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->isSampledToLocalTracing:Z

    invoke-static {p1, v1}, Lio/grpc/internal/CensusTracingModule;->access$300(Lio/grpc/Status;Z)Lio/opencensus/trace/EndSpanOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/opencensus/trace/Span;->end(Lio/opencensus/trace/EndSpanOptions;)V

    return-void
.end method

.method public newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 1

    .line 247
    iget-object p1, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->span:Lio/opencensus/trace/Span;

    sget-object v0, Lio/opencensus/trace/BlankSpan;->INSTANCE:Lio/opencensus/trace/BlankSpan;

    if-eq p1, v0, :cond_0

    .line 248
    iget-object p1, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->this$0:Lio/grpc/internal/CensusTracingModule;

    iget-object p1, p1, Lio/grpc/internal/CensusTracingModule;->tracingHeader:Lio/grpc/Metadata$Key;

    invoke-virtual {p2, p1}, Lio/grpc/Metadata;->discardAll(Lio/grpc/Metadata$Key;)V

    .line 249
    iget-object p1, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->this$0:Lio/grpc/internal/CensusTracingModule;

    iget-object p1, p1, Lio/grpc/internal/CensusTracingModule;->tracingHeader:Lio/grpc/Metadata$Key;

    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->span:Lio/opencensus/trace/Span;

    invoke-virtual {v0}, Lio/opencensus/trace/Span;->getContext()Lio/opencensus/trace/SpanContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lio/grpc/Metadata;->put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V

    .line 251
    :cond_0
    new-instance p1, Lio/grpc/internal/CensusTracingModule$ClientTracer;

    iget-object p2, p0, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->span:Lio/opencensus/trace/Span;

    invoke-direct {p1, p2}, Lio/grpc/internal/CensusTracingModule$ClientTracer;-><init>(Lio/opencensus/trace/Span;)V

    return-object p1
.end method
