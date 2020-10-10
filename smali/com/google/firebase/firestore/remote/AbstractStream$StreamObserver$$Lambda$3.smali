.class final synthetic Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$3;->arg$1:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$3;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$3;-><init>(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver$$Lambda$3;->arg$1:Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;

    invoke-static {v0}, Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;->lambda$onOpen$2(Lcom/google/firebase/firestore/remote/AbstractStream$StreamObserver;)V

    return-void
.end method
