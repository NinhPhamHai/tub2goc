.class final synthetic Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/auth/internal/IdTokenListener;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;)Lcom/google/firebase/auth/internal/IdTokenListener;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider$$Lambda$1;-><init>(Lcom/google/firebase/firestore/auth/FirebaseAuthCredentialsProvider;)V

    return-object v0
.end method
