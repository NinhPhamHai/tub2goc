.class final synthetic Lcom/google/firebase/firestore/remote/RemoteStore$$Lambda$1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/RemoteStore$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;)Lcom/google/firebase/firestore/remote/OnlineStateTracker$OnlineStateCallback;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/remote/RemoteStore$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/remote/RemoteStore$$Lambda$1;-><init>(Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;)V

    return-object v0
.end method


# virtual methods
.method public handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/RemoteStore$$Lambda$1;->arg$1:Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;

    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/remote/RemoteStore$RemoteStoreCallback;->handleOnlineStateChange(Lcom/google/firebase/firestore/core/OnlineState;)V

    return-void
.end method
