.class public Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;
.super Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;
.source "SoundcloudStreamLinkHandlerFactory.java"


# static fields
.field private static final instance:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;


# instance fields
.field private final URL_PATTERN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;

    invoke-direct {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;->instance:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/schabi/newpipe/extractor/linkhandler/LinkHandlerFactory;-><init>()V

    const-string v0, "^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"

    .line 10
    iput-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;->URL_PATTERN:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;
    .locals 1

    .line 17
    sget-object v0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;->instance:Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamLinkHandlerFactory;

    return-object v0
.end method


# virtual methods
.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    const-string v0, "^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"

    .line 31
    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Utils;->checkUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :try_start_0
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->resolveIdWithEmbedPlayer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 36
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 23
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://api.soundcloud.com/tracks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->resolveUrlWithEmbedPlayer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onAcceptUrl(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "^https?://(www\\.|m\\.)?soundcloud.com/[0-9a-z_-]+/(?!(tracks|albums|sets|reposts|followers|following)/?$)[0-9a-z_-]+/?([#?].*)?$"

    invoke-static {v0, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->isMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
