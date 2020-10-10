.class Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog$1;
.super Ljava/lang/Object;
.source "AddToPlaylistDialog.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/adapter/AddToPlaylistAdapter$FolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFolderClick(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;->mMusicBean:Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-static {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveToFolder(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    .line 66
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/AddToPlaylistDialog;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
