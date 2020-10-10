.class final synthetic Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

.field private final arg$2:Lio/grpc/MethodDescriptor;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/MethodDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$1;->arg$2:Lio/grpc/MethodDescriptor;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/MethodDescriptor;)Lcom/google/android/gms/tasks/Continuation;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$1;-><init>(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/MethodDescriptor;)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/GrpcCallProvider;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/GrpcCallProvider$$Lambda$1;->arg$2:Lio/grpc/MethodDescriptor;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/remote/GrpcCallProvider;->lambda$createClientCall$0(Lcom/google/firebase/firestore/remote/GrpcCallProvider;Lio/grpc/MethodDescriptor;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
