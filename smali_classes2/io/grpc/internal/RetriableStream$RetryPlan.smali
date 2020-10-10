.class final Lio/grpc/internal/RetriableStream$RetryPlan;
.super Ljava/lang/Object;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RetryPlan"
.end annotation


# instance fields
.field final backoffNanos:J

.field final hedgingPushbackMillis:Ljava/lang/Integer;

.field final isFatal:Z

.field final shouldRetry:Z


# direct methods
.method constructor <init>(ZZJLjava/lang/Integer;)V
    .locals 0

    .line 1310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1311
    iput-boolean p1, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->shouldRetry:Z

    .line 1312
    iput-boolean p2, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->isFatal:Z

    .line 1313
    iput-wide p3, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->backoffNanos:J

    .line 1314
    iput-object p5, p0, Lio/grpc/internal/RetriableStream$RetryPlan;->hedgingPushbackMillis:Ljava/lang/Integer;

    return-void
.end method
