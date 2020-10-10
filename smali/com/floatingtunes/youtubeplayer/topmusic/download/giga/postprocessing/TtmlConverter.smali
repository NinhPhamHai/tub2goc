.class Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/TtmlConverter;
.super Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;
.source "TtmlConverter.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "ttml"

    .line 24
    invoke-direct {p0, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;-><init>(ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method varargs process(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;[Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "true"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 30
    invoke-virtual {p0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    const-string v4, "ttml"

    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "srt"

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2000

    .line 62
    new-array v0, v0, [B

    .line 64
    :goto_0
    aget-object v2, p2, v1

    invoke-virtual {v2, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    .line 65
    invoke-virtual {p1, v0, v1, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->write([BII)V

    goto :goto_0

    :cond_1
    return v3

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t convert this subtitle, unimplemented format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_3
    :goto_1
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;

    invoke-direct {v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;-><init>()V

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 36
    :try_start_0
    aget-object p2, p2, v1

    .line 39
    invoke-virtual {p0, v5, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 40
    invoke-virtual {p0, v4, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/giga/postprocessing/Postprocessing;->getArgumentAt(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 36
    invoke-virtual {v2, p2, p1, v1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->dumpTTML(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p1

    const-string p2, "TtmlConverter"

    const-string v0, "subtitle parse failed"

    .line 43
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_4

    return v5

    .line 47
    :cond_4
    instance-of p2, p1, Ljava/text/ParseException;

    if-eqz p2, :cond_5

    return v4

    .line 49
    :cond_5
    instance-of p2, p1, Lorg/xml/sax/SAXException;

    if-eqz p2, :cond_6

    const/4 p1, 0x3

    return p1

    .line 51
    :cond_6
    instance-of p2, p1, Ljavax/xml/parsers/ParserConfigurationException;

    if-eqz p2, :cond_7

    const/4 p1, 0x4

    return p1

    .line 53
    :cond_7
    instance-of p1, p1, Ljavax/xml/xpath/XPathExpressionException;

    if-eqz p1, :cond_8

    const/4 p1, 0x7

    return p1

    :cond_8
    const/16 p1, 0x8

    return p1
.end method
