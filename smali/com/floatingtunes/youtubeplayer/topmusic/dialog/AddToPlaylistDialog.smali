.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;
.super Landroid/app/DialogFragment;
.source "AddToPlaylistDialog.java"


# instance fields
.field mFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ">;"
        }
    .end annotation
.end field

.field mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

.field mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

.field mTitle:Landroid/widget/TextView;

.field unbinder:Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;
    .locals 2

    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video"

    .line 45
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 46
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;-><init>()V

    .line 47
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const p3, 0x7f0c0035

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 55
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->unbinder:Lbutterknife/Unbinder;

    .line 56
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "video"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    .line 57
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getFoldersToAddMusic()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mFolders:Ljava/util/List;

    .line 59
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 60
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 61
    iget-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mRvPlaylist:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mFolders:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog$1;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;)V

    invoke-direct {p3, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$FolderListener;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 75
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->unbinder:Lbutterknife/Unbinder;

    invoke-interface {v0}, Lbutterknife/Unbinder;->unbind()V

    return-void
.end method
