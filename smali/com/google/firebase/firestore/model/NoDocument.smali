.class public final Lcom/google/firebase/firestore/model/NoDocument;
.super Lcom/google/firebase/firestore/model/MaybeDocument;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private hasCommittedMutations:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Z)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/model/MaybeDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    .line 24
    iput-boolean p3, p0, Lcom/google/firebase/firestore/model/NoDocument;->hasCommittedMutations:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 32
    const-class v2, Lcom/google/firebase/firestore/model/NoDocument;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 36
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/model/NoDocument;

    .line 38
    iget-boolean v2, p0, Lcom/google/firebase/firestore/model/NoDocument;->hasCommittedMutations:Z

    iget-boolean v3, p1, Lcom/google/firebase/firestore/model/NoDocument;->hasCommittedMutations:Z

    if-ne v2, v3, :cond_2

    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hasCommittedMutations()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/google/firebase/firestore/model/NoDocument;->hasCommittedMutations:Z

    return v0
.end method

.method public hasPendingWrites()Z
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/NoDocument;->hasCommittedMutations()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 55
    iget-boolean v1, p0, Lcom/google/firebase/firestore/model/NoDocument;->hasCommittedMutations:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 56
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoDocument{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasCommittedMutations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/NoDocument;->hasCommittedMutations()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
