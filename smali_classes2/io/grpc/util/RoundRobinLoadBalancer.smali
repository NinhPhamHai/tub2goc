.class final Lio/grpc/util/RoundRobinLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/util/RoundRobinLoadBalancer$Ref;,
        Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;,
        Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;
    }
.end annotation


# static fields
.field private static final EMPTY_OK:Lio/grpc/Status;

.field static final STATE_INFO:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/ConnectivityStateInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field static final STICKY_REF:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

.field private currentState:Lio/grpc/ConnectivityState;

.field private final helper:Lio/grpc/LoadBalancer$Helper;

.field private final random:Ljava/util/Random;

.field private stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

.field private final subchannels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/EquivalentAddressGroup;",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "state-info"

    .line 69
    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    const-string v0, "sticky-ref"

    .line 71
    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->STICKY_REF:Lio/grpc/Attributes$Key;

    .line 194
    sget-object v0, Lio/grpc/Status;->OK:Lio/grpc/Status;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    return-void
.end method

.method constructor <init>(Lio/grpc/LoadBalancer$Helper;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    .line 79
    new-instance v0, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    invoke-direct {v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    const-string v0, "helper"

    .line 85
    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/LoadBalancer$Helper;

    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 86
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->random:Ljava/util/Random;

    return-void
.end method

.method private static filterNonFailingSubchannels(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;)",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    .line 245
    invoke-static {v1}, Lio/grpc/util/RoundRobinLoadBalancer;->isReady(Lio/grpc/LoadBalancer$Subchannel;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ")",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/ConnectivityStateInfo;",
            ">;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object p0

    sget-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    invoke-virtual {p0, v0}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    return-object p0
.end method

.method static isReady(Lio/grpc/LoadBalancer$Subchannel;)Z
    .locals 1

    .line 276
    invoke-static {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object p0

    iget-object p0, p0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast p0, Lio/grpc/ConnectivityStateInfo;

    invoke-virtual {p0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object p0

    sget-object v0, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static setsDifference(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 281
    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 2

    .line 179
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->shutdown()V

    .line 180
    invoke-static {p1}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    .line 181
    invoke-static {v1}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v1

    iput-object v1, v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->remove(Lio/grpc/LoadBalancer$Subchannel;)V

    :cond_0
    return-void
.end method

.method private static stripAttrs(Ljava/util/List;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;)",
            "Ljava/util/Set<",
            "Lio/grpc/EquivalentAddressGroup;",
            ">;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 258
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    .line 259
    new-instance v2, Lio/grpc/EquivalentAddressGroup;

    invoke-virtual {v1}, Lio/grpc/EquivalentAddressGroup;->getAddresses()Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateBalancingState()V
    .locals 6

    .line 201
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/util/RoundRobinLoadBalancer;->filterNonFailingSubchannels(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    .line 205
    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    .line 206
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/LoadBalancer$Subchannel;

    .line 207
    invoke-static {v3}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object v3

    iget-object v3, v3, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast v3, Lio/grpc/ConnectivityStateInfo;

    .line 211
    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v4

    sget-object v5, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v4

    sget-object v5, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v4, v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 214
    :cond_2
    sget-object v4, Lio/grpc/util/RoundRobinLoadBalancer;->EMPTY_OK:Lio/grpc/Status;

    if-eq v1, v4, :cond_3

    invoke-virtual {v1}, Lio/grpc/Status;->isOk()Z

    move-result v4

    if-nez v4, :cond_0

    .line 215
    :cond_3
    invoke-virtual {v3}, Lio/grpc/ConnectivityStateInfo;->getStatus()Lio/grpc/Status;

    move-result-object v1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 218
    sget-object v0, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    goto :goto_1

    :cond_5
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    :goto_1
    new-instance v2, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v2, v1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    invoke-direct {p0, v0, v2}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    goto :goto_2

    .line 225
    :cond_6
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->random:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 226
    sget-object v2, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    new-instance v3, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    iget-object v4, p0, Lio/grpc/util/RoundRobinLoadBalancer;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    invoke-direct {v3, v0, v1, v4}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;-><init>(Ljava/util/List;ILio/grpc/util/RoundRobinLoadBalancer$StickinessState;)V

    invoke-direct {p0, v2, v3}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    :goto_2
    return-void
.end method

.method private updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    invoke-virtual {p2, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;->isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v0, p1, p2}, Lio/grpc/LoadBalancer$Helper;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/LoadBalancer$SubchannelPicker;)V

    .line 233
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentState:Lio/grpc/ConnectivityState;

    .line 234
    iput-object p2, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    :cond_1
    return-void
.end method


# virtual methods
.method getSubchannels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 3

    .line 159
    sget-object v0, Lio/grpc/ConnectivityState;->TRANSIENT_FAILURE:Lio/grpc/ConnectivityState;

    .line 160
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->currentPicker:Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    instance-of v2, v1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;

    invoke-direct {v1, p1}, Lio/grpc/util/RoundRobinLoadBalancer$EmptyPicker;-><init>(Lio/grpc/Status;)V

    .line 159
    :goto_0
    invoke-direct {p0, v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState(Lio/grpc/ConnectivityState;Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)V

    return-void
.end method

.method public handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
    .locals 6

    .line 91
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAddresses()Ljava/util/List;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$ResolvedAddresses;->getAttributes()Lio/grpc/Attributes;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 94
    invoke-static {v0}, Lio/grpc/util/RoundRobinLoadBalancer;->stripAttrs(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 95
    invoke-static {v0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->setsDifference(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 96
    invoke-static {v1, v0}, Lio/grpc/util/RoundRobinLoadBalancer;->setsDifference(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 98
    sget-object v1, Lio/grpc/internal/GrpcAttributes;->NAME_RESOLVER_SERVICE_CONFIG:Lio/grpc/Attributes$Key;

    invoke-virtual {p1, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_2

    .line 101
    invoke-static {p1}, Lio/grpc/internal/ServiceConfigUtil;->getStickinessMetadataKeyFromServiceConfig(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v1, "-bin"

    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    invoke-virtual {v1}, Lio/grpc/LoadBalancer$Helper;->getChannelLogger()Lio/grpc/ChannelLogger;

    move-result-object v1

    sget-object v3, Lio/grpc/ChannelLogger$ChannelLogLevel;->WARNING:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "Binary stickiness header is not supported. The header \"{0}\" will be ignored"

    invoke-virtual {v1, v3, p1, v4}, Lio/grpc/ChannelLogger;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->key:Lio/grpc/Metadata$Key;

    .line 109
    invoke-virtual {v1}, Lio/grpc/Metadata$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 110
    :cond_1
    new-instance v1, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    invoke-direct {v1, p1}, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    .line 116
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    .line 120
    invoke-static {}, Lio/grpc/Attributes;->newBuilder()Lio/grpc/Attributes$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/util/RoundRobinLoadBalancer;->STATE_INFO:Lio/grpc/Attributes$Key;

    new-instance v4, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    sget-object v5, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    .line 125
    invoke-static {v5}, Lio/grpc/ConnectivityStateInfo;->forNonError(Lio/grpc/ConnectivityState;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v5

    invoke-direct {v4, v5}, Lio/grpc/util/RoundRobinLoadBalancer$Ref;-><init>(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v2, v3, v4}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    .line 128
    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 129
    sget-object v3, Lio/grpc/util/RoundRobinLoadBalancer;->STICKY_REF:Lio/grpc/Attributes$Key;

    new-instance v5, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    invoke-direct {v5, v4}, Lio/grpc/util/RoundRobinLoadBalancer$Ref;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3, v5}, Lio/grpc/Attributes$Builder;->set(Lio/grpc/Attributes$Key;Ljava/lang/Object;)Lio/grpc/Attributes$Builder;

    move-object v4, v5

    .line 132
    :cond_3
    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer;->helper:Lio/grpc/LoadBalancer$Helper;

    .line 133
    invoke-virtual {v2}, Lio/grpc/Attributes$Builder;->build()Lio/grpc/Attributes;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lio/grpc/LoadBalancer$Helper;->createSubchannel(Lio/grpc/EquivalentAddressGroup;Lio/grpc/Attributes;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v2

    const-string v3, "subchannel"

    .line 132
    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v2, Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v4, :cond_4

    .line 135
    iput-object v2, v4, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    .line 137
    :cond_4
    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v2}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    goto :goto_1

    .line 141
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/EquivalentAddressGroup;

    .line 143
    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 148
    :cond_6
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState()V

    .line 151
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Subchannel;

    .line 152
    invoke-direct {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer;->shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public handleSubchannelState(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ConnectivityStateInfo;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->subchannels:Ljava/util/Map;

    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->getAddresses()Lio/grpc/EquivalentAddressGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0, p1}, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->remove(Lio/grpc/LoadBalancer$Subchannel;)V

    .line 171
    :cond_1
    invoke-virtual {p2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_2

    .line 172
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->requestConnection()V

    .line 174
    :cond_2
    invoke-static {p1}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannelStateInfoRef(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    move-result-object p1

    iput-object p2, p1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    .line 175
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->updateBalancingState()V

    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lio/grpc/util/RoundRobinLoadBalancer;->getSubchannels()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    .line 190
    invoke-direct {p0, v1}, Lio/grpc/util/RoundRobinLoadBalancer;->shutdownSubchannel(Lio/grpc/LoadBalancer$Subchannel;)V

    goto :goto_0

    :cond_0
    return-void
.end method
