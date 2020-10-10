.class public abstract Lcom/google/firebase/firestore/local/Persistence;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"


# static fields
.field public static INDEXING_SUPPORT_ENABLED:Z = false

.field static final TAG:Ljava/lang/String; = "Persistence"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getIndexManager()Lcom/google/firebase/firestore/local/IndexManager;
.end method

.method abstract getMutationQueue(Lcom/google/firebase/firestore/auth/User;)Lcom/google/firebase/firestore/local/MutationQueue;
.end method

.method abstract getReferenceDelegate()Lcom/google/firebase/firestore/local/ReferenceDelegate;
.end method

.method abstract getRemoteDocumentCache()Lcom/google/firebase/firestore/local/RemoteDocumentCache;
.end method

.method abstract getTargetCache()Lcom/google/firebase/firestore/local/TargetCache;
.end method

.method public abstract isStarted()Z
.end method

.method abstract runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/util/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method abstract runTransaction(Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method public abstract start()V
.end method
