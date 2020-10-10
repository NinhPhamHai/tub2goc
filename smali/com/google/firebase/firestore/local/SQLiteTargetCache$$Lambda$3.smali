.class final synthetic Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

.field private final arg$2:Landroid/util/SparseArray;

.field private final arg$3:[I


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/util/SparseArray;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;->arg$2:Landroid/util/SparseArray;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;->arg$3:[I

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/util/SparseArray;[I)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/util/SparseArray;[I)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;->arg$2:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$3;->arg$3:[I

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lambda$removeQueries$2(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/util/SparseArray;[ILandroid/database/Cursor;)V

    return-void
.end method
