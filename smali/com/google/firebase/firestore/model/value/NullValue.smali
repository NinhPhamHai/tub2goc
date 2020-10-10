.class public Lcom/google/firebase/firestore/model/value/NullValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# static fields
.field private static final INSTANCE:Lcom/google/firebase/firestore/model/value/NullValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/google/firebase/firestore/model/value/NullValue;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/value/NullValue;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/value/NullValue;->INSTANCE:Lcom/google/firebase/firestore/model/value/NullValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    return-void
.end method

.method public static nullValue()Lcom/google/firebase/firestore/model/value/NullValue;
    .locals 1

    .line 56
    sget-object v0, Lcom/google/firebase/firestore/model/value/NullValue;->INSTANCE:Lcom/google/firebase/firestore/model/value/NullValue;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 1

    .line 48
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/NullValue;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/NullValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 38
    instance-of p1, p1, Lcom/google/firebase/firestore/model/value/NullValue;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public value()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
