.class final synthetic Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final arg$1:Lio/grpc/CallCredentials$MetadataApplier;


# direct methods
.method private constructor <init>(Lio/grpc/CallCredentials$MetadataApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$Lambda$2;->arg$1:Lio/grpc/CallCredentials$MetadataApplier;

    return-void
.end method

.method public static lambdaFactory$(Lio/grpc/CallCredentials$MetadataApplier;)Lcom/google/android/gms/tasks/OnFailureListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$Lambda$2;-><init>(Lio/grpc/CallCredentials$MetadataApplier;)V

    return-object v0
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials$$Lambda$2;->arg$1:Lio/grpc/CallCredentials$MetadataApplier;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/remote/FirestoreCallCredentials;->lambda$applyRequestMetadata$1(Lio/grpc/CallCredentials$MetadataApplier;Ljava/lang/Exception;)V

    return-void
.end method
