.class final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

.field private final arg$2:Ljava/util/Set;

.field private final arg$3:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;->arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;->arg$2:Ljava/util/Set;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;->arg$3:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/Set;Ljava/util/List;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;-><init>(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;->arg$1:Lcom/google/firebase/firestore/local/SQLiteMutationQueue;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;->arg$2:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$9;->arg$3:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$getAllMutationBatchesAffectingDocumentKeys$8(Lcom/google/firebase/firestore/local/SQLiteMutationQueue;Ljava/util/Set;Ljava/util/List;Landroid/database/Cursor;)V

    return-void
.end method
