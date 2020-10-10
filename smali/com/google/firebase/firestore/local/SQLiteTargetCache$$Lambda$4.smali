.class final synthetic Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

.field private final arg$2:Lcom/google/firebase/firestore/core/Target;

.field private final arg$3:Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;->arg$2:Lcom/google/firebase/firestore/core/Target;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;->arg$3:Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;->arg$2:Lcom/google/firebase/firestore/core/Target;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$4;->arg$3:Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lambda$getTargetData$3(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;Landroid/database/Cursor;)V

    return-void
.end method
