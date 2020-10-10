.class final Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UncommittedRetriableStreamsRegistry"
.end annotation


# instance fields
.field final lock:Ljava/lang/Object;

.field shutdownStatus:Lio/grpc/Status;

.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;

.field uncommittedRetriableStreams:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lio/grpc/internal/ClientStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0

    .line 956
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 959
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    .line 961
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ManagedChannelImpl;Lio/grpc/internal/ManagedChannelImpl$1;)V
    .locals 0

    .line 956
    invoke-direct {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;-><init>(Lio/grpc/internal/ManagedChannelImpl;)V

    return-void
.end method


# virtual methods
.method add(Lio/grpc/internal/RetriableStream;)Lio/grpc/Status;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/RetriableStream<",
            "*>;)",
            "Lio/grpc/Status;"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1008
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 1009
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    monitor-exit v0

    return-object p1

    .line 1011
    :cond_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 1012
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1013
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onShutdown(Lio/grpc/Status;)V
    .locals 2

    .line 969
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 970
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    if-eqz v1, :cond_0

    .line 971
    monitor-exit v0

    return-void

    .line 973
    :cond_0
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    .line 977
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    .line 980
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 983
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->shutdown(Lio/grpc/Status;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 980
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method onShutdownNow(Lio/grpc/Status;)V
    .locals 3

    .line 988
    invoke-virtual {p0, p1}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->onShutdown(Lio/grpc/Status;)V

    .line 991
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 992
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 993
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/ClientStream;

    .line 996
    invoke-interface {v1, p1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    goto :goto_0

    .line 998
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->shutdownNow(Lio/grpc/Status;)V

    return-void

    :catchall_0
    move-exception p1

    .line 993
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method remove(Lio/grpc/internal/RetriableStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/RetriableStream<",
            "*>;)V"
        }
    .end annotation

    .line 1019
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1021
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1022
    iget-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->shutdownStatus:Lio/grpc/Status;

    .line 1025
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->uncommittedRetriableStreams:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1027
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 1030
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/internal/DelayedClientTransport;->shutdown(Lio/grpc/Status;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 1027
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
