.class final synthetic Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/core/AsyncEventListener;

.field private final arg$2:Ljava/lang/Object;

.field private final arg$3:Lcom/google/firebase/firestore/FirebaseFirestoreException;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/core/AsyncEventListener;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/core/AsyncEventListener;

    iput-object p2, p0, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;->arg$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;->arg$3:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/core/AsyncEventListener;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;-><init>(Lcom/google/firebase/firestore/core/AsyncEventListener;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/core/AsyncEventListener;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;->arg$2:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/AsyncEventListener$$Lambda$1;->arg$3:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/AsyncEventListener;->lambda$onEvent$0(Lcom/google/firebase/firestore/core/AsyncEventListener;Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method
