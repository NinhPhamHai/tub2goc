.class public Lch/blinkenlights/android/vanilla/MediaFoldersSelectionActivity;
.super Lch/blinkenlights/android/vanilla/FolderPickerActivity;
.source "MediaFoldersSelectionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->media_folders_header:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 38
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object p1

    .line 39
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/FileUtils;->getFilesystemBrowseStart(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->setCurrentDir(Ljava/io/File;)V

    .line 43
    iget-object v0, p1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->mediaFolders:Ljava/util/ArrayList;

    iget-object p1, p1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->blacklistedFolders:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->enableTritasticSelect(ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onFolderPicked(Ljava/io/File;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->getPreferences(Landroid/content/Context;)Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;

    move-result-object p1

    .line 50
    iput-object p2, p1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->mediaFolders:Ljava/util/ArrayList;

    .line 51
    iput-object p3, p1, Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;->blacklistedFolders:Ljava/util/ArrayList;

    .line 52
    invoke-static {p0, p1}, Lch/blinkenlights/android/medialibrary/MediaLibrary;->setPreferences(Landroid/content/Context;Lch/blinkenlights/android/medialibrary/MediaLibrary$Preferences;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
