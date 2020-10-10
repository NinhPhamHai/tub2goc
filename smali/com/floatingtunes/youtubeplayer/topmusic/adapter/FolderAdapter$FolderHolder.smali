.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FolderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderHolder"
.end annotation


# instance fields
.field mCount:Landroid/widget/TextView;

.field mCover:Landroid/widget/ImageView;

.field mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

.field mName:Landroid/widget/TextView;

.field mPosition:I

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;Landroid/view/View;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;

    .line 82
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090111

    .line 83
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mCover:Landroid/widget/ImageView;

    const p1, 0x7f0902b9

    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mName:Landroid/widget/TextView;

    const p1, 0x7f0902ae

    .line 85
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mCount:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 3

    .line 90
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mPosition:I

    .line 91
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mPosition:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    .line 93
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mCount:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getDb_type()Ljava/lang/String;

    move-result-object p1

    const-string v0, "country_topvideo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/CountryUtil;->getCountryNameByCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object p1

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getThumbnail()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "http"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_1
    const-string v0, ".png"

    const-string v1, ".webp"

    .line 111
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mStorageReference:Lcom/google/firebase/storage/StorageReference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music/utunes_image/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/storage/StorageReference;->child(Ljava/lang/String;)Lcom/google/firebase/storage/StorageReference;

    move-result-object p1

    .line 113
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mCover:Landroid/widget/ImageView;

    invoke-static {v0, p1, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/util/ImageUtil;->loadImage(Landroid/content/Context;Lcom/google/firebase/storage/StorageReference;Landroid/widget/ImageView;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;->onFolderItemClick(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    return-void
.end method
