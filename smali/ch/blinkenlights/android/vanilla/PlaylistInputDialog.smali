.class public Lch/blinkenlights/android/vanilla/PlaylistInputDialog;
.super Landroid/app/DialogFragment;
.source "PlaylistInputDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;
    }
.end annotation


# instance fields
.field private mActionRes:I

.field private mCallback:Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditText:Landroid/widget/EditText;

.field private mInitialText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;Ljava/lang/String;I)Lch/blinkenlights/android/vanilla/PlaylistInputDialog;
    .locals 1

    .line 54
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;

    invoke-direct {v0}, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;-><init>()V

    .line 55
    iput-object p0, v0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mCallback:Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;

    .line 56
    iput-object p1, v0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mInitialText:Ljava/lang/String;

    .line 57
    iput p2, v0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mActionRes:I

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mCallback:Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;->onSuccess(Ljava/lang/String;)V

    .line 155
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 89
    new-instance p1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mEditText:Landroid/widget/EditText;

    .line 90
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mEditText:Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 91
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->choose_playlist_name:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mEditText:Landroid/widget/EditText;

    .line 95
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mActionRes:I

    .line 96
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 97
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mDialog:Landroid/app/AlertDialog;

    .line 99
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 101
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 110
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mInitialText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .line 133
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mInitialText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, -0x1

    if-eqz p2, :cond_0

    .line 135
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 137
    :cond_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    const/4 p4, 0x1

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lch/blinkenlights/android/vanilla/Playlist;->getPlaylist(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long p4, p1, v0

    if-nez p4, :cond_1

    iget p1, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mActionRes:I

    goto :goto_0

    :cond_1
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->overwrite:I

    .line 139
    :goto_0
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2, p3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(I)V

    :goto_1
    return-void
.end method
