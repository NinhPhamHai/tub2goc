.class public final Lio/grpc/MethodDescriptor$Builder;
.super Ljava/lang/Object;
.source "MethodDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/MethodDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private fullMethodName:Ljava/lang/String;

.field private idempotent:Z

.field private requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field private responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field private safe:Z

.field private sampledToLocalTracing:Z

.field private schemaDescriptor:Ljava/lang/Object;

.field private type:Lio/grpc/MethodDescriptor$MethodType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/MethodDescriptor$1;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Lio/grpc/MethodDescriptor$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/grpc/MethodDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 579
    new-instance v10, Lio/grpc/MethodDescriptor;

    iget-object v1, p0, Lio/grpc/MethodDescriptor$Builder;->type:Lio/grpc/MethodDescriptor$MethodType;

    iget-object v2, p0, Lio/grpc/MethodDescriptor$Builder;->fullMethodName:Ljava/lang/String;

    iget-object v3, p0, Lio/grpc/MethodDescriptor$Builder;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    iget-object v4, p0, Lio/grpc/MethodDescriptor$Builder;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    iget-object v5, p0, Lio/grpc/MethodDescriptor$Builder;->schemaDescriptor:Ljava/lang/Object;

    iget-boolean v6, p0, Lio/grpc/MethodDescriptor$Builder;->idempotent:Z

    iget-boolean v7, p0, Lio/grpc/MethodDescriptor$Builder;->safe:Z

    iget-boolean v8, p0, Lio/grpc/MethodDescriptor$Builder;->sampledToLocalTracing:Z

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lio/grpc/MethodDescriptor;-><init>(Lio/grpc/MethodDescriptor$MethodType;Ljava/lang/String;Lio/grpc/MethodDescriptor$Marshaller;Lio/grpc/MethodDescriptor$Marshaller;Ljava/lang/Object;ZZZLio/grpc/MethodDescriptor$1;)V

    return-object v10
.end method

.method public setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->fullMethodName:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TReqT;>;)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 485
    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->requestMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    return-object p0
.end method

.method public setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor$Marshaller<",
            "TRespT;>;)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->responseMarshaller:Lio/grpc/MethodDescriptor$Marshaller;

    return-object p0
.end method

.method public setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 568
    iput-boolean p1, p0, Lio/grpc/MethodDescriptor$Builder;->sampledToLocalTracing:Z

    return-object p0
.end method

.method public setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor$MethodType;",
            ")",
            "Lio/grpc/MethodDescriptor$Builder<",
            "TReqT;TRespT;>;"
        }
    .end annotation

    .line 508
    iput-object p1, p0, Lio/grpc/MethodDescriptor$Builder;->type:Lio/grpc/MethodDescriptor$MethodType;

    return-object p0
.end method
