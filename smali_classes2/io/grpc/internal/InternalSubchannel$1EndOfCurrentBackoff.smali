.class Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->scheduleBackoff(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EndOfCurrentBackoff"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 289
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$200(Lio/grpc/internal/InternalSubchannel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/grpc/internal/InternalSubchannel;->access$302(Lio/grpc/internal/InternalSubchannel;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 291
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$400(Lio/grpc/internal/InternalSubchannel;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$900(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    return-void

    .line 296
    :cond_0
    :try_start_2
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$500(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ChannelLoggerImpl;

    move-result-object v1

    sget-object v2, Lio/grpc/ChannelLogger$ChannelLogLevel;->INFO:Lio/grpc/ChannelLogger$ChannelLogLevel;

    const-string v3, "CONNECTING after backoff"

    invoke-virtual {v1, v2, v3}, Lio/grpc/internal/ChannelLoggerImpl;->log(Lio/grpc/ChannelLogger$ChannelLogLevel;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    sget-object v2, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    invoke-static {v1, v2}, Lio/grpc/internal/InternalSubchannel;->access$600(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityState;)V

    .line 298
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$700(Lio/grpc/internal/InternalSubchannel;)V

    .line 299
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 303
    :try_start_4
    invoke-static {}, Lio/grpc/internal/InternalSubchannel;->access$800()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception handling end of backoff"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 305
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$900(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext;->drain()V

    return-void

    :goto_1
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$1EndOfCurrentBackoff;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$900(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/SynchronizationContext;->drain()V

    throw v0
.end method
