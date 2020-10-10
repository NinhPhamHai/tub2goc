.class public Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/model/mutation/TransformOperation;


# instance fields
.field private operand:Lcom/google/firebase/firestore/model/value/NumberValue;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/value/NumberValue;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firebase/firestore/model/value/NumberValue;

    return-void
.end method

.method private operandAsDouble()D
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firebase/firestore/model/value/NumberValue;

    instance-of v1, v0, Lcom/google/firebase/firestore/model/value/DoubleValue;

    if-eqz v1, :cond_0

    .line 102
    check-cast v0, Lcom/google/firebase/firestore/model/value/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/DoubleValue;->getInternalValue()D

    move-result-wide v0

    return-wide v0

    .line 103
    :cond_0
    instance-of v1, v0, Lcom/google/firebase/firestore/model/value/IntegerValue;

    if-eqz v1, :cond_1

    .line 104
    check-cast v0, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/IntegerValue;->getInternalValue()J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'operand\' to be of Number type, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firebase/firestore/model/value/NumberValue;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 106
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0
.end method

.method private operandAsLong()J
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firebase/firestore/model/value/NumberValue;

    instance-of v1, v0, Lcom/google/firebase/firestore/model/value/DoubleValue;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/google/firebase/firestore/model/value/DoubleValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/DoubleValue;->getInternalValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 115
    :cond_0
    instance-of v1, v0, Lcom/google/firebase/firestore/model/value/IntegerValue;

    if-eqz v1, :cond_1

    .line 116
    check-cast v0, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/value/IntegerValue;->getInternalValue()J

    move-result-wide v0

    return-wide v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected \'operand\' to be of Number type, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firebase/firestore/model/value/NumberValue;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0
.end method

.method private safeIncrement(JJ)J
    .locals 3

    add-long v0, p1, p3

    xor-long/2addr p1, v0

    xor-long/2addr p3, v0

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long v2, p1, p3

    if-ltz v2, :cond_0

    return-wide v0

    :cond_0
    cmp-long p1, v0, p3

    if-ltz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_1
    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/value/FieldValue;
    .locals 3

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->computeBaseValue(Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/NumberValue;

    move-result-object p2

    .line 44
    instance-of v0, p2, Lcom/google/firebase/firestore/model/value/IntegerValue;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firebase/firestore/model/value/NumberValue;

    instance-of v1, v1, Lcom/google/firebase/firestore/model/value/IntegerValue;

    if-eqz v1, :cond_0

    .line 45
    check-cast p2, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/value/IntegerValue;->getInternalValue()J

    move-result-wide p1

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operandAsLong()J

    move-result-wide v0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->safeIncrement(JJ)J

    move-result-wide p1

    .line 46
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/value/IntegerValue;->valueOf(Ljava/lang/Long;)Lcom/google/firebase/firestore/model/value/IntegerValue;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz v0, :cond_1

    .line 48
    check-cast p2, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/value/IntegerValue;->getInternalValue()J

    move-result-wide p1

    long-to-double p1, p1

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operandAsDouble()D

    move-result-wide v0

    add-double/2addr p1, v0

    .line 49
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/value/DoubleValue;->valueOf(Ljava/lang/Double;)Lcom/google/firebase/firestore/model/value/DoubleValue;

    move-result-object p1

    return-object p1

    .line 51
    :cond_1
    instance-of v0, p2, Lcom/google/firebase/firestore/model/value/DoubleValue;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Expected NumberValue to be of type DoubleValue, but was "

    .line 51
    invoke-static {v0, p1, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    check-cast p2, Lcom/google/firebase/firestore/model/value/DoubleValue;

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/value/DoubleValue;->getInternalValue()D

    move-result-wide p1

    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operandAsDouble()D

    move-result-wide v0

    add-double/2addr p1, v0

    .line 56
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/value/DoubleValue;->valueOf(Ljava/lang/Double;)Lcom/google/firebase/firestore/model/value/DoubleValue;

    move-result-object p1

    return-object p1
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/FieldValue;
    .locals 0

    return-object p2
.end method

.method public computeBaseValue(Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/NumberValue;
    .locals 2

    .line 76
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/NumberValue;

    if-eqz v0, :cond_0

    .line 77
    check-cast p1, Lcom/google/firebase/firestore/model/value/NumberValue;

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 78
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/firestore/model/value/IntegerValue;->valueOf(Ljava/lang/Long;)Lcom/google/firebase/firestore/model/value/IntegerValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getOperand()Lcom/google/firebase/firestore/model/value/FieldValue;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/NumericIncrementTransformOperation;->operand:Lcom/google/firebase/firestore/model/value/NumberValue;

    return-object v0
.end method
