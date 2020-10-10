.class public Lcom/floatingtunes/youtubeplayer/topmusic/net/OkHttpUtil;
.super Ljava/lang/Object;
.source "OkHttpUtil.java"


# static fields
.field public static REWRITE_CACHE_CONTROL_INTERCEPTOR:Lokhttp3/Interceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/net/OkHttpUtil$1;

    invoke-direct {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/net/OkHttpUtil$1;-><init>()V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/net/OkHttpUtil;->REWRITE_CACHE_CONTROL_INTERCEPTOR:Lokhttp3/Interceptor;

    return-void
.end method

.method public static request(Ljava/lang/String;Lokhttp3/Callback;)V
    .locals 4

    .line 40
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/app/AppContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "playlist_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lokhttp3/Cache;

    const/high16 v2, 0x6400000

    int-to-long v2, v2

    invoke-direct {v1, v0, v2, v3}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 45
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v2, Lcom/floatingtunes/youtubeplayer/topmusic/net/OkHttpUtil;->REWRITE_CACHE_CONTROL_INTERCEPTOR:Lokhttp3/Interceptor;

    .line 46
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 47
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 49
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p0, "Connection"

    const-string v2, "Keep-Alive"

    .line 50
    invoke-virtual {v1, p0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p0, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101 Firefox/68.0"

    .line 51
    invoke-virtual {v1, p0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p0, "X-YouTube-Client-Name"

    const-string v2, "1"

    .line 55
    invoke-virtual {v1, p0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p0, "X-YouTube-Client-Version"

    const-string v2, "2.20200214.04.00"

    .line 56
    invoke-virtual {v1, p0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 59
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method
