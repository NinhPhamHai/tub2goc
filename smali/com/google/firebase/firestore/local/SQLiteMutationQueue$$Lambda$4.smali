.class final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

.field private final arg$2:I


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$4;->arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iput p2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$4;->arg$2:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;I)Lcom/google/common/base/Function;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$4;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;I)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$4;->arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$4;->arg$2:I

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$lookupMutationBatch$3(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;ILandroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    move-result-object p1

    return-object p1
.end method
