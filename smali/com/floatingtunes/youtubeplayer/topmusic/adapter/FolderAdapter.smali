.class public Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;,
        Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

.field private mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field mStorageReference:Lcom/google/firebase/storage/StorageReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 48
    invoke-static {}, Lcom/google/firebase/storage/FirebaseStorage;->getInstance()Lcom/google/firebase/storage/FirebaseStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    .line 49
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mFirebaseStorage:Lcom/google/firebase/storage/FirebaseStorage;

    invoke-virtual {v0}, Lcom/google/firebase/storage/FirebaseStorage;->getReference()Lcom/google/firebase/storage/StorageReference;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mStorageReference:Lcom/google/firebase/storage/StorageReference;

    .line 50
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    iput-object p4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;

    .line 53
    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Landroid/content/Context;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$IFolderListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 30
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->onBindViewHolder(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;I)V
    .locals 0

    .line 66
    invoke-virtual {p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;->bindData(I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;
    .locals 2

    .line 59
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c00d2

    const/4 v1, 0x0

    .line 60
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;

    invoke-direct {p2, p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter$FolderHolder;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/FolderAdapter;Landroid/view/View;)V

    return-object p2
.end method
