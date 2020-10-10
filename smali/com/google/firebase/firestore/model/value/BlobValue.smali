.class public Lcom/google/firebase/firestore/model/value/BlobValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final internalValue:Lcom/google/firebase/firestore/Blob;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/Blob;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/BlobValue;->internalValue:Lcom/google/firebase/firestore/Blob;

    return-void
.end method

.method public static valueOf(Lcom/google/firebase/firestore/Blob;)Lcom/google/firebase/firestore/model/value/BlobValue;
    .locals 1

    .line 57
    new-instance v0, Lcom/google/firebase/firestore/model/value/BlobValue;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/value/BlobValue;-><init>(Lcom/google/firebase/firestore/Blob;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 1

    .line 49
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/BlobValue;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/BlobValue;->internalValue:Lcom/google/firebase/firestore/Blob;

    check-cast p1, Lcom/google/firebase/firestore/model/value/BlobValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/BlobValue;->internalValue:Lcom/google/firebase/firestore/Blob;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/Blob;->compareTo(Lcom/google/firebase/firestore/Blob;)I

    move-result p1

    return p1

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/BlobValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 39
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/BlobValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/BlobValue;->internalValue:Lcom/google/firebase/firestore/Blob;

    check-cast p1, Lcom/google/firebase/firestore/model/value/BlobValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/BlobValue;->internalValue:Lcom/google/firebase/firestore/Blob;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/Blob;->equals(Ljava/lang/Object;)Z

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

    .line 44
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/BlobValue;->internalValue:Lcom/google/firebase/firestore/Blob;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/Blob;->hashCode()I

    move-result v0

    return v0
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public value()Lcom/google/firebase/firestore/Blob;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/BlobValue;->internalValue:Lcom/google/firebase/firestore/Blob;

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/BlobValue;->value()Lcom/google/firebase/firestore/Blob;

    move-result-object v0

    return-object v0
.end method
