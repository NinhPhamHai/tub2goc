.class final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final instance:Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;->instance:Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;->instance:Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$10;

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    check-cast p2, Lcom/google/firebase/firestore/model/mutation/MutationBatch;

    invoke-static {p1, p2}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$getAllMutationBatchesAffectingDocumentKeys$9(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/firebase/firestore/model/mutation/MutationBatch;)I

    move-result p1

    return p1
.end method
