.class public abstract Lio/grpc/ForwardingChannelBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "ForwardingChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/ForwardingChannelBuilder<",
        "TT;>;>",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 171
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/ForwardingChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;

    return-object p0
.end method

.method protected final thisT()Lio/grpc/ForwardingChannelBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 263
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v1

    const-string v2, "delegate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->usePlaintext()Lio/grpc/ManagedChannelBuilder;

    .line 111
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    return-object p0
.end method

.method public usePlaintext(Z)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->usePlaintext(Z)Lio/grpc/ManagedChannelBuilder;

    .line 105
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->usePlaintext()Lio/grpc/ForwardingChannelBuilder;

    return-object p0
.end method

.method public bridge synthetic usePlaintext(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->usePlaintext(Z)Lio/grpc/ForwardingChannelBuilder;

    return-object p0
.end method
