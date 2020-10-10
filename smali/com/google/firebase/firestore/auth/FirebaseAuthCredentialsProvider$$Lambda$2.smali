.class final synthetic Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$2;->arg$1:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;

    iput p2, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$2;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;I)Lcom/google/android/gms/tasks/Continuation;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$2;-><init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;I)V

    return-object v0
.end method


# virtual methods
.method public then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$2;->arg$1:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;

    iget v1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$2;->arg$2:I

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;->lambda$getToken$1(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;ILcom/google/android/gms/tasks/Task;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
