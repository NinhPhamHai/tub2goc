.class Lorg/mozilla/javascript/TokenStream;
.super Ljava/lang/Object;
.source "TokenStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1


# instance fields
.field private allStrings:Lorg/mozilla/javascript/ObjToIntMap;

.field private commentCursor:I

.field private commentPrefix:Ljava/lang/String;

.field commentType:Lorg/mozilla/javascript/Token$CommentType;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private isHex:Z

.field private isOctal:Z

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field private number:D

.field private parser:Lorg/mozilla/javascript/Parser;

.field private quoteChar:I

.field regExpFlags:Ljava/lang/String;

.field private sourceBuffer:[C

.field sourceCursor:I

.field private sourceEnd:I

.field private sourceReader:Ljava/io/Reader;

.field private sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I

.field private xmlIsAttribute:Z

.field private xmlIsTagContent:Z

.field private xmlOpenTagsCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 1614
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v1, 0x80

    .line 1622
    new-array v1, v1, [C

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 1624
    new-instance v1, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    const/4 v1, 0x3

    .line 1627
    new-array v1, v1, [I

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    const/4 v1, 0x0

    .line 1630
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    .line 1632
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    const/4 v2, -0x1

    .line 1633
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1664
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 1665
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 38
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 39
    iput p4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 42
    iput-object p2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    const/16 p1, 0x200

    .line 43
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 44
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw p1

    :cond_1
    if-eqz p3, :cond_2

    .line 47
    iput-object p3, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 48
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 50
    :goto_0
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    return-void

    .line 46
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw p1
.end method

.method private addToString(I)V
    .locals 4

    .line 1229
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1230
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v2, v1

    if-ne v0, v2, :cond_0

    .line 1231
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    .line 1232
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1233
    iput-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 1235
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    int-to-char p1, p1

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1236
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    return-void
.end method

.method private canUngetChar()Z
    .locals 3

    .line 1240
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final charAt(I)I
    .locals 3

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    .line 1407
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1408
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v2, :cond_1

    return v0

    .line 1411
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1

    .line 1413
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-lt p1, v1, :cond_4

    .line 1414
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 1416
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_3

    return v0

    .line 1423
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    goto :goto_0

    :catch_0
    return v0

    .line 1425
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    aget-char p1, v0, p1

    return p1
.end method

.method private convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1593
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1594
    new-instance v1, Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "\\u"

    .line 1596
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1597
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    .line 1598
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x4

    if-ge v2, v0, :cond_0

    const/16 v0, 0x30

    .line 1599
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1601
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1602
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fillSourceBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1504
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1505
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1506
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1507
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    sub-int/2addr v3, v1

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1509
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 1510
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 1511
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    goto :goto_0

    .line 1513
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 1514
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1515
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 1518
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-gez v0, :cond_2

    return v2

    .line 1523
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    const/4 v0, 0x1

    return v0

    .line 1504
    :cond_3
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 v0, 0x0

    throw v0
.end method

.method private getChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1273
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    return v0
.end method

.method private getChar(Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1279
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1280
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget p1, p1, v0

    return p1

    .line 1285
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 1286
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v3, v4, :cond_1

    .line 1287
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    .line 1290
    :cond_1
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v4, v1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v4, v3, 0x1

    .line 1291
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 1293
    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3

    .line 1294
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1295
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    .line 1299
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1300
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v3

    .line 1303
    :goto_1
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/16 v4, 0xd

    const/16 v5, 0xa

    if-ltz v3, :cond_5

    if-ne v3, v4, :cond_4

    if-ne v0, v5, :cond_4

    .line 1305
    iput v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_0

    .line 1308
    :cond_4
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1309
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 1310
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    :cond_5
    const/16 v2, 0x7f

    if-gt v0, v2, :cond_7

    if-eq v0, v5, :cond_6

    if-ne v0, v4, :cond_a

    .line 1315
    :cond_6
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_2

    :cond_7
    const v2, 0xfeff

    if-ne v0, v2, :cond_8

    return v0

    :cond_8
    if-eqz p1, :cond_9

    .line 1320
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_0

    .line 1323
    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1324
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_2

    :cond_a
    move v5, v0

    :goto_2
    return v5
.end method

.method private getCharIgnoreLineEnd()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1334
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1335
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1336
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget v0, v2, v0

    return v0

    .line 1341
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    .line 1342
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v3, v4, :cond_1

    .line 1343
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    .line 1346
    :cond_1
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v2, v3, 0x1

    .line 1347
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    .line 1349
    :cond_2
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v0, v3, :cond_3

    .line 1350
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1351
    iput-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v2

    .line 1355
    :cond_3
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1356
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v0, v2

    :goto_1
    const/16 v2, 0x7f

    const/16 v3, 0xa

    if-gt v0, v2, :cond_5

    if-eq v0, v3, :cond_4

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 1361
    :cond_4
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_2

    :cond_5
    const v2, 0xfeff

    if-ne v0, v2, :cond_6

    return v0

    .line 1366
    :cond_6
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    .line 1369
    :cond_7
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1370
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    goto :goto_2

    :cond_8
    move v3, v0

    :goto_2
    return v3
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 4

    .line 1223
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1224
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_1

    const/16 v2, 0x41

    if-gt v2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x61

    if-gt v2, p0, :cond_2

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method static isDigit(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isJSFormatChar(I)Z
    .locals 1

    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char p0, p0

    .line 869
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isJSSpace(I)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/16 v3, 0x7f

    if-gt p0, v3, :cond_2

    const/16 v3, 0x20

    if-eq p0, v3, :cond_0

    const/16 v3, 0x9

    if-eq p0, v3, :cond_0

    if-eq p0, v1, :cond_0

    const/16 v1, 0xb

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const/16 v3, 0xa0

    if-eq p0, v3, :cond_3

    const v3, 0xfeff

    if-eq p0, v3, :cond_3

    int-to-char p0, p0

    .line 862
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    if-ne p0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method static isKeyword(Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isMarkingComment()Z
    .locals 2

    .line 1575
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private markCommentStart()V
    .locals 1

    const-string v0, ""

    .line 1564
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    return-void
.end method

.method private markCommentStart(Ljava/lang/String;)V
    .locals 1

    .line 1568
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 1569
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 1570
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    :cond_0
    return-void
.end method

.method private matchChar(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1254
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1256
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/4 p1, 0x1

    return p1

    .line 1259
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    const/4 p1, 0x0

    return p1
.end method

.method private peekChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1266
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1267
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    return v0
.end method

.method private readCDATA()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1154
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1155
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1

    .line 1156
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1157
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1158
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1159
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 1160
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1161
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    .line 1167
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1170
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 1171
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1172
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readEntity()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1182
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 1183
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 1182
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1195
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 1196
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1197
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readPI()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1206
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1207
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    .line 1208
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_0

    .line 1209
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1210
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    .line 1215
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 1216
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1217
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private readQuotedString(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1111
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1112
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 1116
    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v0, 0x0

    .line 1117
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1118
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.XML.bad.form"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return p1
.end method

.method private readXmlComment()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1127
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1128
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_1

    .line 1129
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1130
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1131
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1132
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 1133
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1134
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v0, 0x1

    return v0

    .line 1140
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1143
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v1, 0x0

    .line 1144
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1145
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v0
.end method

.method private skipLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1388
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1389
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1390
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    .line 155
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x6d

    const/16 v3, 0x76

    const/16 v4, 0x6c

    const/16 v5, 0x73

    const/16 v6, 0x66

    const/16 v7, 0x6e

    const/16 v8, 0x61

    const/16 v9, 0x69

    const/16 v10, 0x74

    const/16 v11, 0x72

    const/16 v12, 0x65

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x7f

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string v1, "synchronized"

    :goto_0
    const/16 v3, 0x7f

    goto/16 :goto_3

    .line 244
    :pswitch_2
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "implements"

    goto :goto_0

    :cond_0
    if-ne v1, v7, :cond_33

    const/16 v2, 0x35

    const-string v1, "instanceof"

    const/16 v3, 0x35

    goto/16 :goto_3

    .line 239
    :pswitch_3
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_1

    const-string v1, "interface"

    goto :goto_0

    :cond_1
    const/16 v2, 0x70

    if-ne v1, v2, :cond_2

    const-string v1, "protected"

    goto :goto_0

    :cond_2
    if-ne v1, v10, :cond_33

    const-string v1, "transient"

    goto :goto_0

    .line 232
    :pswitch_4
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_7

    if-eq v1, v6, :cond_6

    if-eq v1, v3, :cond_5

    const/16 v2, 0x63

    if-eq v1, v2, :cond_4

    const/16 v2, 0x64

    if-eq v1, v2, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v2, 0xa0

    const-string v1, "debugger"

    const/16 v3, 0xa0

    goto/16 :goto_3

    :cond_4
    const/16 v2, 0x79

    const-string v1, "continue"

    const/16 v3, 0x79

    goto/16 :goto_3

    :cond_5
    const-string v1, "volatile"

    goto :goto_0

    :cond_6
    const-string v1, "function"

    const/16 v3, 0x6d

    goto/16 :goto_3

    :cond_7
    const-string v1, "abstract"

    goto :goto_0

    .line 224
    :pswitch_5
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_d

    if-eq v1, v12, :cond_c

    if-eq v1, v9, :cond_b

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_a

    if-eq v1, v11, :cond_9

    const/16 v2, 0x78

    if-eq v1, v2, :cond_8

    goto/16 :goto_2

    :cond_8
    const-string v1, "extends"

    goto :goto_0

    :cond_9
    const-string v1, "private"

    goto :goto_0

    :cond_a
    const-string v1, "boolean"

    goto :goto_0

    :cond_b
    const/16 v2, 0x7d

    const-string v1, "finally"

    const/16 v3, 0x7d

    goto/16 :goto_3

    :cond_c
    const-string v1, "default"

    const/16 v3, 0x74

    goto/16 :goto_3

    :cond_d
    const-string v1, "package"

    goto/16 :goto_0

    .line 209
    :pswitch_6
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_15

    if-eq v1, v12, :cond_13

    const/16 v3, 0x68

    if-eq v1, v3, :cond_12

    if-eq v1, v2, :cond_11

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_10

    if-eq v1, v10, :cond_f

    const/16 v2, 0x75

    if-eq v1, v2, :cond_e

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_7
    const/16 v2, 0x20

    const-string v1, "typeof"

    const/16 v3, 0x20

    goto/16 :goto_3

    :pswitch_8
    const-string v1, "export"

    goto/16 :goto_0

    :pswitch_9
    const-string v1, "switch"

    const/16 v3, 0x72

    goto/16 :goto_3

    :cond_e
    const-string v1, "public"

    goto/16 :goto_0

    :cond_f
    const-string v1, "static"

    goto/16 :goto_0

    :cond_10
    const-string v1, "double"

    goto/16 :goto_0

    :cond_11
    const-string v1, "import"

    goto/16 :goto_0

    :cond_12
    const-string v1, "throws"

    goto/16 :goto_0

    .line 211
    :cond_13
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_14

    const/16 v2, 0x1f

    const-string v1, "delete"

    const/16 v3, 0x1f

    goto/16 :goto_3

    :cond_14
    if-ne v1, v11, :cond_33

    const/4 v2, 0x4

    const-string v1, "return"

    const/4 v3, 0x4

    goto/16 :goto_3

    :cond_15
    const-string v1, "native"

    goto/16 :goto_0

    .line 189
    :pswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v8, :cond_1e

    if-eq v1, v12, :cond_1c

    if-eq v1, v9, :cond_1b

    if-eq v1, v4, :cond_1a

    if-eq v1, v11, :cond_19

    if-eq v1, v10, :cond_18

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_2

    :pswitch_b
    const-string v1, "super"

    goto/16 :goto_0

    .line 201
    :pswitch_c
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_16

    const-string v1, "float"

    goto/16 :goto_0

    :cond_16
    if-ne v1, v5, :cond_33

    const-string v1, "short"

    goto/16 :goto_0

    .line 197
    :pswitch_d
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x63

    if-ne v1, v2, :cond_17

    const/16 v2, 0x9a

    const-string v1, "const"

    const/16 v3, 0x9a

    goto/16 :goto_3

    :cond_17
    if-ne v1, v6, :cond_33

    const-string v1, "final"

    goto/16 :goto_0

    :cond_18
    const/16 v2, 0x7c

    const-string v1, "catch"

    const/16 v3, 0x7c

    goto/16 :goto_3

    :cond_19
    const/16 v2, 0x32

    const-string v1, "throw"

    const/16 v3, 0x32

    goto/16 :goto_3

    :cond_1a
    const/16 v2, 0x2c

    const-string v1, "false"

    const/16 v3, 0x2c

    goto/16 :goto_3

    :cond_1b
    const/16 v2, 0x75

    const-string v1, "while"

    const/16 v3, 0x75

    goto/16 :goto_3

    .line 191
    :cond_1c
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x62

    if-ne v1, v2, :cond_1d

    const/16 v2, 0x78

    const-string v1, "break"

    const/16 v3, 0x78

    goto/16 :goto_3

    :cond_1d
    const/16 v2, 0x79

    if-ne v1, v2, :cond_33

    const/16 v2, 0x48

    const-string v1, "yield"

    const/16 v3, 0x48

    goto/16 :goto_3

    :cond_1e
    const-string v1, "class"

    goto/16 :goto_0

    .line 169
    :pswitch_e
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x62

    if-eq v1, v6, :cond_2a

    const/16 v6, 0x63

    if-eq v1, v6, :cond_28

    if-eq v1, v12, :cond_26

    const/16 v2, 0x67

    if-eq v1, v2, :cond_25

    if-eq v1, v4, :cond_24

    if-eq v1, v7, :cond_23

    if-eq v1, v10, :cond_21

    if-eq v1, v3, :cond_20

    const/16 v2, 0x77

    if-eq v1, v2, :cond_1f

    goto/16 :goto_2

    :cond_1f
    const/16 v2, 0x7b

    const-string v1, "with"

    const/16 v3, 0x7b

    goto/16 :goto_3

    :cond_20
    const/16 v2, 0x7e

    const-string v1, "void"

    const/16 v3, 0x7e

    goto/16 :goto_3

    :cond_21
    const/4 v1, 0x3

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_22

    .line 183
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_33

    const/16 v3, 0x2d

    goto/16 :goto_4

    :cond_22
    if-ne v1, v5, :cond_33

    .line 184
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_33

    const/16 v3, 0x2b

    goto/16 :goto_4

    :cond_23
    const/16 v2, 0x2a

    const-string v1, "null"

    const/16 v3, 0x2a

    goto/16 :goto_3

    :cond_24
    const-string v1, "long"

    goto/16 :goto_0

    :cond_25
    const-string v1, "goto"

    goto/16 :goto_0

    :cond_26
    const/4 v1, 0x3

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_27

    .line 176
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_33

    const/16 v3, 0x71

    goto/16 :goto_4

    :cond_27
    if-ne v1, v2, :cond_33

    .line 177
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x75

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_33

    goto/16 :goto_1

    :cond_28
    const/4 v1, 0x3

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_29

    .line 172
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_33

    const/16 v3, 0x73

    goto/16 :goto_4

    :cond_29
    if-ne v1, v11, :cond_33

    .line 173
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_33

    goto :goto_1

    :cond_2a
    const-string v1, "byte"

    goto/16 :goto_0

    .line 161
    :pswitch_f
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_30

    if-eq v1, v9, :cond_2f

    if-eq v1, v4, :cond_2e

    if-eq v1, v7, :cond_2d

    if-eq v1, v10, :cond_2c

    if-eq v1, v3, :cond_2b

    goto/16 :goto_2

    .line 167
    :cond_2b
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v8, :cond_33

    const/16 v3, 0x7a

    goto/16 :goto_4

    .line 166
    :cond_2c
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x79

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_33

    const/16 v3, 0x51

    goto/16 :goto_4

    .line 165
    :cond_2d
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    const/16 v3, 0x1e

    goto/16 :goto_4

    .line 164
    :cond_2e
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v12, :cond_33

    const/16 v3, 0x99

    goto :goto_4

    .line 163
    :cond_2f
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v10, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_33

    :goto_1
    const/16 v3, 0x7f

    goto :goto_4

    .line 162
    :cond_30
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v11, :cond_33

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_33

    const/16 v3, 0x77

    goto :goto_4

    .line 156
    :pswitch_10
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_31

    .line 157
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_33

    const/16 v3, 0x70

    goto :goto_4

    :cond_31
    if-ne v1, v7, :cond_32

    .line 158
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_33

    const/16 v3, 0x34

    goto :goto_4

    :cond_32
    const/16 v2, 0x6f

    if-ne v1, v2, :cond_33

    .line 159
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_33

    goto :goto_4

    :cond_33
    :goto_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_3
    if-eqz v1, :cond_34

    if-eq v1, v0, :cond_34

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v3, 0x0

    :cond_34
    :goto_4
    if-nez v3, :cond_35

    return v14

    :cond_35
    and-int/lit16 v0, v3, 0xff

    return v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x77
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private final substring(II)Ljava/lang/String;
    .locals 2

    .line 1430
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1431
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sub-int/2addr p2, p1

    .line 1434
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private ungetChar(I)V
    .locals 3

    .line 1246
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1247
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1

    .line 1248
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 1249
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3

    .line 1380
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 1381
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return-void
.end method


# virtual methods
.method final eof()Z
    .locals 1

    .line 272
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v0
.end method

.method final getAndResetCurrentComment()Ljava/lang/String;
    .locals 5

    .line 1579
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1580
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1580
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1

    .line 1583
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1585
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    .line 1587
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 1588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1583
    :cond_2
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    throw v1
.end method

.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    .line 1560
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getCursor()I
    .locals 1

    .line 1531
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return v0
.end method

.method getFirstXMLToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 945
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 946
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 947
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 948
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->canUngetChar()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/16 v0, 0x3c

    .line 950
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 951
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    return v0
.end method

.method final getLine()Ljava/lang/String;
    .locals 3

    .line 1439
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 1440
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    add-int/2addr v0, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    add-int/lit8 v1, v0, -0x1

    .line 1443
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1448
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    .line 1450
    :goto_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 1451
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1455
    :cond_2
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int/2addr v0, v1

    .line 1457
    :cond_3
    :goto_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-direct {p0, v1, v0}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getLine(I[I)Ljava/lang/String;
    .locals 7

    .line 1463
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 1464
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-lez v0, :cond_3

    add-int/lit8 v4, p1, -0x1

    .line 1473
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    .line 1474
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0xa

    if-ne v4, v3, :cond_1

    add-int/lit8 v3, p1, -0x2

    .line 1475
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, p1, -0x1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-lez p1, :cond_5

    add-int/lit8 v4, p1, -0x1

    .line 1487
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->charAt(I)I

    move-result v4

    .line 1488
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 1493
    :goto_2
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    sub-int/2addr v4, v2

    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    const/4 v6, 0x1

    if-ltz v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    add-int/2addr v4, v5

    aput v4, p2, v1

    .line 1494
    aput v0, p2, v6

    if-nez v2, :cond_7

    .line 1496
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getLine()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1498
    :cond_7
    invoke-direct {p0, p1, v3}, Lorg/mozilla/javascript/TokenStream;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method final getLineno()I
    .locals 1

    .line 260
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    return v0
.end method

.method getNextXMLToken()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 956
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v0, 0x0

    .line 957
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 959
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const-string v2, "msg.XML.bad.form"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v1, v4, :cond_13

    .line 960
    iget-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    const/16 v6, 0x91

    const/16 v7, 0x2f

    const/16 v8, 0x7b

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    const/16 v2, 0x9

    if-eq v1, v2, :cond_6

    const/16 v2, 0xa

    if-eq v1, v2, :cond_6

    const/16 v2, 0xd

    if-eq v1, v2, :cond_6

    const/16 v2, 0x20

    if-eq v1, v2, :cond_6

    const/16 v2, 0x22

    if-eq v1, v2, :cond_5

    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    const/16 v2, 0x3e

    if-eq v1, v7, :cond_4

    if-eq v1, v8, :cond_3

    const/16 v3, 0x3d

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    .line 996
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 997
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 963
    :cond_1
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 964
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 965
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 986
    :cond_2
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 987
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 977
    :cond_3
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 978
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v6

    .line 968
    :cond_4
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 969
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 970
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 971
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 972
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 973
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    sub-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_1

    .line 982
    :cond_5
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 983
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->readQuotedString(I)Z

    move-result v1

    if-nez v1, :cond_7

    return v4

    .line 993
    :cond_6
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1001
    :cond_7
    :goto_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-nez v1, :cond_0

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_0

    .line 1002
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x94

    return v0

    :cond_8
    const/16 v5, 0x3c

    if-eq v1, v5, :cond_a

    if-eq v1, v8, :cond_9

    .line 1093
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_0

    .line 1089
    :cond_9
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1090
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return v6

    .line 1008
    :cond_a
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1009
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x21

    if-eq v1, v5, :cond_e

    if-eq v1, v7, :cond_c

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_b

    .line 1083
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1084
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/2addr v1, v9

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_0

    .line 1063
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1064
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1065
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readPI()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1069
    :cond_c
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1070
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1071
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_d

    .line 1073
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1074
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1075
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    .line 1078
    :cond_d
    iput-boolean v9, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    add-int/lit8 v1, v1, -0x1

    .line 1079
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_0

    .line 1012
    :cond_e
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1013
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1014
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v5, 0x2d

    if-eq v1, v5, :cond_11

    const/16 v5, 0x5b

    if-eq v1, v5, :cond_f

    .line 1058
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readEntity()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1032
    :cond_f
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1033
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1034
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v6, 0x43

    if-ne v1, v6, :cond_10

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v7, 0x44

    if-ne v1, v7, :cond_10

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v8, 0x41

    if-ne v1, v8, :cond_10

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v9, 0x54

    if-ne v1, v9, :cond_10

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v8, :cond_10

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_10

    .line 1041
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1042
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1043
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1044
    invoke-direct {p0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1045
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1046
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1047
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readCDATA()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1051
    :cond_10
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1052
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1053
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    .line 1017
    :cond_11
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    .line 1018
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1019
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v5, :cond_12

    .line 1021
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1022
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readXmlComment()Z

    move-result v1

    if-nez v1, :cond_0

    return v4

    .line 1025
    :cond_12
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1026
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4

    .line 1099
    :cond_13
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1100
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1101
    iput-object v3, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v4
.end method

.method final getNumber()D
    .locals 2

    .line 268
    iget-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    return-wide v0
.end method

.method final getOffset()I
    .locals 2

    .line 1398
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v0, v1

    .line 1399
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method final getQuoteChar()C
    .locals 1

    .line 265
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    int-to-char v0, v0

    return v0
.end method

.method final getSourceString()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method final getString()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return-object v0
.end method

.method final getToken()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 284
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 285
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v2

    :cond_1
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    .line 288
    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 289
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 290
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v4

    .line 292
    :cond_2
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSSpace(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x2d

    if-eq v0, v5, :cond_3

    .line 294
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 301
    :cond_3
    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v7, v6, -0x1

    iput v7, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 302
    iput v6, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    const/16 v6, 0x40

    if-ne v0, v6, :cond_4

    const/16 v0, 0x93

    return v0

    :cond_4
    const/16 v6, 0x75

    const/16 v7, 0x5c

    if-ne v0, v7, :cond_6

    .line 311
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 315
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/4 v8, 0x1

    const/4 v9, 0x1

    goto :goto_1

    .line 318
    :cond_5
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    const/16 v0, 0x5c

    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    int-to-char v8, v0

    .line 322
    invoke-static {v8}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 324
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 325
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    :cond_7
    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-eqz v8, :cond_16

    move v0, v9

    :goto_2
    if-eqz v9, :cond_b

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3
    const/4 v8, 0x4

    if-eq v3, v8, :cond_9

    .line 341
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v8

    .line 342
    invoke-static {v8, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v5

    if-gez v5, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    if-gez v5, :cond_a

    .line 347
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.invalid.escape"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v1

    .line 350
    :cond_a
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v9, 0x0

    goto :goto_2

    .line 353
    :cond_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v3

    if-ne v3, v7, :cond_d

    .line 355
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    if-ne v0, v6, :cond_c

    const/4 v0, 0x1

    const/4 v9, 0x1

    goto :goto_2

    .line 360
    :cond_c
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.illegal.character"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v1

    :cond_d
    if-eq v3, v1, :cond_f

    const v5, 0xfeff

    if-eq v3, v5, :cond_f

    int-to-char v5, v3

    .line 364
    invoke-static {v5}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_5

    .line 369
    :cond_e
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    .line 373
    :cond_f
    :goto_5
    invoke-direct {p0, v3}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 375
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_14

    .line 381
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    const/16 v2, 0x99

    if-eq v0, v2, :cond_10

    const/16 v2, 0x48

    if-ne v0, v2, :cond_12

    .line 383
    :cond_10
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v2, v2, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v2

    const/16 v3, 0xaa

    if-ge v2, v3, :cond_12

    const/16 v2, 0x99

    if-ne v0, v2, :cond_11

    const-string v0, "let"

    goto :goto_6

    :cond_11
    const-string v0, "yield"

    .line 388
    :goto_6
    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x27

    .line 393
    :cond_12
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v2, v1}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v2, 0x7f

    if-eq v0, v2, :cond_13

    return v0

    .line 396
    :cond_13
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v2, v2, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v2}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v2

    if-nez v2, :cond_15

    return v0

    .line 402
    :cond_14
    invoke-static {v1}, Lorg/mozilla/javascript/TokenStream;->isKeyword(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 405
    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->convertLastCharToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    :cond_15
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x27

    return v0

    .line 412
    :cond_16
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v8

    const/16 v9, 0x10

    const/16 v10, 0x78

    const/16 v11, 0x38

    const/16 v12, 0x8

    const/16 v13, 0x2e

    const/16 v14, 0x30

    if-nez v8, :cond_55

    if-ne v0, v13, :cond_17

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v8

    invoke-static {v8}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v8

    if-eqz v8, :cond_17

    goto/16 :goto_10

    :cond_17
    const/16 v8, 0x22

    if-eq v0, v8, :cond_45

    const/16 v8, 0x27

    if-ne v0, v8, :cond_18

    goto/16 :goto_b

    :cond_18
    const/16 v6, 0x21

    const/16 v8, 0x3d

    if-eq v0, v6, :cond_42

    const/16 v6, 0x5b

    if-eq v0, v6, :cond_41

    const/16 v6, 0x25

    if-eq v0, v6, :cond_3f

    const/16 v6, 0x26

    if-eq v0, v6, :cond_3c

    const/16 v6, 0x5d

    if-eq v0, v6, :cond_3b

    const/16 v6, 0x5e

    if-eq v0, v6, :cond_39

    const/16 v3, 0xa1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    .line 832
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.illegal.character"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v1

    :pswitch_0
    const/16 v0, 0x1b

    return v0

    :pswitch_1
    const/16 v0, 0x56

    return v0

    :pswitch_2
    const/16 v0, 0x7c

    .line 642
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x68

    return v0

    .line 644
    :cond_19
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x5b

    return v0

    :cond_1a
    const/16 v0, 0x9

    return v0

    :pswitch_3
    const/16 v0, 0x55

    return v0

    :pswitch_4
    const/16 v0, 0x66

    return v0

    :pswitch_5
    const/16 v0, 0x3e

    .line 717
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x3e

    .line 718
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 719
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v0, 0x60

    return v0

    :cond_1b
    const/16 v0, 0x14

    return v0

    .line 725
    :cond_1c
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x5f

    return v0

    :cond_1d
    const/16 v0, 0x13

    return v0

    .line 732
    :cond_1e
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x11

    return v0

    :cond_1f
    return v9

    .line 667
    :pswitch_6
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 668
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_20

    return v13

    :cond_20
    const/16 v0, 0xc

    return v0

    :cond_21
    const/16 v0, 0x5a

    return v0

    :pswitch_7
    const/16 v0, 0x21

    .line 690
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 691
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 692
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 693
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 694
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 695
    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v3

    .line 698
    :cond_22
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_23
    const/16 v0, 0x21

    .line 700
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    :cond_24
    const/16 v0, 0x3c

    .line 702
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 703
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 v0, 0x5e

    return v0

    :cond_25
    const/16 v0, 0x12

    return v0

    .line 709
    :cond_26
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 v0, 0xf

    return v0

    :cond_27
    const/16 v0, 0xe

    return v0

    :pswitch_8
    const/16 v0, 0x52

    return v0

    :pswitch_9
    const/16 v0, 0x3a

    .line 627
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v0, 0x90

    return v0

    :cond_28
    const/16 v0, 0x67

    return v0

    .line 747
    :pswitch_a
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart()V

    const/16 v0, 0x2f

    .line 749
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 750
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 751
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 752
    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v3

    :cond_29
    const/16 v0, 0x2a

    .line 756
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 758
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/16 v0, 0x2a

    .line 759
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 761
    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_7
    const/4 v0, 0x1

    goto :goto_9

    .line 763
    :cond_2a
    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    :goto_8
    const/4 v0, 0x0

    .line 766
    :cond_2b
    :goto_9
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v5

    if-ne v5, v1, :cond_2c

    .line 768
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 769
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v1, "msg.unterminated.comment"

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v3

    :cond_2c
    const/16 v6, 0x2a

    if-ne v5, v6, :cond_2d

    goto :goto_7

    :cond_2d
    const/16 v6, 0x2f

    if-ne v5, v6, :cond_2e

    if-eqz v0, :cond_2b

    .line 775
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v3

    .line 780
    :cond_2e
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto :goto_8

    .line 785
    :cond_2f
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 v0, 0x64

    return v0

    :cond_30
    const/16 v0, 0x18

    return v0

    .line 633
    :pswitch_b
    invoke-direct {p0, v13}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 v0, 0x8f

    return v0

    :cond_31
    const/16 v0, 0x28

    .line 635
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 v0, 0x92

    return v0

    :cond_32
    const/16 v0, 0x6c

    return v0

    .line 811
    :pswitch_c
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 v0, 0x62

    goto :goto_a

    .line 813
    :cond_33
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 814
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    if-nez v0, :cond_34

    const/16 v0, 0x3e

    .line 817
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "--"

    .line 818
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    .line 819
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 820
    sget-object v0, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return v3

    :cond_34
    const/16 v0, 0x6b

    goto :goto_a

    :cond_35
    const/16 v0, 0x16

    .line 828
    :goto_a
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    return v0

    :pswitch_d
    const/16 v0, 0x59

    return v0

    .line 802
    :pswitch_e
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 v0, 0x61

    return v0

    :cond_36
    const/16 v0, 0x2b

    .line 804
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_37

    const/16 v0, 0x6a

    return v0

    :cond_37
    const/16 v0, 0x15

    return v0

    .line 740
    :pswitch_f
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_38

    const/16 v0, 0x63

    return v0

    :cond_38
    const/16 v0, 0x17

    return v0

    :pswitch_10
    const/16 v0, 0x58

    return v0

    :pswitch_11
    const/16 v0, 0x57

    return v0

    .line 651
    :cond_39
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    return v7

    :cond_3a
    return v3

    :cond_3b
    const/16 v0, 0x54

    return v0

    :cond_3c
    const/16 v0, 0x26

    .line 658
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/16 v0, 0x69

    return v0

    .line 660
    :cond_3d
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/16 v0, 0x5d

    return v0

    :cond_3e
    const/16 v0, 0xb

    return v0

    .line 792
    :cond_3f
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0x65

    return v0

    :cond_40
    const/16 v0, 0x19

    return v0

    :cond_41
    const/16 v0, 0x53

    return v0

    .line 678
    :cond_42
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 679
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v0

    if-eqz v0, :cond_43

    const/16 v0, 0x2f

    return v0

    :cond_43
    const/16 v0, 0xd

    return v0

    :cond_44
    const/16 v0, 0x1a

    return v0

    .line 511
    :cond_45
    :goto_b
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    .line 512
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 514
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    .line 515
    :goto_c
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    if-eq v0, v4, :cond_54

    if-eq v0, v3, :cond_53

    if-ne v0, v1, :cond_46

    goto/16 :goto_f

    :cond_46
    if-ne v0, v7, :cond_52

    .line 527
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    if-eq v0, v3, :cond_51

    const/16 v4, 0x62

    if-eq v0, v4, :cond_50

    const/16 v4, 0x66

    if-eq v0, v4, :cond_4f

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_4e

    const/16 v4, 0x72

    if-eq v0, v4, :cond_4d

    if-eq v0, v10, :cond_4a

    packed-switch v0, :pswitch_data_3

    if-gt v14, v0, :cond_52

    if-ge v0, v11, :cond_52

    add-int/lit8 v0, v0, -0x30

    .line 591
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-gt v14, v4, :cond_47

    if-ge v4, v11, :cond_47

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v4

    sub-int/2addr v0, v14

    .line 594
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    if-gt v14, v4, :cond_47

    if-ge v4, v11, :cond_47

    const/16 v5, 0x1f

    if-gt v0, v5, :cond_47

    mul-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v4

    sub-int/2addr v0, v14

    .line 599
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 602
    :cond_47
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    goto/16 :goto_e

    :pswitch_12
    const/16 v0, 0xb

    goto :goto_e

    .line 543
    :pswitch_13
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 544
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_d
    const/4 v8, 0x4

    if-eq v4, v8, :cond_49

    .line 547
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v8

    .line 548
    invoke-static {v8, v5}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v5

    if-gez v5, :cond_48

    move v0, v8

    goto :goto_c

    .line 552
    :cond_48
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 556
    :cond_49
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    move v0, v5

    goto :goto_e

    :pswitch_14
    const/16 v0, 0x9

    goto :goto_e

    .line 562
    :cond_4a
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 563
    invoke-static {v0, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    if-gez v4, :cond_4b

    .line 565
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_c

    .line 569
    :cond_4b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v5

    .line 570
    invoke-static {v5, v4}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v4

    if-gez v4, :cond_4c

    .line 572
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 573
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    move v0, v5

    goto/16 :goto_c

    :cond_4c
    move v0, v4

    goto :goto_e

    :cond_4d
    const/16 v0, 0xd

    goto :goto_e

    :cond_4e
    const/16 v0, 0xa

    goto :goto_e

    :cond_4f
    const/16 v0, 0xc

    goto :goto_e

    :cond_50
    const/16 v0, 0x8

    goto :goto_e

    .line 585
    :cond_51
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto/16 :goto_c

    .line 607
    :cond_52
    :goto_e
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 608
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->getChar(Z)I

    move-result v0

    goto/16 :goto_c

    .line 517
    :cond_53
    :goto_f
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 518
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 519
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.unterminated.string.lit"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v1

    .line 611
    :cond_54
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v0

    .line 612
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    const/16 v0, 0x29

    return v0

    .line 413
    :cond_55
    :goto_10
    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    .line 414
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 416
    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    if-ne v0, v14, :cond_59

    .line 419
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    if-eq v0, v10, :cond_58

    const/16 v6, 0x58

    if-ne v0, v6, :cond_56

    goto :goto_11

    .line 424
    :cond_56
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 426
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    move v6, v0

    const/16 v0, 0x8

    goto :goto_13

    .line 428
    :cond_57
    invoke-direct {p0, v14}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_12

    .line 422
    :cond_58
    :goto_11
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    .line 423
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    move v6, v0

    const/16 v0, 0x10

    goto :goto_13

    :cond_59
    :goto_12
    move v6, v0

    const/16 v0, 0xa

    :goto_13
    if-ne v0, v9, :cond_5a

    .line 433
    :goto_14
    invoke-static {v6, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v7

    if-ltz v7, :cond_5d

    .line 434
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 435
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    goto :goto_14

    :cond_5a
    :goto_15
    if-gt v14, v6, :cond_5d

    const/16 v7, 0x39

    if-gt v6, v7, :cond_5d

    if-ne v0, v12, :cond_5c

    if-lt v6, v11, :cond_5c

    .line 446
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    if-ne v6, v11, :cond_5b

    const-string v7, "8"

    goto :goto_16

    :cond_5b
    const-string v7, "9"

    :goto_16
    const-string v8, "msg.bad.octal.literal"

    invoke-virtual {v0, v8, v7}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 450
    :cond_5c
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 451
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    goto :goto_15

    :cond_5d
    if-ne v0, v3, :cond_66

    if-eq v6, v13, :cond_5e

    const/16 v7, 0x65

    if-eq v6, v7, :cond_5e

    const/16 v7, 0x45

    if-ne v6, v7, :cond_66

    :cond_5e
    if-ne v6, v13, :cond_60

    .line 461
    :cond_5f
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 462
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v6

    .line 463
    invoke-static {v6}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v4

    if-nez v4, :cond_5f

    :cond_60
    const/16 v4, 0x65

    if-eq v6, v4, :cond_62

    const/16 v4, 0x45

    if-ne v6, v4, :cond_61

    goto :goto_18

    :cond_61
    :goto_17
    const/4 v4, 0x0

    goto :goto_19

    .line 466
    :cond_62
    :goto_18
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 467
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    const/16 v6, 0x2b

    if-eq v4, v6, :cond_63

    if-ne v4, v5, :cond_64

    .line 469
    :cond_63
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 470
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 472
    :cond_64
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_65

    .line 473
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.missing.exponent"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v1

    .line 477
    :cond_65
    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 478
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 479
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v5

    if-nez v5, :cond_65

    move v6, v4

    goto :goto_17

    .line 482
    :cond_66
    :goto_19
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 483
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v5

    .line 484
    iput-object v5, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    if-ne v0, v3, :cond_67

    if-nez v4, :cond_67

    .line 490
    :try_start_0
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1a

    .line 493
    :catch_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.caught.nfe"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    return v1

    .line 497
    :cond_67
    invoke-static {v5, v2, v0}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;II)D

    move-result-wide v0

    .line 500
    :goto_1a
    iput-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    const/16 v0, 0x28

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x74
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getTokenBeg()I
    .locals 1

    .line 1538
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    return v0
.end method

.method public getTokenEnd()I
    .locals 1

    .line 1545
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v0
.end method

.method public getTokenLength()I
    .locals 2

    .line 1552
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final isNumberHex()Z
    .locals 1

    .line 270
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isHex:Z

    return v0
.end method

.method final isNumberOctal()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    return v0
.end method

.method isXMLAttribute()Z
    .locals 1

    .line 940
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    return v0
.end method

.method readAndClearRegExpFlags()Ljava/lang/String;
    .locals 2

    .line 933
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    const/4 v1, 0x0

    .line 934
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-object v0
.end method

.method readRegExp(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    const/4 v1, 0x0

    .line 879
    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    const/16 p1, 0x3d

    .line 882
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x18

    if-ne p1, v2, :cond_d

    :goto_0
    const/4 p1, 0x0

    .line 889
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_7

    if-eqz p1, :cond_1

    goto :goto_3

    .line 907
    :cond_1
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    :goto_2
    const/16 v2, 0x67

    .line 910
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 911
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_2
    const/16 v2, 0x69

    .line 912
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 913
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_3
    const/16 v2, 0x6d

    .line 914
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 915
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    :cond_4
    const/16 v2, 0x79

    .line 916
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 917
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_2

    .line 921
    :cond_5
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 923
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 924
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.invalid.re.flag"

    invoke-virtual {v0, v2}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 927
    :cond_6
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 928
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    return-void

    :cond_7
    :goto_3
    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eq v2, v3, :cond_c

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    goto :goto_5

    :cond_8
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_9

    .line 898
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 899
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v2

    goto :goto_4

    :cond_9
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_a

    const/4 p1, 0x1

    goto :goto_4

    :cond_a
    const/16 v3, 0x5d

    if-ne v2, v3, :cond_b

    const/4 p1, 0x0

    .line 905
    :cond_b
    :goto_4
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_1

    .line 891
    :cond_c
    :goto_5
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 892
    iget p1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr p1, v4

    iput p1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 893
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 894
    iget-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v0, "msg.unterminated.re.lit"

    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    return-void

    .line 884
    :cond_d
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    const/4 p1, 0x0

    throw p1
.end method

.method tokenToString(I)Ljava/lang/String;
    .locals 0

    const-string p1, ""

    return-object p1
.end method
