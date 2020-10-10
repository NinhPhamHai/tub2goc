.class public Lcom/google/firebase/firestore/model/value/ReferenceValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-void
.end method

.method public static valueOf(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/value/ReferenceValue;
    .locals 1

    .line 74
    new-instance v0, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/model/value/ReferenceValue;-><init>(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 2

    .line 64
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    if-eqz v0, :cond_1

    .line 65
    check-cast p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    .line 66
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    iget-object v1, p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/DatabaseId;->compareTo(Lcom/google/firebase/firestore/model/DatabaseId;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v0

    :goto_0
    return v0

    .line 69
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 21
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/ReferenceValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 46
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 47
    check-cast p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    .line 48
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v2, p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ReferenceValue;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/DatabaseId;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DatabaseId;->hashCode()I

    move-result v0

    const/16 v1, 0x3c1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public value()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ReferenceValue;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/ReferenceValue;->value()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    return-object v0
.end method
