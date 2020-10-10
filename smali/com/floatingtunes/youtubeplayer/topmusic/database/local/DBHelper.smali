.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# direct methods
.method private static createFavoriteFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;
    .locals 5

    .line 105
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;-><init>()V

    .line 106
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setID(Ljava/lang/String;)V

    const-string v1, "Favorites \u2665"

    .line 107
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_name(Ljava/lang/String;)V

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setCreate_time(Ljava/lang/String;)V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setUpdate_time(Ljava/lang/String;)V

    const-string v1, "FOLDER_TYPE_USER"

    .line 110
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_type(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->createUserFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    return-object v0
.end method

.method private static createHistoryFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;
    .locals 5

    .line 118
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;-><init>()V

    .line 119
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setID(Ljava/lang/String;)V

    const-string v1, "History"

    .line 120
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_name(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setCreate_time(Ljava/lang/String;)V

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setUpdate_time(Ljava/lang/String;)V

    const-string v1, "FOLDER_TYPE_USER"

    .line 123
    invoke-virtual {v0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setFolder_type(Ljava/lang/String;)V

    .line 125
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->createUserFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    return-object v0
.end method

.method public static createUserFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;
    .locals 7

    .line 30
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLDER_TYPE_USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 32
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    .line 34
    invoke-virtual {v6, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v3, v2

    .line 33
    invoke-virtual {v4, v5, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 34
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    if-nez v1, :cond_0

    .line 37
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setID(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    return-object p0

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLDER_TYPE_DATABASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getDb_type()Ljava/lang/String;

    move-result-object v4

    const-string v5, "spotlighton"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getDb_type()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mood"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_name:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    .line 58
    invoke-virtual {v6, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v3, v2

    .line 57
    invoke-virtual {v4, v5, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 58
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Unique_id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getUnique_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    .line 53
    invoke-virtual {v6, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v3, v2

    .line 52
    invoke-virtual {v4, v5, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 53
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    :goto_2
    if-nez v1, :cond_4

    .line 64
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setID(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    return-object p0

    .line 69
    :cond_4
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setID(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-object p0

    .line 75
    :cond_5
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLDER_TYPE_YOUTUBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 77
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v4

    sget-object v5, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Unique_id:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getUnique_id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v3, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    .line 81
    invoke-virtual {v6, v1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    aput-object v1, v3, v2

    .line 80
    invoke-virtual {v4, v5, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 81
    invoke-virtual {v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    if-nez v1, :cond_6

    .line 85
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setID(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    return-object p0

    .line 90
    :cond_6
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setID(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static deleteAllSearchRecords()V
    .locals 1

    .line 358
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getSearchRecordDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->deleteAll()V

    return-void
.end method

.method public static deleteAllVideo(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 3

    .line 201
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getFolder_type()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FOLDER_TYPE_USER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    :cond_0
    return-void
.end method

.method public static deleteFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 1

    .line 171
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 173
    invoke-static {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->deleteAllVideo(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    .line 175
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteFromFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getFavoriteFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->deleteVideoFromFolder(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    return-void
.end method

.method public static deleteSearchRecord(Ljava/lang/String;)V
    .locals 1

    .line 353
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getSearchRecordDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    move-result-object v0

    .line 354
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    return-void
.end method

.method public static deleteVideoFromFolder(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 4

    .line 181
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MVideoId:Lorg/greenrobot/greendao/Property;

    .line 184
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 183
    invoke-virtual {v1, p1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 184
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    if-eqz p0, :cond_0

    .line 187
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static getAllSearchRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;",
            ">;"
        }
    .end annotation

    .line 343
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getSearchRecordDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFavoriteFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;
    .locals 5

    .line 225
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_name:Lorg/greenrobot/greendao/Property;

    const-string v2, "Favorites \u2665"

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    const-string v4, "FOLDER_TYPE_USER"

    .line 227
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 226
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 227
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    if-nez v0, :cond_0

    .line 229
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->createFavoriteFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getFoldersToAddMusic()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ">;"
        }
    .end annotation

    .line 253
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_name:Lorg/greenrobot/greendao/Property;

    const-string v2, "History"

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    const-string v4, "FOLDER_TYPE_USER"

    .line 255
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 254
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 255
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFoldersToManage()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ">;"
        }
    .end annotation

    .line 260
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_name:Lorg/greenrobot/greendao/Property;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Favorites \u2665"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "History"

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->notIn([Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    new-array v2, v3, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getHistoryFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;
    .locals 5

    .line 214
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_name:Lorg/greenrobot/greendao/Property;

    const-string v2, "History"

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    const-string v4, "FOLDER_TYPE_USER"

    .line 216
    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 215
    invoke-virtual {v0, v1, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 216
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    if-nez v0, :cond_0

    .line 218
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->createHistoryFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getOneMusicFromFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    .locals 3

    .line 269
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 272
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getRandomFromHistory()Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;
    .locals 3

    .line 368
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getHistoryFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    .line 369
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    move-result-object v1

    .line 370
    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 374
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    invoke-direct {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static getVideoByFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;",
            ")",
            "Ljava/util/List<",
            "Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;",
            ">;"
        }
    .end annotation

    .line 237
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v0, p0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object p0

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 242
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 243
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    invoke-direct {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static isFavoriteVideo(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)Z
    .locals 5

    .line 282
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getFavoriteFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v4, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MVideoId:Lorg/greenrobot/greendao/Property;

    .line 284
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getVideoId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object p0

    const/4 v4, 0x0

    aput-object p0, v3, v4

    .line 283
    invoke-virtual {v0, v1, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 284
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static saveSearchRecord(Ljava/lang/String;)V
    .locals 2

    .line 348
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getSearchRecordDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;

    move-result-object v0

    .line 349
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    return-void
.end method

.method public static saveToFavorite(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 162
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getFavoriteFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveToFolder(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    return-void
.end method

.method public static saveToFolder(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 7

    .line 131
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getVideoCacheDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;

    move-result-object v0

    .line 133
    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    invoke-direct {v1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V

    .line 135
    invoke-virtual {v0}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v5, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MVideoId:Lorg/greenrobot/greendao/Property;

    .line 136
    invoke-virtual {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->getMVideoId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 135
    invoke-virtual {v2, v3, v4}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    .line 136
    invoke-virtual {v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCache;->setMFolderId(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;->getThumbnails()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->setThumbnail(Ljava/lang/String;)V

    .line 144
    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->updateFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    return-void
.end method

.method public static saveToHistory(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;)V
    .locals 1

    .line 158
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->getHistoryFolder()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/DBHelper;->saveToFolder(Lcom/floatingtunes/youtubeplayer/topmusic/module/MusicBean;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V

    return-void
.end method

.method public static updateFolder(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/Folder;->getID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getDaoSession()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;->getFolderDao()Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p0}, Lorg/greenrobot/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
