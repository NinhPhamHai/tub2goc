.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;
.super Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalViewHolder;
.source "SearchPlaylistHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalViewHolder;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private channel_tv:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCover:Landroid/widget/ImageView;

.field private mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mMore:Landroid/widget/ImageView;

.field private mPosition:I

.field private mRoot:Landroid/view/View;

.field storage:Lcom/google/firebase/storage/FirebaseStorage;

.field storageRef:Lcom/google/firebase/storage/StorageReference;

.field private title_tv:Landroid/widget/TextView;

.field private tv_count:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/NormalViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f09005f

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->channel_tv:Landroid/widget/TextView;

    const v0, 0x7f090111

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f090297

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->title_tv:Landroid/widget/TextView;

    const v0, 0x7f0902ae

    .line 46
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->tv_count:Landroid/widget/TextView;

    const v0, 0x7f090194

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mMore:Landroid/widget/ImageView;

    const v0, 0x7f090149

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mRoot:Landroid/view/View;

    .line 49
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mDataList:Ljava/util/List;

    .line 50
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mContext:Landroid/content/Context;

    .line 51
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    .line 52
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mMore:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mRoot:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 55
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->storage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {p1}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->storageRef:Lcom/google/firebase/storage/StorageReference;

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 3

    .line 61
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mPosition:I

    .line 63
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mDataList:Ljava/util/List;

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 64
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    const-string v1, "http"

    if-eqz v0, :cond_1

    .line 65
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;

    .line 67
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->title_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->channel_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->tv_count:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/module/PlaylistBean;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->storageRef:Lcom/google/firebase/storage/StorageReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music/utunes_image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Lcom/google/firebase/storage/StorageReference;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 82
    :cond_1
    instance-of v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

    if-eqz v0, :cond_2

    .line 83
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;

    .line 84
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->title_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->channel_tv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->getChannelTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/home/HomeChannel;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Landroid/net/Uri;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_2
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090149

    if-eq p1, v0, :cond_1

    const v0, 0x7f090194

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onMoreItemClick(Ljava/lang/Object;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mDataList:Ljava/util/List;

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/holder/SearchPlaylistHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/listener/ItemListener;->onItemClick(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
