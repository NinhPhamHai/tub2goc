.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/cloudstore/firebase/FirestoreUtil;
.super Ljava/lang/Object;
.source "FirestoreUtil.java"


# direct methods
.method public static checkFireStoreConfig()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/google/firebase/firestore/FirebaseFirestore;->getInstance()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    const-string v1, "music_db_201905"

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->collection(Ljava/lang/String;)Lcom/google/firebase/firestore/CollectionReference;

    move-result-object v0

    const-string v1, "music_config"

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    .line 66
    sget-object v1, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/DocumentReference;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/cloudstore/firebase/FirestoreUtil$1;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/cloudstore/firebase/FirestoreUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
