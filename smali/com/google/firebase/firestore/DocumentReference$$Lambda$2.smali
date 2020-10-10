.class final synthetic Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/EventListener;


# instance fields
.field private final arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final arg$3:Lcom/google/firebase/firestore/Source;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;->arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;->arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;->arg$3:Lcom/google/firebase/firestore/Source;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;)Lcom/google/firebase/firestore/EventListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;)V

    return-object v0
.end method


# virtual methods
.method public onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;->arg$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;->arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentReference$$Lambda$2;->arg$3:Lcom/google/firebase/firestore/Source;

    check-cast p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/google/firebase/firestore/DocumentReference;->lambda$getViaSnapshotListener$1(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;Lcom/google/firebase/firestore/DocumentSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
