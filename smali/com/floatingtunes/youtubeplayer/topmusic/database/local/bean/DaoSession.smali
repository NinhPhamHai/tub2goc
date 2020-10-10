.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;
.super Lorg/greenrobot/greendao/AbstractDaoSession;
.source "DaoSession.java"


# instance fields
.field private final folderDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

.field private final folderDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final searchRecordDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

.field private final searchRecordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

.field private final videoCacheDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

.field private final videoCacheDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/database/Database;Lorg/greenrobot/greendao/identityscope/IdentityScopeType;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/Database;",
            "Lorg/greenrobot/greendao/identityscope/IdentityScopeType;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;",
            "Lorg/greenrobot/greendao/internal/DaoConfig;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lorg/greenrobot/greendao/AbstractDaoSession;-><init>(Lorg/greenrobot/greendao/database/Database;)V

    .line 40
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->folderDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 41
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->folderDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 43
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->searchRecordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 44
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->searchRecordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 46
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1}, Lorg/greenrobot/greendao/internal/DaoConfig;->clone()Lorg/greenrobot/greendao/internal/DaoConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->videoCacheDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    .line 47
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->videoCacheDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/internal/DaoConfig;->initIdentityScope(Lorg/greenrobot/greendao/identityscope/IdentityScopeType;)V

    .line 49
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->folderDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->folderDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    .line 50
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->searchRecordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->searchRecordDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    .line 51
    new-instance p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->videoCacheDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-direct {p1, p2, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;)V

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->videoCacheDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    .line 53
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->folderDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 54
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->searchRecordDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    .line 55
    const-class p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->videoCacheDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    invoke-virtual {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDaoSession;->registerDao(Ljava/lang/Class;Lorg/greenrobot/greendao/AbstractDao;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->folderDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 60
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->searchRecordDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    .line 61
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->videoCacheDaoConfig:Lorg/greenrobot/greendao/internal/DaoConfig;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/internal/DaoConfig;->clearIdentityScope()V

    return-void
.end method

.method public getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->folderDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    return-object v0
.end method

.method public getSearchRecordDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->searchRecordDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    return-object v0
.end method

.method public getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->videoCacheDao:Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    return-object v0
.end method
