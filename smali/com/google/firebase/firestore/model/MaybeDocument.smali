.class public abstract Lcom/google/firebase/firestore/model/MaybeDocument;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final version:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/firebase/firestore/model/MaybeDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 29
    iput-object p2, p0, Lcom/google/firebase/firestore/model/MaybeDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-void
.end method


# virtual methods
.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MaybeDocument;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/firebase/firestore/model/MaybeDocument;->version:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public abstract hasPendingWrites()Z
.end method
