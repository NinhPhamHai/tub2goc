.class public final Lio/grpc/perfmark/PerfMark;
.super Ljava/lang/Object;
.source "PerfMark.java"


# static fields
.field private static final NULL_PERF_TAG:Lio/grpc/perfmark/PerfTag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    invoke-static {}, Lio/grpc/perfmark/PerfTag$TagFactory;->create()Lio/grpc/perfmark/PerfTag;

    move-result-object v0

    sput-object v0, Lio/grpc/perfmark/PerfMark;->NULL_PERF_TAG:Lio/grpc/perfmark/PerfTag;

    return-void
.end method

.method public static createTag(Ljava/lang/String;)Lio/grpc/perfmark/PerfTag;
    .locals 0

    .line 148
    sget-object p0, Lio/grpc/perfmark/PerfMark;->NULL_PERF_TAG:Lio/grpc/perfmark/PerfTag;

    return-object p0
.end method

.method public static taskEnd(Lio/grpc/perfmark/PerfTag;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static taskStart(Lio/grpc/perfmark/PerfTag;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
