.class final Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;
.super Ljava/lang/Object;
.source "CensusTracingModule.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusTracingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TracingClientInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/CensusTracingModule;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusTracingModule;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;->this$0:Lio/grpc/internal/CensusTracingModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Channel;",
            ")",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;->this$0:Lio/grpc/internal/CensusTracingModule;

    .line 386
    invoke-static {}, Lio/grpc/Context;->current()Lio/grpc/Context;

    move-result-object v1

    invoke-static {v1}, Lio/opencensus/trace/unsafe/ContextUtils;->getValue(Lio/grpc/Context;)Lio/opencensus/trace/Span;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lio/grpc/internal/CensusTracingModule;->newClientCallTracer(Lio/opencensus/trace/Span;Lio/grpc/MethodDescriptor;)Lio/grpc/internal/CensusTracingModule$ClientCallTracer;

    move-result-object v0

    .line 390
    invoke-virtual {p2, v0}, Lio/grpc/CallOptions;->withStreamTracerFactory(Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/CallOptions;

    move-result-object p2

    .line 388
    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object p1

    .line 391
    new-instance p2, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;

    invoke-direct {p2, p0, p1, v0}, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;-><init>(Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;Lio/grpc/ClientCall;Lio/grpc/internal/CensusTracingModule$ClientCallTracer;)V

    return-object p2
.end method
