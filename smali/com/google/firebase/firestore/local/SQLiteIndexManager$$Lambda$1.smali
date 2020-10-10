.class final synthetic Lcom/google/firebase/firestore/local/SQLiteIndexManager$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$Lambda$1;->arg$1:Ljava/util/ArrayList;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/ArrayList;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$Lambda$1;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteIndexManager$$Lambda$1;->arg$1:Ljava/util/ArrayList;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteIndexManager;->lambda$getCollectionParents$0(Ljava/util/ArrayList;Landroid/database/Cursor;)V

    return-void
.end method
