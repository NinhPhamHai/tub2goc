.class final synthetic Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$5;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$5;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$5;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$5;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$5;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lambda$getMatchingKeysForTargetId$4(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;Landroid/database/Cursor;)V

    return-void
.end method
