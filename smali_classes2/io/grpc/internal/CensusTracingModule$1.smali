.class Lio/grpc/internal/CensusTracingModule$1;
.super Ljava/lang/Object;
.source "CensusTracingModule.java"

# interfaces
.implements Lio/grpc/Metadata$BinaryMarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/CensusTracingModule;-><init>(Lio/opencensus/trace/Tracer;Lio/opencensus/trace/propagation/BinaryFormat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/Metadata$BinaryMarshaller<",
        "Lio/opencensus/trace/SpanContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/CensusTracingModule;

.field final synthetic val$censusPropagationBinaryFormat:Lio/opencensus/trace/propagation/BinaryFormat;


# direct methods
.method constructor <init>(Lio/grpc/internal/CensusTracingModule;Lio/opencensus/trace/propagation/BinaryFormat;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lio/grpc/internal/CensusTracingModule$1;->this$0:Lio/grpc/internal/CensusTracingModule;

    iput-object p2, p0, Lio/grpc/internal/CensusTracingModule$1;->val$censusPropagationBinaryFormat:Lio/opencensus/trace/propagation/BinaryFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parseBytes([B)Lio/opencensus/trace/SpanContext;
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$1;->val$censusPropagationBinaryFormat:Lio/opencensus/trace/propagation/BinaryFormat;

    invoke-virtual {v0, p1}, Lio/opencensus/trace/propagation/BinaryFormat;->fromByteArray([B)Lio/opencensus/trace/SpanContext;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    invoke-static {}, Lio/grpc/internal/CensusTracingModule;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Failed to parse tracing header"

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    sget-object p1, Lio/opencensus/trace/SpanContext;->INVALID:Lio/opencensus/trace/SpanContext;

    return-object p1
.end method

.method public bridge synthetic parseBytes([B)Ljava/lang/Object;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lio/grpc/internal/CensusTracingModule$1;->parseBytes([B)Lio/opencensus/trace/SpanContext;

    move-result-object p1

    return-object p1
.end method

.method public toBytes(Lio/opencensus/trace/SpanContext;)[B
    .locals 1

    .line 103
    iget-object v0, p0, Lio/grpc/internal/CensusTracingModule$1;->val$censusPropagationBinaryFormat:Lio/opencensus/trace/propagation/BinaryFormat;

    invoke-virtual {v0, p1}, Lio/opencensus/trace/propagation/BinaryFormat;->toByteArray(Lio/opencensus/trace/SpanContext;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toBytes(Ljava/lang/Object;)[B
    .locals 0

    .line 100
    check-cast p1, Lio/opencensus/trace/SpanContext;

    invoke-virtual {p0, p1}, Lio/grpc/internal/CensusTracingModule$1;->toBytes(Lio/opencensus/trace/SpanContext;)[B

    move-result-object p1

    return-object p1
.end method
