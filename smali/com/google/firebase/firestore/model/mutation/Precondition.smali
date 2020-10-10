.class public final Lcom/google/firebase/firestore/model/mutation/Precondition;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# static fields
.field public static final NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;


# instance fields
.field private final exists:Ljava/lang/Boolean;

.field private final updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/Precondition;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 40
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Precondition can specify \"exists\" or \"updateTime\" but not both"

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 44
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    return-void
.end method

.method public static exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 2

    .line 49
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/firestore/model/mutation/Precondition;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static updateTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 2

    .line 54
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/Precondition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 92
    const-class v2, Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 96
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 98
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object p1, p1, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    invoke-virtual {v2, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object p1, p1, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public getExists()Ljava/lang/Boolean;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isNone()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidFor(Lcom/google/firebase/firestore/model/MaybeDocument;)Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 78
    instance-of v0, p1, Lcom/google/firebase/firestore/model/Document;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    instance-of p1, p1, Lcom/google/firebase/firestore/model/Document;

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isNone()Z

    move-result p1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Precondition should be empty"

    invoke-static {p1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Precondition{<none>}"

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const-string/jumbo v1, "}"

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precondition{updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precondition{exists="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Invalid Precondition"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0
.end method
