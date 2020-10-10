.class Lio/grpc/internal/GrpcUtil$5;
.super Ljava/lang/Object;
.source "GrpcUtil.java"

# interfaces
.implements Lio/grpc/internal/ClientTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/GrpcUtil;->getTransportFromPickResult(Lio/grpc/LoadBalancer$PickResult;Z)Lio/grpc/internal/ClientTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

.field final synthetic val$transport:Lio/grpc/internal/ClientTransport;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientTransport;Lio/grpc/ClientStreamTracer$Factory;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lio/grpc/internal/GrpcUtil$5;->val$transport:Lio/grpc/internal/ClientTransport;

    iput-object p2, p0, Lio/grpc/internal/GrpcUtil$5;->val$streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogId()Lio/grpc/InternalLogId;
    .locals 1

    .line 716
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$5;->val$transport:Lio/grpc/internal/ClientTransport;

    invoke-interface {v0}, Lio/grpc/InternalWithLogId;->getLogId()Lio/grpc/InternalLogId;

    move-result-object v0

    return-object v0
.end method

.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/CallOptions;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 705
    iget-object v0, p0, Lio/grpc/internal/GrpcUtil$5;->val$transport:Lio/grpc/internal/ClientTransport;

    iget-object v1, p0, Lio/grpc/internal/GrpcUtil$5;->val$streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    .line 706
    invoke-virtual {p3, v1}, Lio/grpc/CallOptions;->withStreamTracerFactory(Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/CallOptions;

    move-result-object p3

    .line 705
    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;)Lio/grpc/internal/ClientStream;

    move-result-object p1

    return-object p1
.end method
