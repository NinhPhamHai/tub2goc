.class final synthetic Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

.field private final arg$2:I

.field private final arg$3:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field private final arg$4:Lcom/google/firebase/firestore/core/Query;

.field private final arg$5:[Lcom/google/firebase/database/collection/ImmutableSortedMap;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$1:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iput p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$2:I

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$3:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$4:Lcom/google/firebase/firestore/core/Query;

    iput-object p5, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$5:[Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 7

    new-instance v6, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v6
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$1:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iget v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$2:I

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$3:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$4:Lcom/google/firebase/firestore/core/Query;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$3;->arg$5:[Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-object v5, p1

    check-cast v5, Landroid/database/Cursor;

    invoke-static/range {v0 .. v5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$getAllDocumentsMatchingQuery$3(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;ILcom/google/firebase/firestore/util/BackgroundQueue;Lcom/google/firebase/firestore/core/Query;[Lcom/google/firebase/database/collection/ImmutableSortedMap;Landroid/database/Cursor;)V

    return-void
.end method
