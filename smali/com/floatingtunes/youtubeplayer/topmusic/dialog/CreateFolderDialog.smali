.class public Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"


# direct methods
.method public static createAddDialog(Landroid/app/Activity;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;)Landroidx/appcompat/app/AlertDialog;
    .locals 4

    .line 28
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const v1, 0x7f0c0063

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 32
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const v1, 0x7f0900b4

    .line 33
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    .line 34
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$1;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$1;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x7f090054

    .line 51
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v3, 0x7f090087

    .line 52
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    .line 53
    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$2;

    invoke-direct {v3, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$2;-><init>(Landroidx/appcompat/app/AlertDialog;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;

    invoke-direct {v2, v1, v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/CreateFolderDialog$3;-><init>(Landroidx/appcompat/widget/AppCompatEditText;Landroidx/appcompat/app/AlertDialog;Lcom/floatingtunes/youtubeplayer/topmusic/dialog/IDialogInterface;)V

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
