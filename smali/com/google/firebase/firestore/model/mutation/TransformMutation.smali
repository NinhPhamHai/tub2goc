.class public final Lcom/google/firebase/firestore/model/mutation/TransformMutation;
.super Lcom/google/firebase/firestore/model/mutation/Mutation;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final fieldTransforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 46
    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/mutation/Mutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    .line 47
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    return-void
.end method

.method private localTransformResults(Lcom/google/firebase/Timestamp;Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/MaybeDocument;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/Timestamp;",
            "Lcom/google/firebase/firestore/model/MaybeDocument;",
            "Lcom/google/firebase/firestore/model/MaybeDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 206
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 207
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getOperation()Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    move-result-object v3

    const/4 v4, 0x0

    .line 210
    instance-of v5, p2, Lcom/google/firebase/firestore/model/Document;

    if-eqz v5, :cond_0

    .line 211
    move-object v4, p2

    check-cast v4, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    .line 214
    instance-of v5, p3, Lcom/google/firebase/firestore/model/Document;

    if-eqz v5, :cond_1

    .line 218
    move-object v4, p3

    check-cast v4, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v4

    .line 221
    :cond_1
    invoke-interface {v3, v4, p1}, Lcom/google/firebase/firestore/model/mutation/TransformOperation;->applyToLocalView(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private requireDocument(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/Document;
    .locals 4

    .line 154
    instance-of v0, p1, Lcom/google/firebase/firestore/model/Document;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "Unknown MaybeDocument type %s"

    invoke-static {v0, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 155
    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    .line 156
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Can only transform a document with the same key"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method private serverTransformResults(Lcom/google/firebase/firestore/model/MaybeDocument;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/MaybeDocument;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    .line 173
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 175
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v5, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    .line 176
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "server transform count (%d) should match field transform count (%d)"

    .line 172
    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 180
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getOperation()Lcom/google/firebase/firestore/model/mutation/TransformOperation;

    move-result-object v2

    const/4 v3, 0x0

    .line 183
    instance-of v5, p1, Lcom/google/firebase/firestore/model/Document;

    if-eqz v5, :cond_1

    .line 184
    move-object v3, p1

    check-cast v3, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v3

    .line 188
    :cond_1
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-interface {v2, v3, v1}, Lcom/google/firebase/firestore/model/mutation/TransformOperation;->applyToRemoteDocument(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private transformObject(Lcom/google/firebase/firestore/model/value/ObjectValue;Ljava/util/List;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/value/ObjectValue;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)",
            "Lcom/google/firebase/firestore/model/value/ObjectValue;"
        }
    .end annotation

    .line 228
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Transform results length mismatch."

    .line 227
    invoke-static {v0, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/FieldTransform;

    .line 232
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/FieldTransform;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 233
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/MaybeDocument;
    .locals 2

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MaybeDocument;)V

    .line 113
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MaybeDocument;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 117
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->requireDocument(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    .line 118
    invoke-direct {p0, p3, p1, p2}, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->localTransformResults(Lcom/google/firebase/Timestamp;Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/MaybeDocument;)Ljava/util/List;

    move-result-object p1

    .line 119
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->transformObject(Lcom/google/firebase/firestore/model/value/ObjectValue;Ljava/util/List;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    .line 120
    new-instance p2, Lcom/google/firebase/firestore/model/Document;

    .line 121
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p3

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/model/Document$DocumentState;->LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-direct {p2, p3, v0, v1, p1}, Lcom/google/firebase/firestore/model/Document;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/Document$DocumentState;Lcom/google/firebase/firestore/model/value/ObjectValue;)V

    return-object p2
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)Lcom/google/firebase/firestore/model/MaybeDocument;
    .locals 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MaybeDocument;)V

    .line 89
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getTransformResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transform results missing for TransformMutation."

    .line 88
    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MaybeDocument;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    new-instance p1, Lcom/google/firebase/firestore/model/UnknownDocument;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/firestore/model/UnknownDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    return-object p1

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->requireDocument(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/Document;

    move-result-object p1

    .line 101
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getTransformResults()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->serverTransformResults(Lcom/google/firebase/firestore/model/MaybeDocument;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->transformObject(Lcom/google/firebase/firestore/model/value/ObjectValue;Ljava/util/List;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    .line 103
    new-instance v0, Lcom/google/firebase/firestore/model/Document;

    .line 104
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p2

    sget-object v2, Lcom/google/firebase/firestore/model/Document$DocumentState;->COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-direct {v0, v1, p2, v2, p1}, Lcom/google/firebase/firestore/model/Document;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/Document$DocumentState;Lcom/google/firebase/firestore/model/value/ObjectValue;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 55
    const-class v2, Lcom/google/firebase/firestore/model/mutation/TransformMutation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 59
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/model/mutation/TransformMutation;

    .line 60
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public getFieldTransforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->keyAndPreconditionHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransformMutation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fieldTransforms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/TransformMutation;->fieldTransforms:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
