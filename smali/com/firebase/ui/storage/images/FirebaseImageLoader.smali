.class public Lcom/firebase/ui/storage/images/FirebaseImageLoader;
.super Ljava/lang/Object;
.source "FirebaseImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;,
        Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;,
        Lcom/firebase/ui/storage/images/FirebaseImageLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/google/firebase/storage/StorageReference;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLoadData(Lcom/google/firebase/storage/StorageReference;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/storage/StorageReference;",
            "II",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$LoadData<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance p2, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    new-instance p3, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;

    invoke-direct {p3, p1}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    new-instance p4, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;

    invoke-direct {p4, p1}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageFetcher;-><init>(Lcom/google/firebase/storage/StorageReference;)V

    invoke-direct {p2, p3, p4}, Lcom/bumptech/glide/load/model/ModelLoader$LoadData;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p2
.end method

.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;
    .locals 0

    .line 50
    check-cast p1, Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/firebase/ui/storage/images/FirebaseImageLoader;->buildLoadData(Lcom/google/firebase/storage/StorageReference;IILcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/model/ModelLoader$LoadData;

    move-result-object p1

    return-object p1
.end method

.method public handles(Lcom/google/firebase/storage/StorageReference;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0

    .line 50
    check-cast p1, Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/storage/images/FirebaseImageLoader;->handles(Lcom/google/firebase/storage/StorageReference;)Z

    move-result p1

    return p1
.end method
