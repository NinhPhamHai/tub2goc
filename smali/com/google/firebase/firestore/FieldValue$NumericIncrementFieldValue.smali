.class Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;
.super Lcom/google/firebase/firestore/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/FieldValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumericIncrementFieldValue"
.end annotation


# instance fields
.field private final operand:Ljava/lang/Number;


# virtual methods
.method getMethodName()Ljava/lang/String;
    .locals 1

    const-string v0, "FieldValue.increment"

    return-object v0
.end method

.method getOperand()Ljava/lang/Number;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/firebase/firestore/FieldValue$NumericIncrementFieldValue;->operand:Ljava/lang/Number;

    return-object v0
.end method
