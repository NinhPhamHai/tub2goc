.class public Lorg/schabi/newpipe/extractor/utils/DashMpdParser;
.super Ljava/lang/Object;
.source "DashMpdParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;,
        Lorg/schabi/newpipe/extractor/utils/DashMpdParser$DashMpdParsingException;
    }
.end annotation


# direct methods
.method public static getStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/schabi/newpipe/extractor/utils/DashMpdParser$DashMpdParsingException;,
            Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;
        }
    .end annotation

    .line 121
    invoke-static {}, Lorg/schabi/newpipe/extractor/NewPipe;->getDownloader()Lorg/schabi/newpipe/extractor/Downloader;

    move-result-object v0

    .line 123
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/schabi/newpipe/extractor/Downloader;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException; {:try_start_0 .. :try_end_0} :catch_2

    .line 131
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 135
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "Representation"

    .line 136
    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 144
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 146
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 147
    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :try_start_2
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    const-string v11, "mimeType"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "id"

    .line 150
    invoke-interface {v9, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "BaseURL"

    .line 151
    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    invoke-interface {v12, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    .line 152
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->getItag(I)Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;

    move-result-object v13

    const-string v14, "SegmentList"

    .line 153
    invoke-interface {v9, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v13, :cond_5

    .line 162
    invoke-static {v10}, Lorg/schabi/newpipe/extractor/MediaFormat;->getFromMimeType(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v10

    .line 164
    iget-object v14, v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->AUDIO:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-virtual {v14, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    if-nez v9, :cond_0

    .line 166
    new-instance v9, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget v11, v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    invoke-direct {v9, v12, v10, v11}, Lorg/schabi/newpipe/extractor/stream/AudioStream;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 168
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_0
    new-instance v9, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    iget v12, v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->avgBitrate:I

    invoke-direct {v9, v11, v10, v12}, Lorg/schabi/newpipe/extractor/stream/AudioStream;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;I)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_1
    iget-object v14, v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->itagType:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    sget-object v15, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;->VIDEO_ONLY:Lorg/schabi/newpipe/extractor/services/youtube/ItagItem$ItagType;

    invoke-virtual {v14, v15}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v9, :cond_3

    .line 178
    new-instance v9, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-object v11, v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    invoke-direct {v9, v12, v10, v11, v14}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;Z)V

    if-eqz v14, :cond_2

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 185
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v10

    invoke-static {v9, v10}, Lorg/schabi/newpipe/extractor/stream/Stream;->containSimilarStream(Lorg/schabi/newpipe/extractor/stream/Stream;Ljava/util/List;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 188
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    :cond_3
    new-instance v9, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    iget-object v12, v13, Lorg/schabi/newpipe/extractor/services/youtube/ItagItem;->resolutionString:Ljava/lang/String;

    invoke-direct {v9, v11, v10, v12, v14}, Lorg/schabi/newpipe/extractor/stream/VideoStream;-><init>(Ljava/lang/String;Lorg/schabi/newpipe/extractor/MediaFormat;Ljava/lang/String;Z)V

    if-eqz v14, :cond_4

    .line 197
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_4
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 207
    :cond_6
    :try_start_3
    new-instance v0, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$ParserResult;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    .line 215
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$DashMpdParsingException;

    const-string v2, "Could not parse Dash mpd"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$DashMpdParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 127
    :catch_2
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;

    const-string v1, "reCaptcha Challenge needed"

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/extractor/exceptions/ReCaptchaException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3
    move-exception v0

    .line 125
    new-instance v1, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$DashMpdParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get dash mpd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/utils/DashMpdParser$DashMpdParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method
