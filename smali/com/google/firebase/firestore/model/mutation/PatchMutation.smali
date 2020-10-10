.class public final Lcom/google/firebase/firestore/model/mutation/PatchMutation;
.super Lcom/google/firebase/firestore/model/mutation/Mutation;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

.field private final value:Lcom/google/firebase/firestore/model/value/ObjectValue;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/value/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p4}, Lcom/google/firebase/firestore/model/mutation/Mutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    .line 49
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    .line 50
    iput-object p3, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    return-void
.end method

.method private patchDocument(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 1

    .line 145
    instance-of v0, p1, Lcom/google/firebase/firestore/model/Document;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Lcom/google/firebase/firestore/model/value/ObjectValue;->emptyObject()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    .line 150
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->patchObject(Lcom/google/firebase/firestore/model/value/ObjectValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    return-object p1
.end method

.method private patchObject(Lcom/google/firebase/firestore/model/value/ObjectValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/FieldMask;->getMask()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/FieldPath;

    .line 155
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/BasePath;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v2

    if-nez v2, :cond_1

    .line 158
    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->delete(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/google/firebase/firestore/model/value/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/MaybeDocument;
    .locals 2

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MaybeDocument;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MaybeDocument;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 128
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPostMutationVersion(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p2

    .line 129
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->patchDocument(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    .line 130
    new-instance p3, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/model/Document$DocumentState;->LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    invoke-direct {p3, v0, p2, v1, p1}, Lcom/google/firebase/firestore/model/Document;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/Document$DocumentState;Lcom/google/firebase/firestore/model/value/ObjectValue;)V

    return-object p3
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)Lcom/google/firebase/firestore/model/MaybeDocument;
    .locals 3

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MaybeDocument;)V

    .line 103
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getTransformResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Transform results received by PatchMutation."

    .line 102
    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MaybeDocument;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    new-instance p1, Lcom/google/firebase/firestore/model/UnknownDocument;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/google/firebase/firestore/model/UnknownDocument;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    return-object p1

    .line 113
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p2

    .line 114
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->patchDocument(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    .line 115
    new-instance v0, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

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

    .line 58
    const-class v2, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 62
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-virtual {v2, p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->equals(Ljava/lang/Object;)Z

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

.method public getMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    return-object v0
.end method

.method public getValue()Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->keyAndPreconditionHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PatchMutation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->mask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/PatchMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
