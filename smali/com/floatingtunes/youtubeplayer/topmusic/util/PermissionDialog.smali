.class public Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$Listener;
    }
.end annotation


# instance fields
.field mContent:Ljava/lang/String;

.field mListener:Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$Listener;

.field mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method private createAddDialog()Landroidx/appcompat/app/AlertDialog;
    .locals 6

    .line 66
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0066

    const/4 v3, 0x0

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const v2, 0x7f090294

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f09007c

    .line 72
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090097

    .line 73
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    const v5, 0x7f090096

    .line 74
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 75
    iget-object v5, p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;->mContent:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$1;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;)V

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$2;

    invoke-direct {v2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$2;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;
    .locals 2

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "title"

    .line 43
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "content"

    .line 44
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;

    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;-><init>()V

    .line 46
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "title"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;->mTitle:Ljava/lang/String;

    const-string v0, "content"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;->mContent:Ljava/lang/String;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;->createAddDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setListener(Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$Listener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog;->mListener:Lcom/floatingtunes/youtubeplayer/topmusic/util/PermissionDialog$Listener;

    return-void
.end method
