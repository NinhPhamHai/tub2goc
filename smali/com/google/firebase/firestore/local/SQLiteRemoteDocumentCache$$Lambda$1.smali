.class final synthetic Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;)Lcom/google/common/base/Function;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$1;-><init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$get$0(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/MaybeDocument;

    move-result-object p1

    return-object p1
.end method
