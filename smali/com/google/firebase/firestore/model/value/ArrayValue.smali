.class public Lcom/google/firebase/firestore/model/value/ArrayValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final internalValue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 28
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    return-void
.end method

.method public static fromList(Ljava/util/List;)Lcom/google/firebase/firestore/model/value/ArrayValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)",
            "Lcom/google/firebase/firestore/model/value/ArrayValue;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/google/firebase/firestore/model/value/ArrayValue;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/value/ArrayValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 4

    .line 43
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    if-eqz v0, :cond_2

    .line 44
    check-cast p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 47
    iget-object v2, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/value/FieldValue;

    iget-object v3, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/value/FieldValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result p1

    return p1

    .line 54
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/ArrayValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 33
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    check-cast p1, Lcom/google/firebase/firestore/model/value/ArrayValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getInternalValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public typeOrder()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/ArrayValue;->value()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    iget-object v1, p0, Lcom/google/firebase/firestore/model/value/ArrayValue;->internalValue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 68
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/value/FieldValue;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
