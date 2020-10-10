.class abstract Lio/grpc/internal/AbstractSubchannel;
.super Lio/grpc/LoadBalancer$Subchannel;
.source "AbstractSubchannel.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/grpc/LoadBalancer$Subchannel;-><init>()V

    return-void
.end method


# virtual methods
.method abstract obtainActiveTransport()Lio/grpc/internal/ClientTransport;
.end method
