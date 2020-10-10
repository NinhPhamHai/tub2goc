.class public Lcom/google/firebase/storage/StorageTask$SnapshotBase;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-storage@@19.1.1"

# interfaces
.implements Lcom/google/firebase/storage/StorageTask$ProvideError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/storage/StorageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapshotBase"
.end annotation


# instance fields
.field private final error:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/google/firebase/storage/StorageTask;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageTask;Ljava/lang/Exception;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->this$0:Lcom/google/firebase/storage/StorageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_2

    .line 1140
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1142
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_CANCELED:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    goto :goto_0

    .line 1143
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageTask;->getInternalState()I

    move-result p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_1

    .line 1145
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1}, Lcom/google/firebase/storage/StorageException;->fromErrorStatus(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/storage/StorageException;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1147
    iput-object p1, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    goto :goto_0

    .line 1150
    :cond_2
    iput-object p2, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    :goto_0
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/google/firebase/storage/StorageTask$SnapshotBase;->error:Ljava/lang/Exception;

    return-object v0
.end method
