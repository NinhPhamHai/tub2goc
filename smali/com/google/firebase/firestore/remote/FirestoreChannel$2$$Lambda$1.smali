.class final synthetic Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# static fields
.field private static final instance:Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;

    invoke-direct {v0}, Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;->instance:Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/android/gms/tasks/OnSuccessListener;
    .locals 1

    sget-object v0, Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;->instance:Lcom/google/firebase/firestore/remote/FirestoreChannel$2$$Lambda$1;

    return-object v0
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/grpc/ClientCall;

    invoke-virtual {p1}, Lio/grpc/ClientCall;->halfClose()V

    return-void
.end method
