.class public final Lio/grpc/internal/DeprecatedCensusConstants;
.super Ljava/lang/Object;
.source "DeprecatedCensusConstants.java"


# static fields
.field public static final RPC_CLIENT_ERROR_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_CLIENT_FINISHED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_CLIENT_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_CLIENT_REQUEST_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_CLIENT_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_CLIENT_RESPONSE_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_CLIENT_SERVER_ELAPSED_TIME:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_CLIENT_STARTED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_CLIENT_UNCOMPRESSED_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_CLIENT_UNCOMPRESSED_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_METHOD:Lio/opencensus/tags/TagKey;

.field public static final RPC_SERVER_ERROR_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_SERVER_FINISHED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_SERVER_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_SERVER_REQUEST_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_SERVER_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_SERVER_RESPONSE_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_SERVER_SERVER_ELAPSED_TIME:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_SERVER_SERVER_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_SERVER_STARTED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

.field public static final RPC_SERVER_UNCOMPRESSED_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_SERVER_UNCOMPRESSED_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

.field public static final RPC_STATUS:Lio/opencensus/tags/TagKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_STATUS:Lio/opencensus/tags/TagKey;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_STATUS:Lio/opencensus/tags/TagKey;

    .line 31
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_METHOD:Lio/opencensus/tags/TagKey;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_METHOD:Lio/opencensus/tags/TagKey;

    .line 33
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_ERROR_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_ERROR_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 35
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 37
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 39
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_ROUNDTRIP_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 41
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_SERVER_ELAPSED_TIME:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_SERVER_ELAPSED_TIME:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 43
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_UNCOMPRESSED_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_UNCOMPRESSED_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 45
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_UNCOMPRESSED_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_UNCOMPRESSED_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 47
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_STARTED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_STARTED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 49
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_FINISHED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_FINISHED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 51
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_REQUEST_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_REQUEST_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 53
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_CLIENT_RESPONSE_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_CLIENT_RESPONSE_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 56
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_ERROR_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_ERROR_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 58
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 60
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 62
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_SERVER_ELAPSED_TIME:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_SERVER_ELAPSED_TIME:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 64
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_SERVER_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_SERVER_LATENCY:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 66
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_UNCOMPRESSED_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_UNCOMPRESSED_REQUEST_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 68
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_UNCOMPRESSED_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_UNCOMPRESSED_RESPONSE_BYTES:Lio/opencensus/stats/Measure$MeasureDouble;

    .line 70
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_STARTED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_STARTED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 72
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_FINISHED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_FINISHED_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 74
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_REQUEST_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_REQUEST_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    .line 76
    sget-object v0, Lio/opencensus/contrib/grpc/metrics/RpcMeasureConstants;->RPC_SERVER_RESPONSE_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    sput-object v0, Lio/grpc/internal/DeprecatedCensusConstants;->RPC_SERVER_RESPONSE_COUNT:Lio/opencensus/stats/Measure$MeasureLong;

    return-void
.end method
