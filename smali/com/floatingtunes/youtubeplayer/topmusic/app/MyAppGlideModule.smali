.class public Lcom/floatingtunes/youtubeplayer/topmusic/app/MyAppGlideModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "MyAppGlideModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 1

    .line 24
    const-class p1, Lcom/google/firebase/storage/StorageReference;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$Factory;

    invoke-direct {v0}, Lcom/firebase/ui/storage/images/FirebaseImageLoader$Factory;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/Registry;

    return-void
.end method
