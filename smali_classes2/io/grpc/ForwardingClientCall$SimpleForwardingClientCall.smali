.class public abstract Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;
.super Lio/grpc/ForwardingClientCall;
.source "ForwardingClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ForwardingClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingClientCall"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/ForwardingClientCall<",
        "TReqT;TRespT;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lio/grpc/ClientCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/grpc/ClientCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lio/grpc/ForwardingClientCall;-><init>()V

    .line 49
    iput-object p1, p0, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->delegate:Lio/grpc/ClientCall;

    return-void
.end method


# virtual methods
.method protected delegate()Lio/grpc/ClientCall;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ClientCall<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lio/grpc/ForwardingClientCall$SimpleForwardingClientCall;->delegate:Lio/grpc/ClientCall;

    return-object v0
.end method

.method public bridge synthetic halfClose()V
    .locals 0

    .line 44
    invoke-super {p0}, Lio/grpc/ForwardingClientCall;->halfClose()V

    return-void
.end method

.method public bridge synthetic request(I)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lio/grpc/ForwardingClientCall;->request(I)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 44
    invoke-super {p0}, Lio/grpc/ForwardingClientCall;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
