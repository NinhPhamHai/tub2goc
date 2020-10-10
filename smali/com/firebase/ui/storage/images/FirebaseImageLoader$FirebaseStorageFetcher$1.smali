.class Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$1;
.super Ljava/lang/Object;
.source "FirebaseImageLoader.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;

.field final synthetic val$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# direct methods
.method constructor <init>(Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$1;->this$0:Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;

    iput-object p2, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$1;->val$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher$1;->val$callback:Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;->onLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method
