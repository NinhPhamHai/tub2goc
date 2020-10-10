.class final synthetic Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

.field private final arg$2:Lio/grpc/Metadata;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lio/grpc/Metadata;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$1;->arg$2:Lio/grpc/Metadata;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lio/grpc/Metadata;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$1;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lio/grpc/Metadata;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$1;->arg$2:Lio/grpc/Metadata;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->lambda$onHeaders$0(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;Lio/grpc/Metadata;)V

    return-void
.end method
