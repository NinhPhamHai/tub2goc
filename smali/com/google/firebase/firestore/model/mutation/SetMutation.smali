.class public final Lcom/google/firebase/firestore/model/mutation/SetMutation;
.super Lcom/google/firebase/firestore/model/mutation/Mutation;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final value:Lcom/google/firebase/firestore/model/value/ObjectValue;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/value/ObjectValue;Lcom/google/firebase/firestore/model/mutation/Precondition;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/firestore/model/mutation/Mutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    .line 35
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    return-void
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/MaybeDocument;
    .locals 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MaybeDocument;)V

    .line 84
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isValidFor(Lcom/google/firebase/firestore/model/MaybeDocument;)Z

    move-result p2

    if-nez p2, :cond_0

    return-object p1

    .line 88
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getPostMutationVersion(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p1

    .line 89
    new-instance p2, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p3

    sget-object v0, Lcom/google/firebase/firestore/model/Document$DocumentState;->LOCAL_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-direct {p2, p3, p1, v0, v1}, Lcom/google/firebase/firestore/model/Document;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/Document$DocumentState;Lcom/google/firebase/firestore/model/value/ObjectValue;)V

    return-object p2
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)Lcom/google/firebase/firestore/model/MaybeDocument;
    .locals 3

    .line 66
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->verifyKeyMatches(Lcom/google/firebase/firestore/model/MaybeDocument;)V

    .line 69
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getTransformResults()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Transform results received by SetMutation."

    .line 68
    invoke-static {p1, v1, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/mutation/MutationResult;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p1

    .line 75
    new-instance p2, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/model/Document$DocumentState;->COMMITTED_MUTATIONS:Lcom/google/firebase/firestore/model/Document$DocumentState;

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-direct {p2, v0, p1, v1, v2}, Lcom/google/firebase/firestore/model/Document;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/Document$DocumentState;Lcom/google/firebase/firestore/model/value/ObjectValue;)V

    return-object p2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 43
    const-class v2, Lcom/google/firebase/firestore/model/mutation/SetMutation;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 47
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/model/mutation/SetMutation;

    .line 48
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/Mutation;->hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

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

.method public getValue()Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->keyAndPreconditionHashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SetMutation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/SetMutation;->value:Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
