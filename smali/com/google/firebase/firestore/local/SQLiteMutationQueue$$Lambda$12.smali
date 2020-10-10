.class final synthetic Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$12;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field private final arg$1:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$12;->arg$1:Ljava/util/List;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/List;)Lcom/google/firebase/firestore/util/Consumer;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$12;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$12;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteMutationQueue$$Lambda$12;->arg$1:Ljava/util/List;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteMutationQueue;->lambda$performConsistencyCheck$11(Ljava/util/List;Landroid/database/Cursor;)V

    return-void
.end method
