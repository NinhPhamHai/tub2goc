.class final synthetic Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/remote/FirestoreChannel;

.field private final arg$2:[Lio/grpc/ClientCall;

.field private final arg$3:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;->arg$2:[Lio/grpc/ClientCall;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;->arg$3:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)Lcom/google/android/gms/tasks/OnCompleteListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;-><init>(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;)V

    return-object v0
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/FirestoreChannel;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;->arg$2:[Lio/grpc/ClientCall;

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/FirestoreChannel$$Lambda$1;->arg$3:Lcom/google/firebase/firestore/remote/IncomingStreamObserver;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->lambda$runBidiStreamingRpc$0(Lcom/google/firebase/firestore/remote/FirestoreChannel;[Lio/grpc/ClientCall;Lcom/google/firebase/firestore/remote/IncomingStreamObserver;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
