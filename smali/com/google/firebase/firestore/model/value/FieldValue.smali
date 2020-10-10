.class public abstract Lcom/google/firebase/firestore/model/value/FieldValue;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/model/value/FieldValue;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method protected defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 3

    .line 82
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;->typeOrder()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->typeOrder()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Default compareTo should not be used for values of same type."

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;->value()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract typeOrder()I
.end method

.method public abstract value()Ljava/lang/Object;
.end method
