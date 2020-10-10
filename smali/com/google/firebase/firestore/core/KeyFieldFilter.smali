.class public Lcom/google/firebase/firestore/core/KeyFieldFilter;
.super Lcom/google/firebase/firestore/core/FieldFilter;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/Filter$Operator;Lcom/google/firebase/firestore/model/value/ReferenceValue;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/firestore/core/FieldFilter;-><init>(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/Filter$Operator;Lcom/google/firebase/firestore/model/value/FieldValue;)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/value/ReferenceValue;

    .line 30
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MaybeDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/ReferenceValue;->value()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result p1

    .line 31
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/core/FieldFilter;->matchesComparison(I)Z

    move-result p1

    return p1
.end method
