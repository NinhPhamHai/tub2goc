.class final Lio/grpc/perfmark/PerfTag$TagFactory;
.super Ljava/lang/Object;
.source "PerfTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/perfmark/PerfTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TagFactory"
.end annotation


# direct methods
.method static create()Lio/grpc/perfmark/PerfTag;
    .locals 5

    .line 114
    new-instance v0, Lio/grpc/perfmark/PerfTag;

    invoke-static {}, Lio/grpc/perfmark/PerfTag;->access$100()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Lio/grpc/perfmark/PerfTag;-><init>(JLjava/lang/String;Lio/grpc/perfmark/PerfTag$1;)V

    return-object v0
.end method
