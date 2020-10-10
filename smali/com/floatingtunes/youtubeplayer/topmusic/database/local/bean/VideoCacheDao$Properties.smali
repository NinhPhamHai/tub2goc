.class public Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;
.super Ljava/lang/Object;
.source "VideoCacheDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final ID:Lorg/greenrobot/greendao/Property;

.field public static final MChannelTitle:Lorg/greenrobot/greendao/Property;

.field public static final MDuration:Lorg/greenrobot/greendao/Property;

.field public static final MFolderId:Lorg/greenrobot/greendao/Property;

.field public static final MPlaylistId:Lorg/greenrobot/greendao/Property;

.field public static final MThumbnails:Lorg/greenrobot/greendao/Property;

.field public static final MTitle:Lorg/greenrobot/greendao/Property;

.field public static final MVideoId:Lorg/greenrobot/greendao/Property;

.field public static final MViewCount:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 25
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "ID"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->ID:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "mFolderId"

    const/4 v11, 0x0

    const-string v12, "M_FOLDER_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MFolderId:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "mVideoId"

    const/4 v5, 0x0

    const-string v6, "M_VIDEO_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MVideoId:Lorg/greenrobot/greendao/Property;

    .line 28
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "mTitle"

    const-string v12, "M_TITLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MTitle:Lorg/greenrobot/greendao/Property;

    .line 29
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x4

    const-string v4, "mThumbnails"

    const-string v6, "M_THUMBNAILS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MThumbnails:Lorg/greenrobot/greendao/Property;

    .line 30
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "mChannelTitle"

    const-string v12, "M_CHANNEL_TITLE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MChannelTitle:Lorg/greenrobot/greendao/Property;

    .line 31
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "mDuration"

    const-string v6, "M_DURATION"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MDuration:Lorg/greenrobot/greendao/Property;

    .line 32
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x7

    const-string v10, "mViewCount"

    const-string v12, "M_VIEW_COUNT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MViewCount:Lorg/greenrobot/greendao/Property;

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x8

    const-string v4, "mPlaylistId"

    const-string v6, "M_PLAYLIST_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/database/local/bean/VideoCacheDao$Properties;->MPlaylistId:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
