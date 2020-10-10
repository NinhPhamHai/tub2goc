.class public Lcom/firebase/ui/storage/images/FirebaseImageLoader$Factory;
.super Ljava/lang/Object;
.source "FirebaseImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/storage/images/FirebaseImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/google/firebase/storage/StorageReference;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/MultiModelLoaderFactory;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/google/firebase/storage/StorageReference;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance p1, Lcom/firebase/ui/storage/images/FirebaseImageLoader;

    invoke-direct {p1}, Lcom/firebase/ui/storage/images/FirebaseImageLoader;-><init>()V

    return-object p1
.end method
