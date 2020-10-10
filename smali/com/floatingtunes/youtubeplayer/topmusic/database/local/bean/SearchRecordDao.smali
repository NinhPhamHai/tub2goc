.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;
.super Lorg/greenrobot/greendao/AbstractDao;
.source "SearchRecordDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao$Properties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/greenrobot/greendao/AbstractDao<",
        "Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "SEARCH_RECORD"


# direct methods
.method public constructor <init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/DaoSession;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lorg/greenrobot/greendao/AbstractDao;-><init>(Lorg/greenrobot/greendao/internal/DaoConfig;Lorg/greenrobot/greendao/AbstractDaoSession;)V

    return-void
.end method

.method public static createTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "IF NOT EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 40
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"SEARCH_RECORD\" (\"RECORD\" TEXT PRIMARY KEY NOT NULL );"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public static dropTable(Lorg/greenrobot/greendao/database/Database;Z)V
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "IF EXISTS "

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"SEARCH_RECORD\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-interface {p0, p1}, Lorg/greenrobot/greendao/database/Database;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;)V
    .locals 1

    .line 62
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 64
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;)V

    return-void
.end method

.method protected final bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;)V
    .locals 1

    .line 52
    invoke-interface {p1}, Lorg/greenrobot/greendao/database/DatabaseStatement;->clearBindings()V

    .line 54
    invoke-virtual {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 56
    invoke-interface {p1, v0, p2}, Lorg/greenrobot/greendao/database/DatabaseStatement;->bindString(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p2, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->bindValues(Lorg/greenrobot/greendao/database/DatabaseStatement;Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->getKey(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKey(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;
    .locals 2

    .line 77
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    add-int/lit8 p2, p2, 0x0

    .line 78
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-direct {v0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->readEntity(Landroid/database/Cursor;I)Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1

    add-int/lit8 p2, p2, 0x0

    .line 72
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 16
    check-cast p1, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;

    invoke-virtual {p0, p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecordDao;->updateKeyAfterInsert(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final updateKeyAfterInsert(Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;J)Ljava/lang/String;
    .locals 0

    .line 90
    invoke-virtual {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/SearchRecord;->getRecord()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
