.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster;
.super Lorg/greenrobot/greendao/AbstractDaoMaster;
.source "DaoMaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster$DevOpenHelper;,
        Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoMaster$OpenHelper;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;)V
    .locals 1

    const/16 v0, 0x64

    .line 51
    invoke-direct {p0, p1, v0}, Lorg/greenrobot/greendao/AbstractDaoMaster;-><init>(Lorg/greenrobot/greendao/database/Database;I)V

    .line 52
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 53
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    .line 54
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    invoke-virtual {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoMaster;->registerDaoClass(Ljava/lang/Class;)V

    return-void
.end method

.method public static createAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 24
    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 25
    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 26
    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;->createTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method

.method public static dropAllTables(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 0

    .line 31
    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 32
    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    .line 33
    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;->dropTable(Lorg/greenrobot/greendao/database/Database;Z)V

    return-void
.end method


# virtual methods
.method public newSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;
    .locals 4

    .line 58
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    iget-object v1, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->db:Lorg/greenrobot/greendao/database/Database;

    sget-object v2, Lorg/greenrobot/greendao/identityscope/IdentityScopeType;->Session:Lorg/greenrobot/greendao/identityscope/IdentityScopeType;

    iget-object v3, p0, Lorg/greenrobot/greendao/AbstractDaoMaster;->daoConfigMap:Ljava/util/Map;

    invoke-direct {v0, v1, v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V

    return-object v0
.end method
