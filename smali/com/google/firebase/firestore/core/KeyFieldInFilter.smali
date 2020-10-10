.class public Lcom/google/firebase/firestore/core/KeyFieldInFilter;
.super Lcom/google/firebase/firestore/core/FieldFilter;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/value/ArrayValue;)V
    .locals 2

    .line 27
    sget-object v0, Lcom/google/firebase/firestore/core/Filter$Operator;->IN:Lcom/google/firebase/firestore/core/Filter$Operator;

    invoke-direct {p0, p1, v0, p2}, Lcom/google/firebase/firestore/core/FieldFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/Filter$Operator;Lcom/google/firebase/firestore/model/value/FieldValue;)V

    .line 28
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/value/ArrayValue;->getInternalValue()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 30
    instance-of p2, p2, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Comparing on key with IN, but an array value was not a ReferenceValue"

    invoke-static {p2, v1, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 3

    .line 38
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/value/ArrayValue;

    .line 39
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/ArrayValue;->getInternalValue()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    check-cast v1, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/value/ReferenceValue;->value()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
