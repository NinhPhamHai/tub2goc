.class final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$8;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

.field private final arg$2:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$8;->arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$8;->arg$2:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$8;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$8;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$8;->arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$8;->arg$2:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$getAllMutationBatchesAffectingDocumentKey$7(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/List;Landroid/database/Cursor;)V

    return-void
.end method
