.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/Downloader;


# static fields
.field private static instance:Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;


# instance fields
.field private final client:Lokhttp3/OkHttpClient;

.field private mCookies:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lokhttp3/OkHttpClient$Builder;)V
    .locals 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    .line 56
    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 58
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->client:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private getBody(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/ResponseBody;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/ResponseBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
        }
    .end annotation

    .line 146
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    const/4 v1, 0x0

    const-string v2, "GET"

    .line 147
    invoke-virtual {v0, v2, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 149
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 150
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    const-string p1, "User-Agent"

    .line 153
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0"

    .line 154
    invoke-virtual {v0, p1, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 157
    :cond_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->mCookies:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 158
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->mCookies:Ljava/lang/String;

    const-string p2, "Cookie"

    invoke-virtual {v0, p2, p1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 161
    :cond_2
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    .line 165
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    const/16 v2, 0x1ad

    if-eq v0, v2, :cond_4

    if-nez p2, :cond_3

    .line 170
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    return-object v1

    :cond_3
    return-object p2

    .line 166
    :cond_4
    new-instance p1, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    const-string p2, "reCaptcha Challenge requested"

    invoke-direct {p1, p2}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance()Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;
    .locals 1

    .line 71
    sget-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->instance:Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;

    return-object v0
.end method

.method public static init(Lokhttp3/OkHttpClient$Builder;)Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;
    .locals 1

    .line 67
    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    :goto_0
    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    sput-object v0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->instance:Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;

    return-object v0
.end method


# virtual methods
.method public download(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
        }
    .end annotation

    .line 186
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->download(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public download(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->getBody(Ljava/lang/String;Ljava/util/Map;)Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getContentLength(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 92
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->head()Lokhttp3/Request$Builder;

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string p1, "User-Agent"

    const-string v2, "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0"

    .line 93
    invoke-virtual {v1, p1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 94
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 95
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/download/Downloader;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    const-string p1, "Content-Length"

    .line 97
    invoke-virtual {v0, p1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    :cond_1
    return-wide v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 100
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid content length"

    invoke-direct {v1, v2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Lokhttp3/Response;->close()V

    .line 105
    :cond_2
    throw p1
.end method
