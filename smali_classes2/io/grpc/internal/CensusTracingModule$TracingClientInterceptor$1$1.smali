.class Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1$1;
.super Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;
.source "CensusTracingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;->start(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;Lio/grpc/ClientCall$Listener;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1$1;->this$2:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;

    invoke-direct {p0, p2}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;-><init>(Lio/grpc/ClientCall$Listener;)V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 1

    .line 398
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1$1;->this$2:Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;

    iget-object v0, v0, Lio/grpc/internal/CensusTracingModule$TracingClientInterceptor$1;->val$tracerFactory:Lio/grpc/internal/CensusTracingModule$ClientCallTracer;

    invoke-virtual {v0, p1}, Lio/grpc/internal/CensusTracingModule$ClientCallTracer;->callEnded(Lio/grpc/Status;)V

    .line 399
    invoke-super {p0, p1, p2}, Lio/grpc/ForwardingClientCallListener$SimpleForwardingClientCallListener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    return-void
.end method
