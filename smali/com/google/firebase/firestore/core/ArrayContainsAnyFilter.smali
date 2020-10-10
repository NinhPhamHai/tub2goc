.class public Lcom/google/firebase/firestore/core/ArrayContainsAnyFilter;
.super Lcom/google/firebase/firestore/core/FieldFilter;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/value/FieldValue;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/core/Filter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/Filter$Operator;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/firestore/core/FieldFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/Filter$Operator;Lcom/google/firebase/firestore/model/value/FieldValue;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 4

    .line 30
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/value/ArrayValue;

    .line 31
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object p1

    .line 32
    instance-of v1, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 35
    :cond_0
    check-cast p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ArrayValue;->getInternalValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 36
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/ArrayValue;->getInternalValue()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v2
.end method
