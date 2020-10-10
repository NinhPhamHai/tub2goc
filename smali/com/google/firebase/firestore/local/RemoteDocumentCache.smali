.class interface abstract Lcom/google/firebase/firestore/local/RemoteDocumentCache;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# virtual methods
.method public abstract add(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
.end method

.method public abstract get(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/MaybeDocument;
.end method

.method public abstract getAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MaybeDocument;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllDocumentsMatchingQuery(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ")",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation
.end method

.method public abstract remove(Lcom/google/firebase/firestore/model/DocumentKey;)V
.end method
