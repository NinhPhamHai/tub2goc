.class final Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;
.super Ljava/lang/Object;
.source "CensusStatsModule.java"

# interfaces
.implements Lio/grpc/ClientInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusStatsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StatsClientInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/CensusStatsModule;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusStatsModule;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;->this$0:Lio/grpc/internal/CensusStatsModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Channel;)Lio/grpc/ClientCall;
    .locals 3
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

    .line 687
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;->this$0:Lio/grpc/internal/CensusStatsModule;

    invoke-static {v0}, Lio/grpc/internal/CensusStatsModule;->access$300(Lio/grpc/internal/CensusStatsModule;)Lio/opencensus/tags/Tagger;

    move-result-object v0

    invoke-virtual {v0}, Lio/opencensus/tags/Tagger;->getCurrentTagContext()Lio/opencensus/tags/TagContext;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;->this$0:Lio/grpc/internal/CensusStatsModule;

    .line 689
    invoke-virtual {p1}, Lio/grpc/MethodDescriptor;->getFullMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/grpc/internal/CensusStatsModule;->newClientCallTracer(Lio/opencensus/tags/TagContext;Ljava/lang/String;)Lio/grpc/internal/CensusStatsModule$ClientCallTracer;

    move-result-object v0

    .line 691
    invoke-virtual {p2, v0}, Lio/grpc/CallOptions;->withStreamTracerFactory(Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/CallOptions;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lio/grpc/Channel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;

    move-result-object p1

    .line 692
    new-instance p2, Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor$1;

    invoke-direct {p2, p0, p1, v0}, Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor$1;-><init>(Lio/grpc/internal/CensusStatsModule$StatsClientInterceptor;Lio/grpc/ClientCall;Lio/grpc/internal/CensusStatsModule$ClientCallTracer;)V

    return-object p2
.end method
