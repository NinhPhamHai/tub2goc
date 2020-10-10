.class final synthetic Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/firestore/util/Supplier;


# instance fields
.field private final arg$1:Lcom/google/firebase/firestore/local/LocalStore;

.field private final arg$2:Lcom/google/firebase/firestore/remote/RemoteEvent;

.field private final arg$3:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;->arg$2:Lcom/google/firebase/firestore/remote/RemoteEvent;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;->arg$3:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/util/Supplier;
    .locals 1

    new-instance v0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;-><init>(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;->arg$1:Lcom/google/firebase/firestore/local/LocalStore;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;->arg$2:Lcom/google/firebase/firestore/remote/RemoteEvent;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/LocalStore$$Lambda$6;->arg$3:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/local/LocalStore;->lambda$applyRemoteEvent$5(Lcom/google/firebase/firestore/local/LocalStore;Lcom/google/firebase/firestore/remote/RemoteEvent;Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method
