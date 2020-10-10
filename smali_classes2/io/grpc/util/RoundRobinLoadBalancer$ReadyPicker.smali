.class final Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
.super Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReadyPicker"
.end annotation


# static fields
.field private static final indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation
.end field

.field private final stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 376
    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const-string v1, "index"

    .line 377
    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>(Ljava/util/List;ILio/grpc/util/RoundRobinLoadBalancer$StickinessState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;I",
            "Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 386
    invoke-direct {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;-><init>(Lio/grpc/util/RoundRobinLoadBalancer$1;)V

    .line 387
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 388
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    .line 389
    iput-object p3, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    add-int/lit8 p2, p2, -0x1

    .line 390
    iput p2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:I

    return-void
.end method

.method private nextSubchannel()Lio/grpc/LoadBalancer$Subchannel;
    .locals 3

    .line 410
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 411
    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 414
    rem-int v0, v1, v0

    .line 415
    sget-object v2, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    goto :goto_0

    :cond_0
    move v0, v1

    .line 417
    :goto_0
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method


# virtual methods
.method isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z
    .locals 3

    .line 427
    instance-of v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 430
    :cond_0
    check-cast p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    if-eq p1, p0, :cond_1

    .line 432
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    iget-object v2, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    .line 433
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    .line 434
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 2

    .line 396
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$PickSubchannelArgs;->getHeaders()Lio/grpc/Metadata;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    iget-object v0, v0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->key:Lio/grpc/Metadata$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Metadata;->get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 399
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    invoke-virtual {v0, p1}, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->getSubchannel(Ljava/lang/String;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 400
    invoke-static {v0}, Lio/grpc/util/RoundRobinLoadBalancer;->isReady(Lio/grpc/LoadBalancer$Subchannel;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->stickinessState:Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;

    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->nextSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->maybeRegister(Ljava/lang/String;Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    .line 406
    :cond_3
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->nextSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object p1

    return-object p1
.end method
