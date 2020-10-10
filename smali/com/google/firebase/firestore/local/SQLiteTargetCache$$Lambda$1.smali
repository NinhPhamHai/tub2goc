.class final synthetic Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/SQLiteTargetCache;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$1;-><init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lambda$start$0(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Landroid/database/Cursor;)V

    return-void
.end method
