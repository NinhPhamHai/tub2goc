.class Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;
.super Ljava/lang/Object;
.source "FirebaseImageLoader.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;

.field final synthetic val$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# direct methods
.method constructor <init>(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;->this$0:Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;

    iput-object p2, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;->val$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;->this$0:Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;

    invoke-virtual {p1}, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;->getStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->access$002(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 136
    iget-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;->val$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;->this$0:Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;

    invoke-static {v0}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->access$000(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onDataReady(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$2;->onSuccess(Lcom/google/firebase/storage/StreamDownloadTask$TaskSnapshot;)V

    return-void
.end method
