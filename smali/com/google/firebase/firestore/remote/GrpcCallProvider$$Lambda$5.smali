.class final synthetic Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$5;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/remote/GrpcCallProvider;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$5;->arg$1:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$5;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$5;->arg$1:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$initChannelTask$5(Lcom/google/firebase/firestore/remote/GrpcCallProvider;)Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method
