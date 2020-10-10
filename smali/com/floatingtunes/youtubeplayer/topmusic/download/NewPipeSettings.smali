.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;
.super Ljava/lang/Object;
.source "NewPipeSettings.java"


# direct methods
.method public static getAudioDownloadFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 72
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const v1, 0x7f1100f3

    invoke-static {p0, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getDir(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 89
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getDir(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 78
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object p1

    .line 81
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 82
    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getNewPipeChildFolderPathForDir(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 84
    invoke-static {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getNewPipeChildFolderPathForDir(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getNewPipeChildFolderPathForDir(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/util/Constants;->APP_NAME:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVideoDownloadFolder(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 68
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const v1, 0x7f1100f9

    invoke-static {p0, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getDir(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static initSettings(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getVideoDownloadFolder(Landroid/content/Context;)Ljava/lang/String;

    .line 64
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->getAudioDownloadFolder(Landroid/content/Context;)Ljava/lang/String;

    return-void
.end method
