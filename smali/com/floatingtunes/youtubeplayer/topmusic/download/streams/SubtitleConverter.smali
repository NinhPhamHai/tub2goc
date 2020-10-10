.class public Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;
.super Ljava/lang/Object;
.source "SubtitleConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;,
        Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$FrameWriter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(IZ)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->getTime(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTime(IZ)Ljava/lang/String;
    .locals 5

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 317
    div-int/lit16 v1, p0, 0x3e8

    div-int/lit16 v2, v1, 0xe10

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->numberToString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    .line 318
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v4, v4, 0x3c

    invoke-static {v4, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->numberToString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    rem-int/lit8 v1, v1, 0x3c

    invoke-static {v1, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->numberToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 p1, 0x2c

    goto :goto_0

    :cond_0
    const/16 p1, 0x2e

    .line 322
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    rem-int/lit16 p0, p0, 0x3e8

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->numberToString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static numberToString(II)Ljava/lang/String;
    .locals 3

    .line 329
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "%0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseTimestamp(Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x3e8

    if-ne v0, v2, :cond_1

    .line 237
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    return p0

    :cond_1
    const-string v0, "wallclock("

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x3a

    .line 246
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v4, 0x2

    if-gez v0, :cond_9

    .line 248
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x68

    if-eq v0, v5, :cond_5

    const/16 v5, 0x6d

    if-eq v0, v5, :cond_4

    const/16 v6, 0x73

    if-eq v0, v6, :cond_3

    .line 262
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 263
    :cond_2
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid metric suffix found on : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_6

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const v3, 0x3938700

    goto :goto_0

    :cond_5
    const v3, -0x296c5c00

    :cond_6
    :goto_0
    if-ne v3, v2, :cond_7

    .line 272
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    .line 274
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, p0

    .line 277
    :goto_1
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 278
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v0, v7, v9

    if-gtz v0, :cond_9

    int-to-double v0, v3

    mul-double v5, v5, v0

    double-to-int p0, v5

    return p0

    .line 282
    :catch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or not implemented timestamp on: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const-string v0, ":"

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 290
    array-length v0, p0

    const/4 v3, 0x3

    if-lt v0, v3, :cond_a

    .line 294
    aget-object v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const v3, 0x36ee80

    mul-int v0, v0, v3

    add-int/2addr v0, v1

    .line 295
    aget-object v1, p0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0xea60

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 296
    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p0, p0, v1

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0

    .line 291
    :cond_a
    new-instance p0, Ljava/text/ParseException;

    const/4 v0, -0x1

    const-string v1, "Invalid clock-time timestamp"

    invoke-direct {p0, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 242
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Parsing wallclock timestamp is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static putBreakAt(ILjava/lang/StringBuilder;)V
    .locals 1

    add-int/lit8 v0, p0, 0x1

    .line 307
    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    .line 308
    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private read_xml_based(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$FrameWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->available()J

    move-result-wide v2

    long-to-int v3, v2

    new-array v2, v3, [B

    move-object/from16 v3, p1

    .line 74
    invoke-virtual {v3, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;->read([B)I

    .line 76
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    const/4 v4, 0x1

    .line 77
    invoke-virtual {v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 78
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 79
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 84
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    const/4 v5, -0x1

    if-eqz v3, :cond_17

    .line 88
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p4

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "xmlns"

    .line 92
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected xml namespace: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    invoke-interface {v3, v1, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    :goto_0
    if-nez p11, :cond_4

    move-object/from16 v3, p7

    .line 111
    invoke-static {v2, v3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->selectNodes(Lorg/w3c/dom/Document;[Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 115
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v6, v8, :cond_3

    .line 117
    :try_start_0
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string v9, "ah"

    invoke-interface {v8, v1, v9}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v8, v7, :cond_2

    move v7, v8

    :catch_0
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v3, p8

    goto :goto_2

    :cond_4
    move-object/from16 v3, p8

    const/4 v7, 0x0

    .line 128
    :goto_2
    invoke-static {v2, v3, v1}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->selectNodes(Lorg/w3c/dom/Document;[Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    move/from16 v3, p3

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 137
    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v2, v9, :cond_13

    .line 138
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 139
    new-instance v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;)V

    .line 140
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    move-object/from16 v12, p9

    .line 142
    invoke-interface {v9, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz p11, :cond_6

    .line 143
    invoke-static {v13}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->parseTimestamp(Ljava/lang/String;)I

    move-result v13

    goto :goto_4

    :cond_6
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    :goto_4
    iput v13, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->start:I

    move-object/from16 v13, p10

    .line 145
    invoke-interface {v9, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 146
    iget-object v14, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    if-eqz v14, :cond_12

    if-nez v9, :cond_7

    goto/16 :goto_8

    :cond_7
    if-eqz p11, :cond_b

    .line 151
    invoke-static {v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->parseTimestamp(Ljava/lang/String;)I

    move-result v9

    iput v9, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->end:I

    if-eqz v3, :cond_c

    if-eqz v6, :cond_8

    .line 155
    iget v9, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->end:I

    .line 156
    iput v8, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->end:I

    move v8, v9

    goto :goto_5

    :cond_8
    if-gez v8, :cond_9

    .line 160
    iget v8, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->end:I

    goto :goto_5

    .line 162
    :cond_9
    iget v9, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->start:I

    if-ge v8, v9, :cond_a

    const/4 v6, 0x1

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    goto :goto_5

    .line 171
    :cond_b
    iget v14, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->start:I

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v14, v9

    iput v14, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->end:I

    :cond_c
    :goto_5
    if-le v7, v4, :cond_11

    .line 174
    iget-object v9, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v7, :cond_11

    .line 177
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    iput-object v11, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    .line 180
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v11

    const/16 v14, 0x9

    if-eq v11, v14, :cond_f

    const/16 v15, 0x20

    if-eq v11, v15, :cond_f

    add-int/lit8 v11, v7, -0x1

    :goto_6
    if-lez v11, :cond_10

    .line 187
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v14, :cond_d

    const/16 v4, 0xa

    if-eq v0, v4, :cond_e

    const/16 v4, 0xd

    if-eq v0, v4, :cond_e

    if-eq v0, v15, :cond_d

    goto :goto_7

    .line 190
    :cond_d
    invoke-static {v11, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->putBreakAt(ILjava/lang/StringBuilder;)V

    :cond_e
    const/4 v11, -0x1

    :goto_7
    add-int/2addr v11, v5

    const/4 v4, 0x1

    goto :goto_6

    .line 183
    :cond_f
    invoke-static {v7, v9}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->putBreakAt(ILjava/lang/StringBuilder;)V

    .line 202
    :cond_10
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;->text:Ljava/lang/String;

    :cond_11
    move-object/from16 v0, p2

    .line 205
    invoke-interface {v0, v10}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$FrameWriter;->yield(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$SubtitleFrame;)V

    goto :goto_9

    :cond_12
    :goto_8
    move-object/from16 v0, p2

    :goto_9
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_13
    return-void

    .line 102
    :cond_14
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid format version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 99
    :cond_15
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Can\'t get the format attribute"

    invoke-direct {v0, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 89
    :cond_16
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Invalid root"

    invoke-direct {v0, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 87
    :cond_17
    new-instance v0, Ljava/text/ParseException;

    const-string v1, "Can\'t get the format version. \u00bfwrong namespace?"

    invoke-direct {v0, v1, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static selectNodes(Lorg/w3c/dom/Document;[Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 8

    .line 210
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const/4 v0, 0x0

    move-object v1, p0

    const/4 p0, 0x0

    .line 212
    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge p0, v2, :cond_3

    .line 213
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 214
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v4, v3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v4, 0x0

    .line 219
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 220
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v3, :cond_1

    .line 221
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 222
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p1, p0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 230
    :cond_3
    array-length p0, p1

    sub-int/2addr p0, v3

    aget-object p0, p1, p0

    invoke-interface {v1, p2, p0}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dumpTTML(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;ZZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/xpath/XPathExpressionException;
        }
    .end annotation

    .line 31
    new-instance v2, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;

    move-object v12, p0

    move-object v0, p2

    move/from16 v1, p3

    invoke-direct {v2, p0, v1, p2}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;ZLcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;)V

    const-string v0, "timedtext"

    const-string v1, "head"

    const-string v3, "wp"

    .line 52
    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "body"

    const-string v1, "div"

    const-string v3, "p"

    filled-new-array {v0, v1, v3}, [Ljava/lang/String;

    move-result-object v8

    const-string v4, "tt"

    const-string v5, "xmlns"

    const-string v6, "http://www.w3.org/ns/ttml"

    const-string v9, "begin"

    const-string v10, "end"

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v3, p4

    invoke-direct/range {v0 .. v11}, Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter;->read_xml_based(Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/io/SharpStream;Lcom/floatingtunes/youtubeplayer/topmusic/download/streams/SubtitleConverter$FrameWriter;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
