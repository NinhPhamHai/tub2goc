.class final synthetic Lcom/google/firebase/firestore/remote/RemoteSerializer$$Lambda$2;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/remote/RemoteSerializer;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/RemoteSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer$$Lambda$2;->arg$1:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/remote/RemoteSerializer;)Lcom/google/common/base/Function;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteSerializer$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/RemoteSerializer$$Lambda$2;-><init>(Lcom/google/firebase/firestore/remote/RemoteSerializer;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteSerializer$$Lambda$2;->arg$1:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    check-cast p1, Lcom/google/firestore/v1/Value;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeValue(Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/model/value/FieldValue;

    move-result-object p1

    return-object p1
.end method
