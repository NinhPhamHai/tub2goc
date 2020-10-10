.class public Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/model/mutation/TransformOperation;


# static fields
.field private static final SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;
    .locals 1

    .line 29
    sget-object v0, Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;->SHARED_INSTANCE:Lcom/google/firebase/firestore/model/mutation/ServerTimestampOperation;

    return-object v0
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/value/FieldValue;
    .locals 1

    .line 34
    new-instance v0, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;

    invoke-direct {v0, p2, p1}, Lcom/google/firebase/firestore/model/value/ServerTimestampValue;-><init>(Lcom/google/firebase/Timestamp;Lcom/google/firebase/firestore/model/value/FieldValue;)V

    return-object v0
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/value/FieldValue;Lcom/google/firebase/firestore/model/value/FieldValue;)Lcom/google/firebase/firestore/model/value/FieldValue;
    .locals 0

    return-object p2
.end method
