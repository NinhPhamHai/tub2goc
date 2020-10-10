.class Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;
.super Ljava/lang/Object;
.source "FirebaseImageLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/firebase/ui/storage/images/FirebaseImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirebaseStorageKey"
.end annotation


# instance fields
.field private mRef:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Lcom/google/firebase/storage/StorageReference;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;->mRef:Lcom/google/firebase/storage/StorageReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 104
    const-class v0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    check-cast p1, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;

    .line 108
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;->mRef:Lcom/google/firebase/storage/StorageReference;

    iget-object p1, p1, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;->mRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;->mRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->hashCode()I

    move-result v0

    return v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/firebase/ui/storage/images/FirebaseImageLoader$FirebaseStorageKey;->mRef:Lcom/google/firebase/storage/StorageReference;

    invoke-virtual {v0}, Lcom/google/firebase/storage/StorageReference;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
