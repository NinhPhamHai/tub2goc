.class public abstract Lcom/google/firebase/firestore/model/value/NumberValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 6

    .line 34
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/NumberValue;

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1

    .line 37
    :cond_0
    instance-of v0, p0, Lcom/google/firebase/firestore/model/value/DoubleValue;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "Unknown NumberValue: %s"

    if-eqz v0, :cond_2

    .line 38
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/model/value/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/DoubleValue;->getInternalValue()D

    move-result-wide v4

    .line 39
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/DoubleValue;

    if-eqz v0, :cond_1

    .line 40
    check-cast p1, Lcom/google/firebase/firestore/model/value/DoubleValue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/DoubleValue;->getInternalValue()D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareDoubles(DD)I

    move-result p1

    return p1

    .line 42
    :cond_1
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/IntegerValue;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    check-cast p1, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/IntegerValue;->getInternalValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareMixed(DJ)I

    move-result p1

    return p1

    .line 46
    :cond_2
    instance-of v0, p0, Lcom/google/firebase/firestore/model/value/IntegerValue;

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    move-object v0, p0

    check-cast v0, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/IntegerValue;->getInternalValue()J

    move-result-wide v4

    .line 48
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/IntegerValue;

    if-eqz v0, :cond_3

    .line 49
    check-cast p1, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/IntegerValue;->getInternalValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareLongs(JJ)I

    move-result p1

    return p1

    .line 51
    :cond_3
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/DoubleValue;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    check-cast p1, Lcom/google/firebase/firestore/model/value/DoubleValue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/DoubleValue;->getInternalValue()D

    move-result-wide v0

    invoke-static {v0, v1, v4, v5}, Lcom/google/firebase/firestore/util/Util;->compareMixed(DJ)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/NumberValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
