.class public Lch/blinkenlights/android/vanilla/FilebrowserStartActivity;
.super Lch/blinkenlights/android/vanilla/FolderPickerActivity;
.source "FilebrowserStartActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    sget p1, Lch/blinkenlights/android/vanilla/R$string;->filebrowser_start:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 34
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/FileUtils;->getFilesystemBrowseStart(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Lch/blinkenlights/android/vanilla/FolderPickerActivity;->setCurrentDir(Ljava/io/File;)V

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

    .line 41
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/SharedPrefHelper;->getSettings(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string p3, "filesystem_browse_start"

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
