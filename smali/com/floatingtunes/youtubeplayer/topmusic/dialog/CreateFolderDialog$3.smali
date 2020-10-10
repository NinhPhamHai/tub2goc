.class final Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog;->createAddDialog(Landroid/app/Activity;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;)Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroidx/appcompat/app/AlertDialog;

.field final synthetic val$editText:Landroidx/appcompat/widget/AppCompatEditText;

.field final synthetic val$iDialogInterface:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/app/AlertDialog;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;->val$editText:Landroidx/appcompat/widget/AppCompatEditText;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p3, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;->val$iDialogInterface:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 63
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;->val$editText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-direct {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;-><init>()V

    .line 66
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;->val$editText:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_name(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setCreate_time(Ljava/lang/String;)V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setUpdate_time(Ljava/lang/String;)V

    const-string v0, "FOLDER_TYPE_USER"

    .line 69
    invoke-virtual {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_type(Ljava/lang/String;)V

    .line 71
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->createUserFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 74
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;->val$iDialogInterface:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;

    invoke-interface {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;->OnPositiveClick()V

    return-void
.end method
