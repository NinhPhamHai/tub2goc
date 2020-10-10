.class public final Lokio/internal/BufferKt;
.super Ljava/lang/Object;
.source "Buffer.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n+ 2 -Util.kt\nokio/-Util\n*L\n1#1,1476:1\n101#1,20:1501\n425#1,2:1522\n101#1,20:1535\n101#1:1555\n103#1,8:1557\n113#1,8:1566\n101#1,20:1575\n66#2:1477\n66#2:1478\n66#2:1479\n66#2:1480\n66#2:1481\n66#2:1482\n66#2:1483\n66#2:1484\n66#2:1485\n66#2:1486\n66#2:1487\n66#2:1488\n66#2:1489\n66#2:1490\n72#2:1491\n72#2:1492\n69#2:1493\n69#2:1494\n69#2:1495\n69#2:1496\n69#2:1497\n69#2:1498\n69#2:1499\n69#2:1500\n75#2:1521\n78#2:1524\n66#2:1525\n66#2:1526\n66#2:1527\n66#2:1528\n66#2:1529\n66#2:1530\n66#2:1531\n66#2:1532\n66#2:1533\n66#2:1534\n78#2:1556\n78#2:1565\n78#2:1574\n*E\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/internal/BufferKt\n*L\n396#1,20:1501\n1222#1,20:1535\n1253#1:1555\n1253#1,8:1557\n1253#1,8:1566\n1287#1,20:1575\n167#1:1477\n191#1:1478\n310#1:1479\n310#1:1480\n315#1:1481\n315#1:1482\n337#1:1483\n338#1:1484\n339#1:1485\n340#1:1486\n344#1:1487\n345#1:1488\n346#1:1489\n347#1:1490\n369#1:1491\n370#1:1492\n374#1:1493\n375#1:1494\n376#1:1495\n377#1:1496\n378#1:1497\n379#1:1498\n380#1:1499\n381#1:1500\n408#1:1521\n823#1:1524\n837#1:1525\n839#1:1526\n843#1:1527\n845#1:1528\n849#1:1529\n851#1:1530\n855#1:1531\n857#1:1532\n877#1:1533\n880#1:1534\n1253#1:1556\n1253#1:1565\n1253#1:1574\n*E\n"
.end annotation


# static fields
.field private static final HEX_DIGIT_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    .line 38
    invoke-static {v0}, Lokio/-Platform;->asUtf8ToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-void
.end method

.method public static final getHEX_DIGIT_BYTES()[B
    .locals 1

    .line 38
    sget-object v0, Lokio/internal/BufferKt;->HEX_DIGIT_BYTES:[B

    return-object v0
.end method

.method public static final readUtf8Line(Lokio/Buffer;J)Ljava/lang/String;
    .locals 6

    const-string v0, "$this$readUtf8Line"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_0

    sub-long v2, p1, v0

    .line 78
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->getByte(J)B

    move-result v4

    const/16 v5, 0xd

    int-to-byte v5, v5

    if-ne v4, v5, :cond_0

    .line 80
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x2

    .line 81
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->readUtf8(J)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    :goto_0
    return-object p1
.end method

.method public static final selectPrefix(Lokio/Buffer;Lokio/Options;Z)I
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "$this$selectPrefix"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, v0, Lokio/Buffer;->head:Lokio/Segment;

    const/4 v1, -0x2

    const/4 v3, -0x1

    if-eqz v0, :cond_12

    .line 140
    iget-object v4, v0, Lokio/Segment;->data:[B

    .line 141
    iget v5, v0, Lokio/Segment;->pos:I

    .line 142
    iget v6, v0, Lokio/Segment;->limit:I

    .line 144
    invoke-virtual/range {p1 .. p1}, Lokio/Options;->getTrie$okio()[I

    move-result-object v2

    const/4 v7, 0x0

    move v8, v5

    move v10, v6

    const/4 v9, -0x1

    move-object v5, v0

    move-object v6, v4

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v11, v4, 0x1

    .line 151
    aget v4, v2, v4

    add-int/lit8 v12, v11, 0x1

    .line 153
    aget v11, v2, v11

    if-eq v11, v3, :cond_0

    move v9, v11

    :cond_0
    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    const/4 v11, 0x0

    if-gez v4, :cond_b

    mul-int/lit8 v4, v4, -0x1

    add-int v13, v12, v4

    :goto_1
    add-int/lit8 v4, v8, 0x1

    .line 167
    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v14, v12, 0x1

    .line 168
    aget v12, v2, v12

    if-eq v8, v12, :cond_2

    return v9

    :cond_2
    if-ne v14, v13, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    if-ne v4, v10, :cond_9

    if-eqz v5, :cond_8

    .line 173
    iget-object v4, v5, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_7

    .line 174
    iget v5, v4, Lokio/Segment;->pos:I

    .line 175
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 176
    iget v10, v4, Lokio/Segment;->limit:I

    if-ne v4, v0, :cond_6

    if-nez v8, :cond_5

    :goto_3
    if-eqz p2, :cond_4

    return v1

    :cond_4
    return v9

    :cond_5
    move v4, v5

    move-object v5, v11

    goto :goto_4

    :cond_6
    move/from16 v16, v5

    move-object v5, v4

    move/from16 v4, v16

    goto :goto_4

    .line 173
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_9
    :goto_4
    if-eqz v8, :cond_a

    .line 184
    aget v8, v2, v14

    move v13, v4

    goto :goto_6

    :cond_a
    move v8, v4

    move v12, v14

    goto :goto_1

    :cond_b
    add-int/lit8 v13, v8, 0x1

    .line 191
    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    add-int v14, v12, v4

    :goto_5
    if-ne v12, v14, :cond_c

    return v9

    .line 196
    :cond_c
    aget v15, v2, v12

    if-ne v8, v15, :cond_11

    add-int/2addr v12, v4

    .line 197
    aget v8, v2, v12

    if-ne v13, v10, :cond_f

    .line 206
    iget-object v4, v5, Lokio/Segment;->next:Lokio/Segment;

    if-eqz v4, :cond_e

    .line 207
    iget v5, v4, Lokio/Segment;->pos:I

    .line 208
    iget-object v6, v4, Lokio/Segment;->data:[B

    .line 209
    iget v10, v4, Lokio/Segment;->limit:I

    if-ne v4, v0, :cond_d

    move v13, v5

    move-object v5, v11

    goto :goto_6

    :cond_d
    move v13, v5

    move-object v5, v4

    goto :goto_6

    .line 206
    :cond_e
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v11

    :cond_f
    :goto_6
    if-ltz v8, :cond_10

    return v8

    :cond_10
    neg-int v4, v8

    move v8, v13

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_12
    if-eqz p2, :cond_13

    goto :goto_7

    :cond_13
    const/4 v1, -0x1

    :goto_7
    return v1
.end method

.method public static synthetic selectPrefix$default(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 136
    :cond_0
    invoke-static {p0, p1, p2}, Lokio/internal/BufferKt;->selectPrefix(Lokio/Buffer;Lokio/Options;Z)I

    move-result p0

    return p0
.end method
