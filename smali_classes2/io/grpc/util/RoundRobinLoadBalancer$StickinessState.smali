.class final Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;
.super Ljava/lang/Object;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StickinessState"
.end annotation


# instance fields
.field final evictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final key:Lio/grpc/Metadata$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final stickinessMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "Lio/grpc/util/RoundRobinLoadBalancer$Ref<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->stickinessMap:Ljava/util/concurrent/ConcurrentMap;

    .line 304
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->evictionQueue:Ljava/util/Queue;

    .line 307
    sget-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    invoke-static {p1, v0}, Lio/grpc/Metadata$Key;->of(Ljava/lang/String;Lio/grpc/Metadata$AsciiMarshaller;)Lio/grpc/Metadata$Key;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->key:Lio/grpc/Metadata$Key;

    return-void
.end method

.method private addToEvictionQueue(Ljava/lang/String;)V
    .locals 2

    .line 343
    :goto_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->stickinessMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 344
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->stickinessMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method getSubchannel(Ljava/lang/String;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 1

    .line 361
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->stickinessMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    if-eqz p1, :cond_0

    .line 363
    iget-object p1, p1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast p1, Lio/grpc/LoadBalancer$Subchannel;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method maybeRegister(Ljava/lang/String;Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$Subchannel;
    .locals 4

    .line 318
    invoke-virtual {p2}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object v0

    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer;->STICKY_REF:Lio/grpc/Attributes$Key;

    invoke-virtual {v0, v1}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    .line 320
    :cond_0
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->stickinessMap:Ljava/util/concurrent/ConcurrentMap;

    .line 321
    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    if-nez v1, :cond_1

    .line 324
    invoke-direct {p0, p1}, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->addToEvictionQueue(Ljava/lang/String;)V

    return-object p2

    .line 328
    :cond_1
    iget-object v2, v1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    check-cast v2, Lio/grpc/LoadBalancer$Subchannel;

    if-eqz v2, :cond_2

    .line 329
    invoke-static {v2}, Lio/grpc/util/RoundRobinLoadBalancer;->isReady(Lio/grpc/LoadBalancer$Subchannel;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 334
    :cond_2
    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$StickinessState;->stickinessMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p2
.end method

.method remove(Lio/grpc/LoadBalancer$Subchannel;)V
    .locals 1

    .line 353
    invoke-virtual {p1}, Lio/grpc/LoadBalancer$Subchannel;->getAttributes()Lio/grpc/Attributes;

    move-result-object p1

    sget-object v0, Lio/grpc/util/RoundRobinLoadBalancer;->STICKY_REF:Lio/grpc/Attributes$Key;

    invoke-virtual {p1, v0}, Lio/grpc/Attributes;->get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;

    const/4 v0, 0x0

    iput-object v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$Ref;->value:Ljava/lang/Object;

    return-void
.end method
