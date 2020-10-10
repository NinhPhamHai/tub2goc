.class public final Lch/blinkenlights/android/vanilla/CoverBitmap;
.super Ljava/lang/Object;
.source "CoverBitmap.java"


# static fields
.field private static BOTTOM_PADDING:I = 0x0

.field private static PADDING:I = 0x0

.field private static TEXT_SIZE:I = -0x1

.field private static TEXT_SIZE_BIG:I

.field private static TOP_PADDING:I


# direct methods
.method public static createBitmap(Landroid/content/Context;ILandroid/graphics/Bitmap;Lch/blinkenlights/android/vanilla/Song;II)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    .line 125
    invoke-static {p2, p4, p5}, Lch/blinkenlights/android/vanilla/CoverBitmap;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 127
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid bitmap type given: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 123
    :cond_1
    invoke-static {p0, p2, p3, p4, p5}, Lch/blinkenlights/android/vanilla/CoverBitmap;->createSeparatedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lch/blinkenlights/android/vanilla/Song;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 121
    :cond_2
    invoke-static {p0, p2, p3, p4, p5}, Lch/blinkenlights/android/vanilla/CoverBitmap;->createOverlappingBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lch/blinkenlights/android/vanilla/Song;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createOverlappingBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lch/blinkenlights/android/vanilla/Song;II)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    .line 133
    sget v4, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 134
    invoke-static/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/CoverBitmap;->loadTextSizes(Landroid/content/Context;)V

    .line 136
    :cond_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v5, 0x1

    .line 137
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object v5, v1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const-string v6, ""

    if-nez v5, :cond_1

    move-object v5, v6

    .line 140
    :cond_1
    iget-object v7, v1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    if-nez v7, :cond_2

    move-object v13, v6

    goto :goto_0

    :cond_2
    move-object v13, v7

    .line 141
    :goto_0
    iget-object v1, v1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v6

    .line 143
    :cond_3
    sget v14, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE_BIG:I

    .line 144
    sget v15, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE:I

    .line 145
    sget v16, Lch/blinkenlights/android/vanilla/CoverBitmap;->PADDING:I

    int-to-float v12, v14

    .line 147
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v11, v6

    int-to-float v10, v15

    .line 149
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 150
    invoke-virtual {v4, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v9, v6

    .line 151
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v8, v6

    .line 153
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    mul-int/lit8 v17, v16, 0x2

    add-int v6, v6, v17

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    mul-int/lit8 v6, v15, 0x2

    add-int/2addr v6, v14

    mul-int/lit8 v18, v16, 0x4

    add-int v6, v6, v18

    .line 154
    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move/from16 v18, v8

    if-nez v0, :cond_4

    move/from16 p2, v9

    const/4 v2, 0x0

    const/4 v8, 0x0

    goto :goto_1

    .line 163
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    move/from16 p2, v9

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v2, v2

    int-to-float v8, v8

    div-float/2addr v2, v8

    int-to-float v3, v3

    int-to-float v9, v9

    div-float/2addr v3, v9

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    mul-float v8, v8, v2

    float-to-int v8, v8

    mul-float v9, v9, v2

    float-to-int v2, v9

    .line 172
    :goto_1
    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 173
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    move/from16 v19, v10

    .line 175
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v20, v1

    .line 176
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_5

    sub-int v21, v3, v8

    move-object/from16 p3, v10

    .line 179
    div-int/lit8 v10, v21, 0x2

    sub-int v21, v9, v2

    move/from16 v22, v11

    .line 180
    div-int/lit8 v11, v21, 0x2

    move/from16 v21, v15

    .line 181
    new-instance v15, Landroid/graphics/Rect;

    add-int/2addr v8, v10

    add-int/2addr v2, v11

    invoke-direct {v15, v10, v11, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 182
    invoke-virtual {v1, v0, v2, v15, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    move-object/from16 p3, v10

    move/from16 v22, v11

    move/from16 v21, v15

    :goto_2
    sub-int v0, v3, v7

    .line 185
    div-int/lit8 v0, v0, 0x2

    sub-int v2, v9, v6

    .line 186
    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v7

    .line 187
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v9, v6

    .line 188
    div-int/lit8 v9, v9, 0x2

    const/16 v6, 0x96

    const/4 v8, 0x0

    .line 190
    invoke-virtual {v4, v6, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    int-to-float v8, v0

    int-to-float v10, v2

    int-to-float v3, v3

    int-to-float v11, v9

    move-object v6, v1

    move v15, v7

    move v7, v8

    move v8, v10

    move/from16 v23, p2

    move v9, v3

    move/from16 v3, v19

    move-object/from16 v19, p3

    move v10, v11

    move-object v11, v4

    .line 191
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v15, v15, v17

    const/16 v6, 0xff

    .line 194
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    add-int v2, v2, v16

    add-int v0, v0, v16

    .line 198
    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object v6, v1

    move-object v7, v5

    move v8, v0

    move v9, v2

    move/from16 v10, v22

    move v11, v15

    move-object v12, v4

    .line 199
    invoke-static/range {v6 .. v12}, Lch/blinkenlights/android/vanilla/CoverBitmap;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    add-int v14, v14, v16

    add-int/2addr v2, v14

    .line 202
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object v7, v13

    move v9, v2

    move/from16 v10, v23

    .line 203
    invoke-static/range {v6 .. v12}, Lch/blinkenlights/android/vanilla/CoverBitmap;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    add-int v3, v21, v16

    add-int v9, v2, v3

    move-object/from16 v7, v20

    move/from16 v10, v18

    .line 206
    invoke-static/range {v6 .. v12}, Lch/blinkenlights/android/vanilla/CoverBitmap;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    return-object v19
.end method

.method private static createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2

    .line 306
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 307
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 308
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    mul-float v0, v0, p1

    float-to-int p2, v0

    mul-float v1, v1, p1

    float-to-int p1, v1

    const/4 v0, 0x1

    .line 311
    invoke-static {p0, p2, p1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static createSeparatedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;Lch/blinkenlights/android/vanilla/Song;II)Landroid/graphics/Bitmap;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p3

    move/from16 v2, p4

    .line 213
    sget v3, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 214
    invoke-static/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/CoverBitmap;->loadTextSizes(Landroid/content/Context;)V

    .line 216
    :cond_0
    sget v8, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE:I

    .line 217
    sget v3, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE_BIG:I

    .line 218
    sget v4, Lch/blinkenlights/android/vanilla/CoverBitmap;->PADDING:I

    .line 219
    sget v5, Lch/blinkenlights/android/vanilla/CoverBitmap;->TOP_PADDING:I

    .line 220
    sget v6, Lch/blinkenlights/android/vanilla/CoverBitmap;->BOTTOM_PADDING:I

    .line 223
    invoke-static/range {p0 .. p0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->getDefaultCoverColors(Landroid/content/Context;)[I

    move-result-object v9

    const/high16 v10, -0x1000000

    const/4 v11, 0x0

    .line 225
    aget v9, v9, v11

    const v11, 0xffffff

    and-int/2addr v9, v11

    sub-int/2addr v11, v9

    add-int/2addr v11, v10

    .line 229
    iget-object v9, v1, Lch/blinkenlights/android/vanilla/Song;->title:Ljava/lang/String;

    const-string v10, ""

    if-nez v9, :cond_1

    move-object v9, v10

    .line 230
    :cond_1
    iget-object v12, v1, Lch/blinkenlights/android/vanilla/Song;->album:Ljava/lang/String;

    if-nez v12, :cond_2

    move-object v12, v10

    .line 231
    :cond_2
    iget-object v1, v1, Lch/blinkenlights/android/vanilla/Song;->artist:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v10, v1

    :goto_0
    add-int v13, v4, v3

    add-int v14, v4, v8

    mul-int/lit8 v1, v14, 0x2

    add-int/2addr v1, v13

    add-int/2addr v1, v4

    sub-int v15, v2, v6

    sub-int/2addr v15, v1

    move-object/from16 p0, v10

    .line 237
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move/from16 p2, v14

    .line 238
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz v0, :cond_4

    move-object/from16 v16, v10

    sub-int v10, v15, v5

    .line 241
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 242
    invoke-static {v0, v7, v10}, Lch/blinkenlights/android/vanilla/CoverBitmap;->createZoomedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sub-int v17, v15, v10

    sub-int v17, v17, v5

    .line 246
    div-int/lit8 v17, v17, 0x2

    add-int v5, v5, v17

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move/from16 v18, v13

    int-to-float v13, v5

    move/from16 v19, v8

    const/4 v8, 0x0

    .line 247
    invoke-virtual {v14, v0, v12, v13, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v5, v10

    sub-int v0, v2, v5

    sub-int/2addr v0, v1

    sub-int/2addr v0, v6

    .line 254
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    if-ge v0, v15, :cond_5

    move v15, v0

    goto :goto_1

    :cond_4
    move/from16 v19, v8

    move-object/from16 v16, v10

    move-object/from16 v17, v12

    move/from16 v18, v13

    :cond_5
    :goto_1
    add-int v8, v15, v4

    .line 264
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v11, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 265
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 266
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 269
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    int-to-float v0, v3

    .line 270
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 271
    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v5, v0

    sub-int v0, v7, v5

    .line 272
    div-int/lit8 v2, v0, 0x2

    move-object v0, v14

    move-object v1, v9

    move v3, v8

    move/from16 v4, p3

    move-object v6, v10

    .line 273
    invoke-static/range {v0 .. v6}, Lch/blinkenlights/android/vanilla/CoverBitmap;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    const/16 v0, 0xaa

    .line 276
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    move/from16 v0, v19

    int-to-float v0, v0

    .line 277
    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    add-int v8, v8, v18

    move-object/from16 v12, v17

    .line 281
    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v5, v0

    sub-int v0, v7, v5

    .line 282
    div-int/lit8 v2, v0, 0x2

    move-object v0, v14

    move-object v1, v12

    move v3, v8

    .line 283
    invoke-static/range {v0 .. v6}, Lch/blinkenlights/android/vanilla/CoverBitmap;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    add-int v3, v8, p2

    move-object/from16 v1, p0

    .line 287
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v5, v0

    sub-int v0, v7, v5

    .line 288
    div-int/lit8 v2, v0, 0x2

    move-object v0, v14

    .line 289
    invoke-static/range {v0 .. v6}, Lch/blinkenlights/android/vanilla/CoverBitmap;->drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V

    return-object v16
.end method

.method private static createZoomedBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    .line 325
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v4, v0

    int-to-float v5, v2

    div-float v6, v4, v5

    int-to-float v7, v1

    int-to-float v8, v3

    div-float v9, v7, v8

    .line 328
    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float v5, v5, v6

    mul-float v8, v8, v6

    sub-float/2addr v5, v4

    div-float/2addr v5, v6

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v5, v4

    float-to-int v10, v5

    sub-float/2addr v8, v7

    div-float/2addr v8, v6

    div-float/2addr v8, v4

    float-to-int v11, v8

    mul-int/lit8 v4, v10, 0x2

    sub-int v12, v2, v4

    mul-int/lit8 v2, v11, 0x2

    sub-int v13, v3, v2

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, p0

    .line 336
    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    .line 337
    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static drawText(Landroid/graphics/Canvas;Ljava/lang/String;IIIILandroid/graphics/Paint;)V
    .locals 3

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    sub-int p4, p5, p4

    const/4 v0, 0x0

    .line 98
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    int-to-float v0, p2

    int-to-float p3, p3

    add-int/2addr p5, p2

    int-to-float p5, p5

    .line 99
    invoke-virtual {p6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    add-float/2addr v1, p3

    invoke-virtual {p0, v0, p3, p5, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    add-int/2addr p2, p4

    int-to-float p2, p2

    .line 100
    invoke-virtual {p6}, Landroid/graphics/Paint;->ascent()F

    move-result p4

    sub-float/2addr p3, p4

    invoke-virtual {p0, p1, p2, p3, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public static generateDefaultCover(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 350
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 352
    invoke-static {p0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->getDefaultCoverColors(Landroid/content/Context;)[I

    move-result-object p0

    const/4 p2, 0x0

    .line 353
    aget p2, p0, p2

    const/4 v0, 0x1

    .line 354
    aget p0, p0, v0

    .line 356
    div-int/lit8 v1, p1, 0xa

    mul-int/lit8 v2, v1, 0x5

    mul-int/lit8 v3, v1, 0x3

    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v4, 0x2

    add-int/2addr v5, v3

    sub-int/2addr v5, v1

    add-int v6, v4, v2

    .line 362
    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    sub-int v5, p1, v5

    .line 363
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    sub-int v8, p1, v4

    sub-int v6, p1, v6

    .line 364
    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v8, v6

    .line 366
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 367
    invoke-virtual {p1, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 369
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 370
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 371
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v0, v5

    int-to-float v6, v8

    int-to-float v9, v4

    .line 375
    invoke-virtual {p0, v0, v6, v9, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/2addr v5, v4

    sub-int/2addr v5, v1

    sub-int/2addr v8, v2

    .line 379
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v2, v5

    int-to-float v4, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v0, v2, v4, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v4, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    sub-int/2addr v8, v7

    .line 382
    new-instance v0, Landroid/graphics/RectF;

    int-to-float v4, v8

    add-int/2addr v5, v3

    int-to-float v3, v5

    add-int/2addr v8, v1

    int-to-float v5, v8

    invoke-direct {v0, v2, v4, v3, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1, v1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public static generatePlaceholderCover(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    if-ge p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    int-to-float v1, p1

    const v2, 0x3ecccccd    # 0.4f

    mul-float v2, v2, v1

    const-string v3, ""

    const-string v4, "(?i)^The "

    .line 400
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v4, "[ <>_-]"

    .line 401
    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v4

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-ne v4, v6, :cond_1

    .line 406
    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 409
    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 410
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 411
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 414
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v7, Lch/blinkenlights/android/vanilla/R$array;->letter_tile_colors:I

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 415
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    rem-int/2addr p3, v7

    invoke-virtual {p0, p3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 416
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 417
    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 419
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 420
    invoke-virtual {v4, v6}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    const/16 p0, 0xff

    .line 422
    invoke-virtual {v6, p0, p0, p0, p0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 423
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 424
    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 426
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 427
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v6, v3, v5, p3, p0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr v1, p3

    .line 429
    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    sub-float/2addr v1, v0

    int-to-float p2, p2

    div-float/2addr p2, p3

    invoke-virtual {p0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p0

    sub-float/2addr p2, p0

    invoke-virtual {v4, v3, v1, p2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static loadTextSizes(Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/high16 v0, 0x41600000    # 14.0f

    const/4 v1, 0x1

    .line 74
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE:I

    const/high16 v2, 0x41a00000    # 20.0f

    .line 75
    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lch/blinkenlights/android/vanilla/CoverBitmap;->TEXT_SIZE_BIG:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 76
    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lch/blinkenlights/android/vanilla/CoverBitmap;->PADDING:I

    .line 78
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lch/blinkenlights/android/vanilla/CoverBitmap;->TOP_PADDING:I

    const/high16 v0, 0x42a00000    # 80.0f

    .line 80
    invoke-static {v1, v0, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lch/blinkenlights/android/vanilla/CoverBitmap;->BOTTOM_PADDING:I

    return-void
.end method
