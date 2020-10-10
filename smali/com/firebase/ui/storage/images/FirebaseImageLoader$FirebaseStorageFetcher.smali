.class Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;
.super Ljava/lang/Object;
.source "FirebaseImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/storage/images/FirebaseImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirebaseStorageFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private mInputStream:Ljava/io/InputStream;

.field private mRef:Lcom/google/firebase/storage/StorageReference;

.field private mStreamTask:Lcom/google/firebase/storage/StreamDownloadTask;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mRef:Lcom/google/firebase/storage/StorageReference;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;)Ljava/io/InputStream;
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mInputStream:Ljava/io/InputStream;

    return-object p0
.end method

.method static synthetic access$002(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mInputStream:Ljava/io/InputStream;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mStreamTask:Lcom/google/firebase/storage/StreamDownloadTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mStreamTask:Lcom/google/firebase/storage/StreamDownloadTask;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 152
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FirebaseImageLoader"

    const-string v2, "Could not close stream"

    .line 155
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getDataClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 171
    const-class v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 1

    .line 177
    sget-object v0, Lcom/bumptech/glide/load/DataSource;->REMOTE:Lcom/bumptech/glide/load/DataSource;

    return-object v0
.end method

.method public loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
            "-",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 130
    iget-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StorageReference;->getStream()Lcom/google/firebase/storage/StreamDownloadTask;

    move-result-object p1

    iput-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mStreamTask:Lcom/google/firebase/storage/StreamDownloadTask;

    .line 131
    iget-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->mStreamTask:Lcom/google/firebase/storage/StreamDownloadTask;

    new-instance v0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;

    invoke-direct {v0, p0, p2}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;-><init>(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 132
    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/StorageTask;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/firebase/storage/StorageTask;

    new-instance v0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$1;

    invoke-direct {v0, p0, p2}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$1;-><init>(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V

    .line 139
    invoke-virtual {p1, v0}, Lcom/google/firebase/storage/StorageTask;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/firebase/storage/StorageTask;

    return-void
.end method
