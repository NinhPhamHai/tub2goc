.class public Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;
.super Ljava/lang/Object;
.source "SoundcloudStreamInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;


# instance fields
.field protected final itemObject:Lcom/grack/nanojson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonObject;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 60
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->AUDIO_STREAM:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "artwork_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadDate()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/exceptions/ParsingException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "created_at"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudParsingHelper;->toDateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "username"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 2

    .line 40
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getObject(Ljava/lang/String;)Lcom/grack/nanojson/JsonObject;

    move-result-object v0

    const-string v1, "permalink_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const-string v1, "permalink_url"

    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->replaceHttpWithHttps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewCount()J
    .locals 3

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/services/soundcloud/SoundcloudStreamInfoItemExtractor;->itemObject:Lcom/grack/nanojson/JsonObject;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playback_count"

    invoke-virtual {v0, v2, v1}, Lcom/grack/nanojson/JsonObject;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isAd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
