.class public Lcom/google/firebase/firestore/model/value/StringValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final internalValue:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/StringValue;->internalValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/model/value/StringValue;
    .locals 1

    .line 56
    new-instance v0, Lcom/google/firebase/firestore/model/value/StringValue;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/value/StringValue;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/StringValue;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/StringValue;->internalValue:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/firestore/model/value/StringValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/StringValue;->internalValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/StringValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 38
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/StringValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/StringValue;->internalValue:Ljava/lang/String;

    check-cast p1, Lcom/google/firebase/firestore/model/value/StringValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/StringValue;->internalValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/StringValue;->internalValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/StringValue;->value()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/StringValue;->internalValue:Ljava/lang/String;

    return-object v0
.end method
