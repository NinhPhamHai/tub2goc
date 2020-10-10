.class public Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;
.super Landroid/app/Application;
.source "AppContext.java"


# static fields
.field private static daoSession:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 53
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;
    .locals 1

    .line 63
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->daoSession:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->clear()V

    .line 64
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->daoSession:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    return-object v0
.end method

.method private initFabric()V
    .locals 3

    const/4 v0, 0x1

    .line 68
    new-array v0, v0, [Lio/fabric/sdk/android/Kit;

    new-instance v1, Lcom/crashlytics/android/Crashlytics;

    invoke-direct {v1}, Lcom/crashlytics/android/Crashlytics;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lio/fabric/sdk/android/Fabric;->with(Landroid/content/Context;[Lio/fabric/sdk/android/Kit;)Lio/fabric/sdk/android/Fabric;

    return-void
.end method

.method private initGreenDao()V
    .locals 2

    .line 57
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster$DevOpenHelper;

    const-string v1, "music-db"

    invoke-direct {v0, p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster$DevOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lorg/greenrobot/greendao/database/DatabaseOpenHelper;->getWritableDb()Lorg/greenrobot/greendao/database/Database;

    move-result-object v0

    .line 59
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster;

    invoke-direct {v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster;->newSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->daoSession:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    return-void
.end method


# virtual methods
.method protected getDownloader()Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->init(Lokhttp3/OkHttpClient$Builder;)Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 37
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->initGreenDao()V

    .line 39
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->initFabric()V

    const-string v0, "5cc00c6b3fc1951996000071"

    const-string v1, "umeng"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    invoke-static {p0, v0, v1, v2, v3}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AdmobManager;->initAds(Landroid/content/Context;)V

    .line 42
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 43
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDownloader()Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/extractor/utils/Localization;

    const-string v2, "us"

    const-string v3, "en"

    invoke-direct {v1, v2, v3}, Lorg/schabi/newpipe/extractor/utils/Localization;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lorg/schabi/newpipe/extractor/NewPipe;->init(Lorg/schabi/newpipe/extractor/Downloader;Lorg/schabi/newpipe/extractor/utils/Localization;)V

    .line 44
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/NewPipeSettings;->initSettings(Landroid/content/Context;)V

    return-void
.end method
