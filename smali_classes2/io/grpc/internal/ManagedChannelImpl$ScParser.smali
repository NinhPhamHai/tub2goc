.class final Lio/grpc/internal/ManagedChannelImpl$ScParser;
.super Lio/grpc/NameResolver$ServiceConfigParser;
.source "ManagedChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScParser"
.end annotation


# instance fields
.field private final autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

.field private final maxHedgedAttemptsLimit:I

.field private final maxRetryAttemptsLimit:I

.field private final retryEnabled:Z


# direct methods
.method constructor <init>(ZIILio/grpc/internal/AutoConfiguredLoadBalancerFactory;)V
    .locals 0

    .line 1737
    invoke-direct {p0}, Lio/grpc/NameResolver$ServiceConfigParser;-><init>()V

    .line 1738
    iput-boolean p1, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->retryEnabled:Z

    .line 1739
    iput p2, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->maxRetryAttemptsLimit:I

    .line 1740
    iput p3, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->maxHedgedAttemptsLimit:I

    const-string p1, "autoLoadBalancerFactory"

    .line 1742
    invoke-static {p4, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p4, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    iput-object p4, p0, Lio/grpc/internal/ManagedChannelImpl$ScParser;->autoLoadBalancerFactory:Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;

    return-void
.end method
