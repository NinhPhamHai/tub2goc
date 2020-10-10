.class public abstract Lcom/google/firebase/firestore/model/mutation/Mutation;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 75
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    return-void
.end method

.method static getPostMutationVersion(Lcom/google/firebase/firestore/model/MaybeDocument;)Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 163
    instance-of v0, p0, Lcom/google/firebase/firestore/model/Document;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p0

    return-object p0

    .line 166
    :cond_0
    sget-object p0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object p0
.end method


# virtual methods
.method public abstract applyToLocalView(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/MaybeDocument;
.end method

.method public abstract applyToRemoteDocument(Lcom/google/firebase/firestore/model/MaybeDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)Lcom/google/firebase/firestore/model/MaybeDocument;
.end method

.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getPrecondition()Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    return-object v0
.end method

.method hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v1, p1, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method keyAndPreconditionHashCode()I
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method keyAndPreconditionToString()Ljava/lang/String;
    .locals 2

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", precondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/Mutation;->precondition:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method verifyKeyMatches(Lcom/google/firebase/firestore/model/MaybeDocument;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Can only apply a mutation to a document with the same key"

    .line 151
    invoke-static {p1, v1, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
