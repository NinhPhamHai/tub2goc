.class final Lcom/google/firebase/firestore/local/MemoryTargetCache;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/local/TargetCache;


# instance fields
.field private highestSequenceNumber:J

.field private highestTargetId:I

.field private lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

.field private final persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

.field private final references:Lcom/google/firebase/firestore/local/ReferenceSet;

.field private final targets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/core/Target;",
            "Lcom/google/firebase/firestore/local/TargetData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/MemoryPersistence;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    .line 38
    new-instance v0, Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-direct {v0}, Lcom/google/firebase/firestore/local/ReferenceSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    .line 44
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestSequenceNumber:J

    .line 51
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    return-void
.end method


# virtual methods
.method public addMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->addReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 145
    iget-object p2, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object p2

    .line 146
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 147
    invoke-interface {p2, v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->addReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result v0

    .line 92
    iget v1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestTargetId:I

    if-le v0, v1, :cond_0

    .line 93
    iput v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestTargetId:I

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestSequenceNumber:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 96
    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getSequenceNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestSequenceNumber:J

    :cond_1
    return-void
.end method

.method public containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z

    move-result p1

    return p1
.end method

.method public getHighestTargetId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->highestTargetId:I

    return v0
.end method

.method public getLastRemoteSnapshotVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public getMatchingKeysForTargetId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public getTargetData(Lcom/google/firebase/firestore/core/Target;)Lcom/google/firebase/firestore/local/TargetData;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/local/TargetData;

    return-object p1
.end method

.method public removeMatchingKeys(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V

    .line 154
    iget-object p2, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->persistence:Lcom/google/firebase/firestore/local/MemoryPersistence;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/MemoryPersistence;->getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;

    move-result-object p2

    .line 155
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 156
    invoke-interface {p2, v0}, Lcom/google/firebase/firestore/local/ReferenceDelegate;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->targets:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->references:Lcom/google/firebase/firestore/local/ReferenceSet;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/local/TargetData;->getTargetId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-void
.end method

.method public setLastRemoteSnapshotVersion(Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryTargetCache;->lastRemoteSnapshotVersion:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-void
.end method

.method public updateTargetData(Lcom/google/firebase/firestore/local/TargetData;)V
    .locals 0

    .line 103
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/local/MemoryTargetCache;->addTargetData(Lcom/google/firebase/firestore/local/TargetData;)V

    return-void
.end method
