.class public abstract Lio/grpc/LoadBalancerProvider;
.super Lio/grpc/LoadBalancer$Factory;
.source "LoadBalancerProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/LoadBalancerProvider$UnknownConfig;
    }
.end annotation


# static fields
.field private static final UNKNOWN_CONFIG:Lio/grpc/NameResolver$ConfigOrError;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lio/grpc/LoadBalancerProvider$UnknownConfig;

    invoke-direct {v0}, Lio/grpc/LoadBalancerProvider$UnknownConfig;-><init>()V

    invoke-static {v0}, Lio/grpc/NameResolver$ConfigOrError;->fromConfig(Ljava/lang/Object;)Lio/grpc/NameResolver$ConfigOrError;

    move-result-object v0

    sput-object v0, Lio/grpc/LoadBalancerProvider;->UNKNOWN_CONFIG:Lio/grpc/NameResolver$ConfigOrError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/grpc/LoadBalancer$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract getPolicyName()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public final hashCode()I
    .locals 1

    .line 98
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract isAvailable()Z
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 81
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 82
    invoke-virtual {p0}, Lio/grpc/LoadBalancerProvider;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "policy"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 83
    invoke-virtual {p0}, Lio/grpc/LoadBalancerProvider;->getPriority()I

    move-result v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 84
    invoke-virtual {p0}, Lio/grpc/LoadBalancerProvider;->isAvailable()Z

    move-result v1

    const-string v2, "available"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 85
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
