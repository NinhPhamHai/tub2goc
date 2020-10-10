.class public final Lcom/google/firebase/firestore/model/value/ServerTimestampValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final localWriteTime:Lcom/google/firebase/Timestamp;

.field private final previousValue:Lcom/google/firebase/firestore/model/value/FieldValue;


# direct methods
.method public constructor <init>(Lcom/google/firebase/Timestamp;Lcom/google/firebase/firestore/model/value/FieldValue;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    .line 36
    iput-object p2, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->previousValue:Lcom/google/firebase/firestore/model/value/FieldValue;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 1

    .line 87
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    check-cast p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0, p1}, Lcom/google/firebase/Timestamp;->compareTo(Lcom/google/firebase/Timestamp;)I

    move-result p1

    return p1

    .line 89
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/TimestampValue;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 93
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 76
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    check-cast p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    .line 77
    invoke-virtual {v0, p1}, Lcom/google/firebase/Timestamp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLocalWriteTime()Lcom/google/firebase/Timestamp;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    return-object v0
.end method

.method public getPreviousValue()Ljava/lang/Object;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->previousValue:Lcom/google/firebase/firestore/model/value/FieldValue;

    instance-of v1, v0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    if-eqz v1, :cond_0

    .line 59
    check-cast v0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->getPreviousValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/FieldValue;->value()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<ServerTimestamp localTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;->localWriteTime:Lcom/google/firebase/Timestamp;

    invoke-virtual {v1}, Lcom/google/firebase/Timestamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
