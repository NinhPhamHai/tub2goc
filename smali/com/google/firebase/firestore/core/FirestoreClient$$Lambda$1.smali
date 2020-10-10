.class final synthetic Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/core/FirestoreClient;

.field private final arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final arg$3:Landroid/content/Context;

.field private final arg$4:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/core/FirestoreClient;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$3:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$4:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/core/FirestoreClient;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$2:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$3:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/FirestoreClient$$Lambda$1;->arg$4:Lcom/google/firebase/firestore/FirebaseFirestoreSettings;

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/core/FirestoreClient;->lambda$new$0(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/android/gms/tasks/TaskCompletionSource;Landroid/content/Context;Lcom/google/firebase/firestore/FirebaseFirestoreSettings;)V

    return-void
.end method
