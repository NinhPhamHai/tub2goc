.class final synthetic Lcom/google/firebase/firestore/local/LocalStore$$Lambda$9;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/LocalStore;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$9;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iput p2, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$9;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/LocalStore;I)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$9;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$9;-><init>(Lcom/google/firebase/firestore/local/LocalStore;I)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$9;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iget v1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$9;->arg$2:I

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$releaseTarget$8(Lcom/google/firebase/firestore/local/LocalStore;I)V

    return-void
.end method
