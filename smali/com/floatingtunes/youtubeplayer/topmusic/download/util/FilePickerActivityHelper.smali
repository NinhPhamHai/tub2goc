.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper;
.super Lcom/nononsenseapps/filepicker/FilePickerActivity;
.source "FilePickerActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;
    }
.end annotation


# instance fields
.field private currentFragment:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/nononsenseapps/filepicker/FilePickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFragment(Ljava/lang/String;IZZZZ)Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZZZZ)",
            "Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v7, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;

    invoke-direct {v7}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v1, p1

    move-object v0, v7

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->setArgs(Ljava/lang/String;IZZZZ)V

    .line 53
    iput-object v7, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper;->currentFragment:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;

    return-object v7
.end method

.method public onBackPressed()V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper;->currentFragment:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;->isBackTop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper;->currentFragment:Lcom/floatingtunes/youtubeplayer/topmusic/download/util/FilePickerActivityHelper$CustomFilePickerFragment;

    invoke-virtual {v0}, Lcom/nononsenseapps/filepicker/AbstractFilePickerFragment;->goUp()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lcom/nononsenseapps/filepicker/AbstractFilePickerActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
