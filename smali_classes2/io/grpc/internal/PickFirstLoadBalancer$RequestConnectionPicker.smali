.class final Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "PickFirstLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestConnectionPicker"
.end annotation


# instance fields
.field private final subchannel:Lio/grpc/LoadBalancer$Subchannel;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 1

    .line 134
    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    const-string v0, "subchannel"

    .line 135
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/LoadBalancer$Subchannel;

    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 0

    .line 140
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 141
    invoke-static {}, Lio/grpc/LoadBalancer$PickResult;->withNoResult()Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    return-object p1
.end method

.method public requestConnection()V
    .locals 1

    .line 146
    iget-object v0, p0, Lio/grpc/internal/PickFirstLoadBalancer$RequestConnectionPicker;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    invoke-virtual {v0}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    return-void
.end method
