.class final Lio/grpc/internal/CensusTracingModule$ServerTracerFactory;
.super Lio/grpc/ServerStreamTracer$Factory;
.source "CensusTracingModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/CensusTracingModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServerTracerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/CensusTracingModule;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusTracingModule;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$ServerTracerFactory;->this$0:Lio/grpc/internal/CensusTracingModule;

    invoke-direct {p0}, Lio/grpc/ServerStreamTracer$Factory;-><init>()V

    return-void
.end method
