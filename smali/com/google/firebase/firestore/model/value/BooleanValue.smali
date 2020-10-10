.class public Lcom/google/firebase/firestore/model/value/BooleanValue;
.super Lcom/google/firebase/firestore/model/value/FieldValue;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# static fields
.field private static final FALSE_VALUE:Lcom/google/firebase/firestore/model/value/BooleanValue;

.field private static final TRUE_VALUE:Lcom/google/firebase/firestore/model/value/BooleanValue;


# instance fields
.field private final internalValue:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/google/firebase/firestore/model/value/BooleanValue;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/value/BooleanValue;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/firebase/firestore/model/value/BooleanValue;->TRUE_VALUE:Lcom/google/firebase/firestore/model/value/BooleanValue;

    .line 22
    new-instance v0, Lcom/google/firebase/firestore/model/value/BooleanValue;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/value/BooleanValue;-><init>(Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/firebase/firestore/model/value/BooleanValue;->FALSE_VALUE:Lcom/google/firebase/firestore/model/value/BooleanValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/value/FieldValue;-><init>()V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/firebase/firestore/model/value/BooleanValue;->internalValue:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/Boolean;)Lcom/google/firebase/firestore/model/value/BooleanValue;
    .locals 0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/firebase/firestore/model/value/BooleanValue;->TRUE_VALUE:Lcom/google/firebase/firestore/model/value/BooleanValue;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/firebase/firestore/model/value/BooleanValue;->FALSE_VALUE:Lcom/google/firebase/firestore/model/value/BooleanValue;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I
    .locals 1

    .line 53
    instance-of v0, p1, Lcom/google/firebase/firestore/model/value/BooleanValue;

    if-eqz v0, :cond_0

    .line 54
    iget-boolean v0, p0, Lcom/google/firebase/firestore/model/value/BooleanValue;->internalValue:Z

    check-cast p1, Lcom/google/firebase/firestore/model/value/BooleanValue;

    iget-boolean p1, p1, Lcom/google/firebase/firestore/model/value/BooleanValue;->internalValue:Z

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/util/Util;->compareBooleans(ZZ)I

    move-result p1

    return p1

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/FieldValue;->defaultCompareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/google/firebase/firestore/model/value/FieldValue;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/value/BooleanValue;->compareTo(Lcom/google/firebase/firestore/model/value/FieldValue;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/google/firebase/firestore/model/value/BooleanValue;->internalValue:Z

    return v0
.end method

.method public typeOrder()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public value()Ljava/lang/Boolean;
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/google/firebase/firestore/model/value/BooleanValue;->internalValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic value()Ljava/lang/Object;
    .locals 1

    .line 20
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/value/BooleanValue;->value()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
