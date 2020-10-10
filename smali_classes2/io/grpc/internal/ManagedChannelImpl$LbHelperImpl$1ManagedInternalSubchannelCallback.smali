.class final Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;
.super Lio/grpc/internal/InternalSubchannel$Callback;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->createSubchannel(Ljava/util/List;Lio/grpc/Attributes;)Lio/grpc/internal/AbstractSubchannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ManagedInternalSubchannelCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

.field final synthetic val$subchannel:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1061
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->val$subchannel:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    invoke-direct {p0}, Lio/grpc/internal/InternalSubchannel$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method onInUse(Lio/grpc/internal/InternalSubchannel;)V
    .locals 2

    .line 1081
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    return-void
.end method

.method onNotInUse(Lio/grpc/internal/InternalSubchannel;)V
    .locals 2

    .line 1086
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    return-void
.end method

.method onStateChange(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 1

    .line 1072
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    invoke-static {p1, p2}, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->access$4600(Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;Lio/grpc/ConnectivityStateInfo;)V

    .line 1074
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4000(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1075
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object p1, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->lb:Lio/grpc/LoadBalancer;

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->val$subchannel:Lio/grpc/internal/ManagedChannelImpl$SubchannelImpl;

    invoke-virtual {p1, v0, p2}, Lio/grpc/LoadBalancer;->handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V

    :cond_0
    return-void
.end method

.method onTerminated(Lio/grpc/internal/InternalSubchannel;)V
    .locals 1

    .line 1065
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1066
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/InternalChannelz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/InternalChannelz;->removeSubchannel(Lio/grpc/InternalInstrumented;)V

    .line 1067
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl$1ManagedInternalSubchannelCallback;->this$1:Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;

    iget-object p1, p1, Lio/grpc/internal/ManagedChannelImpl$LbHelperImpl;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {p1}, Lio/grpc/internal/ManagedChannelImpl;->access$4500(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method
