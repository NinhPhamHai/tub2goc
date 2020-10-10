.class final Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$2;
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

.field final synthetic val$iDialogInterface:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AlertDialog;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$2;->val$iDialogInterface:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$2;->val$dialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 57
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$2;->val$iDialogInterface:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;

    invoke-interface {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;->OnNegativeClick()V

    return-void
.end method
