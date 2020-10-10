.class final Lio/grpc/internal/CensusTracingModule$ClientTracer;
.super Lio/grpc/ClientStreamTracer;
.source "CensusTracingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusTracingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientTracer"
.end annotation


# instance fields
.field private final span:Lio/opencensus/trace/Span;


# direct methods
.method constructor <init>(Lio/opencensus/trace/Span;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    const-string v0, "span"

    .line 279
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/opencensus/trace/Span;

    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$ClientTracer;->span:Lio/opencensus/trace/Span;

    return-void
.end method


# virtual methods
.method public inboundMessageRead(IJJ)V
    .locals 7

    .line 292
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$ClientTracer;->span:Lio/opencensus/trace/Span;

    sget-object v1, Lio/opencensus/trace/MessageEvent$Type;->RECEIVED:Lio/opencensus/trace/MessageEvent$Type;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lio/grpc/internal/CensusTracingModule;->access$400(Lio/opencensus/trace/Span;Lio/opencensus/trace/MessageEvent$Type;IJJ)V

    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 7

    .line 285
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$ClientTracer;->span:Lio/opencensus/trace/Span;

    sget-object v1, Lio/opencensus/trace/MessageEvent$Type;->SENT:Lio/opencensus/trace/MessageEvent$Type;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lio/grpc/internal/CensusTracingModule;->access$400(Lio/opencensus/trace/Span;Lio/opencensus/trace/MessageEvent$Type;IJJ)V

    return-void
.end method
