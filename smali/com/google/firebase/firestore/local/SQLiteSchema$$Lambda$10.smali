.class final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$10;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

.field private final arg$2:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$10;->arg$1:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$10;->arg$2:Landroid/database/sqlite/SQLiteStatement;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$10;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$10;-><init>(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$10;->arg$1:Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$Lambda$10;->arg$2:Landroid/database/sqlite/SQLiteStatement;

    check-cast p1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$createV8CollectionParentsIndex$10(Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;Landroid/database/sqlite/SQLiteStatement;Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-void
.end method
