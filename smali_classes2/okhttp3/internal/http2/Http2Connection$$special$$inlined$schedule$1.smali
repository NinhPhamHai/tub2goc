.class public final Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;
.super Lokhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/http2/Http2Connection;-><init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TaskQueue.kt\nokhttp3/internal/concurrent/TaskQueue$schedule$2\n+ 2 Http2Connection.kt\nokhttp3/internal/http2/Http2Connection\n*L\n1#1,217:1\n152#2,14:218\n*E\n"
.end annotation


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $pingIntervalNanos$inlined:J

.field final synthetic this$0:Lokhttp3/internal/http2/Http2Connection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lokhttp3/internal/http2/Http2Connection;J)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$name:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    iput-wide p4, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    const/4 p1, 0x0

    const/4 p3, 0x2

    const/4 p4, 0x0

    .line 83
    invoke-direct {p0, p2, p1, p3, p4}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 9

    .line 218
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPongsReceived$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v1

    iget-object v3, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v3}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-gez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-static {v1}, Lokhttp3/internal/http2/Http2Connection;->access$getIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;)J

    move-result-wide v2

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    invoke-static {v1, v2, v3}, Lokhttp3/internal/http2/Http2Connection;->access$setIntervalPingsSent$p(Lokhttp3/internal/http2/Http2Connection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .line 218
    :goto_0
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 227
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lokhttp3/internal/http2/Http2Connection;->access$failConnection(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 230
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->this$0:Lokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, v6, v5, v6}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    .line 231
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection$$special$$inlined$schedule$1;->$pingIntervalNanos$inlined:J

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v1

    .line 218
    monitor-exit v0

    throw v1
.end method