.class public final Lio/grpc/util/SecretRoundRobinLoadBalancerProvider$Provider;
.super Lio/grpc/LoadBalancerProvider;
.source "SecretRoundRobinLoadBalancerProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lio/grpc/LoadBalancerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicyName()Ljava/lang/String;
    .locals 1

    const-string v0, "round_robin"

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public newLoadBalancer(Lio/grpc/LoadBalancer$Helper;)Lio/grpc/LoadBalancer;
    .locals 1

    .line 55
    new-instance v0, Lio/grpc/util/RoundRobinLoadBalancer;

    invoke-direct {v0, p1}, Lio/grpc/util/RoundRobinLoadBalancer;-><init>(Lio/grpc/LoadBalancer$Helper;)V

    return-object v0
.end method
