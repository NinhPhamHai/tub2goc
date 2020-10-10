.class Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AddToPlaylistAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListHolder"
.end annotation


# instance fields
.field mCover:Landroid/widget/ImageView;

.field mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

.field mLayout:Landroid/widget/LinearLayout;

.field mName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;Landroid/view/View;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;

    .line 62
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090141

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mLayout:Landroid/widget/LinearLayout;

    const p1, 0x7f090111

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mCover:Landroid/widget/ImageView;

    const p1, 0x7f0902b9

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mName:Landroid/widget/TextView;

    .line 66
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bindData(I)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;->mFolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    .line 71
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Favorites \u2665"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f0802cf

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mCover:Landroid/widget/ImageView;

    const v0, 0x7f080289

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter;->mFolderListener:Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$FolderListener;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$ListHolder;->mFolder:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$FolderListener;->onFolderClick(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    return-void
.end method
