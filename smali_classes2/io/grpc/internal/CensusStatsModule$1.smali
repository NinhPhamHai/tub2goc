.class Lio/grpc/internal/CensusStatsModule$1;
.super Ljava/lang/Object;
.source "CensusStatsModule.java"

# interfaces
.implements Lio/grpc/Metadata$BinaryMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CensusStatsModule;-><init>(Lio/opencensus/tags/Tagger;Lio/opencensus/tags/propagation/TagContextBinarySerializer;Lio/opencensus/stats/StatsRecorder;Lcom/google/common/base/Supplier;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/Metadata$BinaryMarshaller<",
        "Lio/opencensus/tags/TagContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/CensusStatsModule;

.field final synthetic val$tagCtxSerializer:Lio/opencensus/tags/propagation/TagContextBinarySerializer;

.field final synthetic val$tagger:Lio/opencensus/tags/Tagger;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusStatsModule;Lio/opencensus/tags/propagation/TagContextBinarySerializer;Lio/opencensus/tags/Tagger;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lio/grpc/internal/CensusStatsModule$1;->this$0:Lio/grpc/internal/CensusStatsModule;

    iput-object p2, p0, Lio/grpc/internal/CensusStatsModule$1;->val$tagCtxSerializer:Lio/opencensus/tags/propagation/TagContextBinarySerializer;

    iput-object p3, p0, Lio/grpc/internal/CensusStatsModule$1;->val$tagger:Lio/opencensus/tags/Tagger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseBytes([B)Lio/opencensus/tags/TagContext;
    .locals 3

    .line 131
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$1;->val$tagCtxSerializer:Lio/opencensus/tags/propagation/TagContextBinarySerializer;

    invoke-virtual {v0, p1}, Lio/opencensus/tags/propagation/TagContextBinarySerializer;->fromByteArray([B)Lio/opencensus/tags/TagContext;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 133
    invoke-static {}, Lio/grpc/internal/CensusStatsModule;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Failed to parse stats header"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    iget-object p1, p0, Lio/grpc/internal/CensusStatsModule$1;->val$tagger:Lio/opencensus/tags/Tagger;

    invoke-virtual {p1}, Lio/opencensus/tags/Tagger;->empty()Lio/opencensus/tags/TagContext;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic parseBytes([B)Ljava/lang/Object;
    .locals 0

    .line 116
    invoke-virtual {p0, p1}, Lio/grpc/internal/CensusStatsModule$1;->parseBytes([B)Lio/opencensus/tags/TagContext;

    move-result-object p1

    return-object p1
.end method

.method public toBytes(Lio/opencensus/tags/TagContext;)[B
    .locals 1

    .line 122
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CensusStatsModule$1;->val$tagCtxSerializer:Lio/opencensus/tags/propagation/TagContextBinarySerializer;

    invoke-virtual {v0, p1}, Lio/opencensus/tags/propagation/TagContextBinarySerializer;->toByteArray(Lio/opencensus/tags/TagContext;)[B

    move-result-object p1
    :try_end_0
    .catch Lio/opencensus/tags/propagation/TagContextSerializationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic toBytes(Ljava/lang/Object;)[B
    .locals 0

    .line 116
    check-cast p1, Lio/opencensus/tags/TagContext;

    invoke-virtual {p0, p1}, Lio/grpc/internal/CensusStatsModule$1;->toBytes(Lio/opencensus/tags/TagContext;)[B

    move-result-object p1

    return-object p1
.end method
