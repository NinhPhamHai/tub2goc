.class Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;
.super Lcom/google/firebase/firestore/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayUnionFieldValue"
.end annotation


# instance fields
.field private final elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldValue$ArrayUnionFieldValue;->elements:Ljava/util/List;

    return-object v0
.end method

.method getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "FieldValue.arrayUnion"

    return-object v0
.end method
