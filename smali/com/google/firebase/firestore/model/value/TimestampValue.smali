.class public final Lcom/google/firebase/firestore/model/value/TimestampValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final internalValue:Lcom/google/firebase/Timestamp;


# direct methods
.method constructor <init>(Lcom/google/firebase/Timestamp;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    return-void
.end method

.method public static valueOf(Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/value/TimestampValue;
    .locals 1

    .line 72
    new-instance v0, Lcom/google/firebase/firestore/model/value/TimestampValue;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/value/TimestampValue;-><init>(Lcom/google/firebase/Timestamp;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 1

    .line 61
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/TimestampValue;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    check-cast p1, Lcom/google/firebase/firestore/model/value/TimestampValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0, p1}, Lcom/google/firebase/Timestamp;->compareTo(Lcom/google/firebase/Timestamp;)I

    move-result p1

    return p1

    .line 63
    :cond_0
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/TimestampValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 50
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/TimestampValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    check-cast p1, Lcom/google/firebase/firestore/model/value/TimestampValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    .line 51
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

.method public getInternalValue()Lcom/google/firebase/Timestamp;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public value()Lcom/google/firebase/Timestamp;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/TimestampValue;->internalValue:Lcom/google/firebase/Timestamp;

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/TimestampValue;->value()Lcom/google/firebase/Timestamp;

    move-result-object v0

    return-object v0
.end method
