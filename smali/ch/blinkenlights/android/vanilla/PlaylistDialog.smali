.class public Lch/blinkenlights/android/vanilla/PlaylistDialog;
.super Landroid/app/DialogFragment;
.source "PlaylistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;,
        Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;
    }
.end annotation


# instance fields
.field private final BUTTON_CREATE_PLAYLIST:I

.field private mCallback:Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;

.field private mData:Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

.field private mItemName:[Ljava/lang/String;

.field private mItemValue:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->BUTTON_CREATE_PLAYLIST:I

    return-void
.end method

.method static synthetic access$000(Lch/blinkenlights/android/vanilla/PlaylistDialog;)Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;
    .locals 0

    .line 34
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mData:Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    return-object p0
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/PlaylistDialog;)Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;
    .locals 0

    .line 34
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mCallback:Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;

    return-object p0
.end method

.method public static newInstance(Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;Landroid/content/Intent;Lch/blinkenlights/android/vanilla/LibraryAdapter;)Lch/blinkenlights/android/vanilla/PlaylistDialog;
    .locals 1

    .line 48
    new-instance v0, Lch/blinkenlights/android/vanilla/PlaylistDialog;

    invoke-direct {v0}, Lch/blinkenlights/android/vanilla/PlaylistDialog;-><init>()V

    .line 49
    iput-object p0, v0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mCallback:Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;

    .line 50
    new-instance p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;-><init>(Lch/blinkenlights/android/vanilla/PlaylistDialog;)V

    iput-object p0, v0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mData:Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    .line 51
    iget-object p0, v0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mData:Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->sourceIntent:Landroid/content/Intent;

    .line 52
    iput-object p2, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->allSource:Lch/blinkenlights/android/vanilla/LibraryAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-eqz p2, :cond_0

    .line 135
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mData:Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemValue:[J

    aget-wide v2, v1, p2

    iput-wide v2, v0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->id:J

    .line 136
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemName:[Ljava/lang/String;

    aget-object p2, v1, p2

    iput-object p2, v0, Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;->name:Ljava/lang/String;

    .line 137
    iget-object p2, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mCallback:Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;

    invoke-interface {p2, v0}, Lch/blinkenlights/android/vanilla/PlaylistDialog$Callback;->updatePlaylistFromPlaylistDialog(Lch/blinkenlights/android/vanilla/PlaylistDialog$Data;)V

    goto :goto_0

    .line 124
    :cond_0
    new-instance p2, Lch/blinkenlights/android/vanilla/PlaylistDialog$1;

    invoke-direct {p2, p0}, Lch/blinkenlights/android/vanilla/PlaylistDialog$1;-><init>(Lch/blinkenlights/android/vanilla/PlaylistDialog;)V

    sget v0, Lch/blinkenlights/android/vanilla/R$string;->create:I

    const-string v1, ""

    invoke-static {p2, v1, v0}, Lch/blinkenlights/android/vanilla/PlaylistInputDialog;->newInstance(Lch/blinkenlights/android/vanilla/PlaylistInputDialog$Callback;Ljava/lang/String;I)Lch/blinkenlights/android/vanilla/PlaylistInputDialog;

    move-result-object p2

    .line 132
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PlaylistInputDialog"

    invoke-virtual {p2, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 95
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lch/blinkenlights/android/vanilla/Playlist;->queryPlaylists(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 99
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 100
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemName:[Ljava/lang/String;

    .line 101
    new-array v1, v1, [J

    iput-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemValue:[J

    .line 104
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemName:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lch/blinkenlights/android/vanilla/R$string;->new_playlist:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 105
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemValue:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v1, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 108
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 109
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemValue:[J

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 110
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemName:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    sget v0, Lch/blinkenlights/android/vanilla/R$string;->add_to_playlist:I

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/PlaylistDialog;->mItemName:[Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
