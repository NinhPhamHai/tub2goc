.class Lcom/google/firebase/firestore/FirestoreMultiDbComponent;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/firebase/FirebaseAppLifecycleListener;
.implements Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;


# instance fields
.field private final app:Lcom/google/firebase/FirebaseApp;

.field private final authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

.field private final context:Landroid/content/Context;

.field private final instances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            ">;"
        }
    .end annotation
.end field

.field private final metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/InternalAuthProvider;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->instances:Ljava/util/Map;

    .line 48
    iput-object p1, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->app:Lcom/google/firebase/FirebaseApp;

    .line 50
    iput-object p3, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    .line 51
    iput-object p4, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    .line 52
    iget-object p1, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->app:Lcom/google/firebase/FirebaseApp;

    invoke-virtual {p1, p0}, Lcom/google/firebase/FirebaseApp;->addLifecycleEventListener(Lcom/google/firebase/FirebaseAppLifecycleListener;)V

    return-void
.end method


# virtual methods
.method declared-synchronized get(Ljava/lang/String;)Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 7

    monitor-enter p0

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->instances:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    if-nez v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->app:Lcom/google/firebase/FirebaseApp;

    iget-object v3, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->authProvider:Lcom/google/firebase/auth/internal/InternalAuthProvider;

    iget-object v6, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->metadataProvider:Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;

    move-object v4, p1

    move-object v5, p0

    .line 61
    invoke-static/range {v1 .. v6}, Lcom/google/firebase/firestore/FirebaseFirestore;->newInstance(Landroid/content/Context;Lcom/google/firebase/FirebaseApp;Lcom/google/firebase/auth/internal/InternalAuthProvider;Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestore$InstanceRegistry;Lcom/google/firebase/firestore/remote/GrpcMetadataProvider;)Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/google/firebase/firestore/FirestoreMultiDbComponent;->instances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
