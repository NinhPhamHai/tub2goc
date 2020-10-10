.class final synthetic Lcom/google/firebase/firestore/core/ActivityScope$$Lambda$4;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/ListenerRegistration;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/ListenerRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/core/ActivityScope$$Lambda$4;->arg$1:Lcom/google/firebase/firestore/ListenerRegistration;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/ListenerRegistration;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/core/ActivityScope$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/core/ActivityScope$$Lambda$4;-><init>(Lcom/google/firebase/firestore/ListenerRegistration;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/ActivityScope$$Lambda$4;->arg$1:Lcom/google/firebase/firestore/ListenerRegistration;

    invoke-interface {v0}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    return-void
.end method
