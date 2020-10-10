.class public final Lcom/google/firebase/firestore/model/value/IntegerValue;
.super Lcom/google/firebase/firestore/model/value/NumberValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# instance fields
.field private final internalValue:J


# direct methods
.method private constructor <init>(Ljava/lang/Long;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/NumberValue;-><init>()V

    .line 23
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/firestore/model/value/IntegerValue;->internalValue:J

    return-void
.end method

.method public static valueOf(Ljava/lang/Long;)Lcom/google/firebase/firestore/model/value/IntegerValue;
    .locals 1

    .line 27
    new-instance v0, Lcom/google/firebase/firestore/model/value/IntegerValue;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/value/IntegerValue;-><init>(Ljava/lang/Long;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 39
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/IntegerValue;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/firebase/firestore/model/value/IntegerValue;->internalValue:J

    check-cast p1, Lcom/google/firebase/firestore/model/value/IntegerValue;

    iget-wide v2, p1, Lcom/google/firebase/firestore/model/value/IntegerValue;->internalValue:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getInternalValue()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/google/firebase/firestore/model/value/IntegerValue;->internalValue:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 44
    iget-wide v0, p0, Lcom/google/firebase/firestore/model/value/IntegerValue;->internalValue:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public value()Ljava/lang/Long;
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/google/firebase/firestore/model/value/IntegerValue;->internalValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/IntegerValue;->value()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
