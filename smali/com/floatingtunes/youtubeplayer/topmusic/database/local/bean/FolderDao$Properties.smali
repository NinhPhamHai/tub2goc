.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;
.super Ljava/lang/Object;
.source "FolderDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final Create_time:Lorg/greenrobot/greendao/Property;

.field public static final Db_type:Lorg/greenrobot/greendao/Property;

.field public static final Folder_name:Lorg/greenrobot/greendao/Property;

.field public static final Folder_type:Lorg/greenrobot/greendao/Property;

.field public static final ID:Lorg/greenrobot/greendao/Property;

.field public static final Thumbnail:Lorg/greenrobot/greendao/Property;

.field public static final Unique_id:Lorg/greenrobot/greendao/Property;

.field public static final Update_time:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "ID"

    const/4 v4, 0x1

    const-string v5, "ID"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->ID:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "folder_name"

    const/4 v11, 0x0

    const-string v12, "FOLDER_NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_name:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "folder_type"

    const/4 v5, 0x0

    const-string v6, "FOLDER_TYPE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Folder_type:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "update_time"

    const-string v12, "UPDATE_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Update_time:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "create_time"

    const-string v6, "CREATE_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Create_time:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "thumbnail"

    const-string v12, "THUMBNAIL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Thumbnail:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "unique_id"

    const-string v6, "UNIQUE_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Unique_id:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x7

    const-string v10, "db_type"

    const-string v12, "DB_TYPE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/FolderDao$Properties;->Db_type:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
