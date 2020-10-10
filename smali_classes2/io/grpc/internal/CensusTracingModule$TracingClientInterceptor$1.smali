.class Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;
.super Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;
.source "CensusTracingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;->interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;

.field final synthetic val$tracerFactory:Lio/grpc/internal/CensusTracingModule$ClientCallTracer;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;Lio/grpc/ClientCall;Lio/grpc/internal/CensusTracingModule$ClientCallTracer;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;->this$1:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor;

    iput-object p3, p0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;->val$tracerFactory:Lio/grpc/internal/CensusTracingModule$ClientCallTracer;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;-><init>(Lio/grpc/ClientCall;)V

    return-void
.end method


# virtual methods
.method public start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Metadata;",
            ")V"
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->delegate()Lio/grpc/ClientCall;

    move-result-object v0

    new-instance v1, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1$1;-><init>(Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;Lio/grpc/ClientCall$Listener;)V

    invoke-virtual {v0, v1, p2}, Lio/grpc/ClientCall;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V

    return-void
.end method
