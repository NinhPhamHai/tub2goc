.class public final Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;
.super Ljava/lang/Object;
.source "InfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;
    }
.end annotation


# static fields
.field private static final instance:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

.field private static final lruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->instance:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    .line 50
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method private static getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Info;
    .locals 3

    .line 124
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 127
    :cond_0
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    invoke-virtual {v0, p0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 132
    :cond_1
    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;
    .locals 1

    .line 57
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->instance:Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;

    return-object v0
.end method

.method private static keyOf(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;
    .locals 1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFromKey(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Lorg/schabi/newpipe/extractor/Info;
    .locals 1

    .line 64
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->keyOf(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->getInfo(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/Info;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public putInfo(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Info;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 5

    .line 72
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v0

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/util/ServiceHelper;->getCacheExpirationMillis(I)J

    move-result-wide v0

    .line 73
    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    monitor-enter v2

    .line 74
    :try_start_0
    new-instance v3, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;

    const/4 v4, 0x0

    invoke-direct {v3, p3, v0, v1, v4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$CacheData;-><init>(Lorg/schabi/newpipe/extractor/Info;JLcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache$1;)V

    .line 75
    sget-object p3, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    invoke-static {p1, p2, p4}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->keyOf(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeInfo(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)V
    .locals 2

    .line 82
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->lruCache:Landroid/util/LruCache;

    invoke-static {p1, p2, p3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/InfoCache;->keyOf(ILjava/lang/String;Lorg/schabi/newpipe/extractor/InfoItem$InfoType;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
