.class interface abstract Lcom/google/firebase/firestore/local/MutationQueue;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# virtual methods
.method public abstract acknowledgeBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract getAllMutationBatches()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMutationBatchesAffectingDocumentKey(Lcom/google/firebase/firestore/model/DocumentKey;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMutationBatchesAffectingDocumentKeys(Ljava/lang/Iterable;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllMutationBatchesAffectingQuery(Lcom/google/firebase/firestore/core/Query;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/Query;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/MutationBatch;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastStreamToken()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNextMutationBatchAfterBatchId(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
.end method

.method public abstract lookupMutationBatch(I)Lcom/google/firebase/firestore/model/mutation/MutationBatch;
.end method

.method public abstract performConsistencyCheck()V
.end method

.method public abstract removeMutationBatch(Lcom/google/firebase/firestore/model/mutation/MutationBatch;)V
.end method

.method public abstract setLastStreamToken(Lcom/google/protobuf/ByteString;)V
.end method

.method public abstract start()V
.end method
