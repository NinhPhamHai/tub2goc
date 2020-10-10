.class public Lcom/google/firebase/firestore/model/value/GeoPointValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final internalValue:Lcom/google/firebase/firestore/GeoPoint;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/GeoPoint;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/GeoPointValue;->internalValue:Lcom/google/firebase/firestore/GeoPoint;

    return-void
.end method

.method public static valueOf(Lcom/google/firebase/firestore/GeoPoint;)Lcom/google/firebase/firestore/model/value/GeoPointValue;
    .locals 1

    .line 58
    new-instance v0, Lcom/google/firebase/firestore/model/value/GeoPointValue;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/value/GeoPointValue;-><init>(Lcom/google/firebase/firestore/GeoPoint;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 1

    .line 50
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/GeoPointValue;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/GeoPointValue;->internalValue:Lcom/google/firebase/firestore/GeoPoint;

    check-cast p1, Lcom/google/firebase/firestore/model/value/GeoPointValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/GeoPointValue;->internalValue:Lcom/google/firebase/firestore/GeoPoint;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/GeoPoint;->compareTo(Lcom/google/firebase/firestore/GeoPoint;)I

    move-result p1

    return p1

    .line 53
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/GeoPointValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 40
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/GeoPointValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/GeoPointValue;->internalValue:Lcom/google/firebase/firestore/GeoPoint;

    check-cast p1, Lcom/google/firebase/firestore/model/value/GeoPointValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/GeoPointValue;->internalValue:Lcom/google/firebase/firestore/GeoPoint;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/GeoPoint;->equals(Ljava/lang/Object;)Z

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

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/GeoPointValue;->internalValue:Lcom/google/firebase/firestore/GeoPoint;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/GeoPoint;->hashCode()I

    move-result v0

    return v0
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public value()Lcom/google/firebase/firestore/GeoPoint;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/GeoPointValue;->internalValue:Lcom/google/firebase/firestore/GeoPoint;

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/GeoPointValue;->value()Lcom/google/firebase/firestore/GeoPoint;

    move-result-object v0

    return-object v0
.end method
