.class public Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation$Union;
.super Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Union"
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/value/FieldValue;",
            ">;)V"
        }
    .end annotation

    .line 101
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected apply(Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/ArrayValue;
    .locals 3

    .line 106
    invoke-static {p1}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->coercedFieldValuesArray(Lcom/google/firebase/firestore/model/value/FieldValue;)Ljava/util/ArrayList;

    move-result-object p1

    .line 107
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/ArrayTransformOperation;->getElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/value/FieldValue;

    .line 108
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {p1}, Lcom/google/firebase/firestore/model/value/ArrayValue;->fromList(Ljava/util/List;)Lcom/google/firebase/firestore/model/value/ArrayValue;

    move-result-object p1

    return-object p1
.end method
