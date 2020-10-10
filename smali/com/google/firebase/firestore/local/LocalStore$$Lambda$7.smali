.class final synthetic Lcom/google/firebase/firestore/local/LocalStore$$Lambda$7;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/LocalStore;

.field private final arg$2:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$7;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$7;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$7;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$7;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$7;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$7;->arg$2:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$notifyLocalViewChanges$6(Lcom/google/firebase/firestore/local/LocalStore;Ljava/util/List;)V

    return-void
.end method
