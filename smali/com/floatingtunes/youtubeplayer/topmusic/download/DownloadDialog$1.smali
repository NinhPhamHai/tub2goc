.class Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .line 213
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;

    .line 215
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->getMainStorageAudio()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 216
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->getMainStorageVideo()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    .line 217
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    move-result-object v0

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->downloadManager:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManager;

    .line 218
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/service/DownloadManagerService$DownloadManagerBinder;->askForSavePath()Z

    move-result p2

    iput-boolean p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->askForSavePath:Z

    .line 220
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->okButton:Landroidx/appcompat/view/menu/ActionMenuItemView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 222
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 225
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->isAskPath()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, ""

    .line 227
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    const v1, 0x7f1100f8

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    if-nez v0, :cond_1

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    const v1, 0x7f1100f5

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 231
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 233
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageVideo:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    const v2, 0x7f110218

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->mainStorageAudio:Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/io/StoredDirectoryHelper;

    if-nez v0, :cond_2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Attention "

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;

    iget-object v2, v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x104000a

    const/4 v3, 0x0

    .line 242
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v1, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 246
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 248
    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setAskPath(Z)V

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
