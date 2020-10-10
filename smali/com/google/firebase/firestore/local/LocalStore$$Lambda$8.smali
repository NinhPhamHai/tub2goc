.class final synthetic Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/LocalStore;

.field private final arg$2:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

.field private final arg$3:Lcom/google/firebase/firestore/core/Target;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;->arg$2:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;->arg$3:Lcom/google/firebase/firestore/core/Target;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;->arg$2:Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$8;->arg$3:Lcom/google/firebase/firestore/core/Target;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$allocateTarget$7(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/local/LocalStore$AllocateQueryHolder;Lcom/google/firebase/firestore/core/Target;)V

    return-void
.end method
