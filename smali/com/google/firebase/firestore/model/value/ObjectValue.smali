.class public Lcom/google/firebase/firestore/model/value/ObjectValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# static fields
.field private static final EMPTY_INSTANCE:Lcom/google/firebase/firestore/model/value/ObjectValue;


# instance fields
.field private final internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/google/firebase/firestore/model/value/ObjectValue;

    .line 34
    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->emptyMap(Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/value/ObjectValue;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    sput-object v0, Lcom/google/firebase/firestore/model/value/ObjectValue;->EMPTY_INSTANCE:Lcom/google/firebase/firestore/model/value/ObjectValue;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)V"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-void
.end method

.method public static emptyObject()Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 1

    .line 49
    sget-object v0, Lcom/google/firebase/firestore/model/value/ObjectValue;->EMPTY_INSTANCE:Lcom/google/firebase/firestore/model/value/ObjectValue;

    return-object v0
.end method

.method public static fromImmutableMap(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)",
            "Lcom/google/firebase/firestore/model/value/ObjectValue;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->EMPTY_INSTANCE:Lcom/google/firebase/firestore/model/value/ObjectValue;

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/value/ObjectValue;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v0
.end method

.method public static fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)",
            "Lcom/google/firebase/firestore/model/value/ObjectValue;"
        }
    .end annotation

    .line 37
    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap$Builder;->fromMap(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/firestore/model/value/ObjectValue;->fromImmutableMap(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p0

    return-object p0
.end method

.method private setChild(Ljava/lang/String;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->fromImmutableMap(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 5

    .line 114
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-eqz v0, :cond_3

    .line 115
    check-cast p1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    .line 116
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 118
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    return v3

    .line 125
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/value/FieldValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result v1

    if-eqz v1, :cond_0

    return v1

    .line 132
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/util/Util;->compareBooleans(ZZ)I

    move-result p1

    return p1

    .line 134
    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 32
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public delete(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 4

    .line 177
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot delete field for empty path on ObjectValue"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->getFirstSegment()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->fromImmutableMap(Lcom/google/firebase/database/collection/ImmutableSortedMap;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    return-object p1

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 183
    instance-of v2, v1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-eqz v2, :cond_2

    .line 184
    check-cast v1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->popFirst()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->delete(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    .line 185
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->setChild(Ljava/lang/String;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 140
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    check-cast p1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    iget-object p1, p1, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 141
    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/model/value/FieldValue;
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    .line 201
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 202
    instance-of v2, v1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 205
    :cond_0
    check-cast v1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    iget-object v1, v1, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getInternalValue()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;
    .locals 4

    .line 152
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Cannot set field for empty path on ObjectValue"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->getFirstSegment()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 155
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/model/value/ObjectValue;->setChild(Ljava/lang/String;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    return-object p1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 159
    instance-of v2, v1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    if-eqz v2, :cond_2

    .line 160
    check-cast v1, Lcom/google/firebase/firestore/model/value/ObjectValue;

    goto :goto_1

    .line 162
    :cond_2
    invoke-static {}, Lcom/google/firebase/firestore/model/value/ObjectValue;->emptyObject()Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object v1

    .line 164
    :goto_1
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->popFirst()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/firestore/model/value/ObjectValue;->set(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    .line 165
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/model/value/ObjectValue;->setChild(Ljava/lang/String;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ObjectValue;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public typeOrder()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/ObjectValue;->value()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/google/firebase/firestore/model/value/ObjectValue;->internalValue:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/value/FieldValue;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
