.class final Lio/grpc/internal/PickFirstLoadBalancer$Picker;
.super Lio/grpc/LoadBalancer$SubchannelPicker;
.source "PickFirstLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/PickFirstLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Picker"
.end annotation


# instance fields
.field private final result:Lio/grpc/LoadBalancer$PickResult;


# direct methods
.method constructor <init>(Lio/grpc/LoadBalancer$PickResult;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Lio/grpc/LoadBalancer$SubchannelPicker;-><init>()V

    const-string v0, "result"

    .line 121
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/LoadBalancer$PickResult;

    iput-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$Picker;->result:Lio/grpc/LoadBalancer$PickResult;

    return-void
.end method


# virtual methods
.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 0

    .line 126
    iget-object p1, p0, Lio/grpc/internal/PickFirstLoadBalancer$Picker;->result:Lio/grpc/LoadBalancer$PickResult;

    return-object p1
.end method
