.class Lcom/mopub/nativeads/PlacementData;
.super Ljava/lang/Object;
.source "PlacementData.java"


# static fields
.field public static final NOT_FOUND:I = -0x1


# instance fields
.field private final mAdjustedAdPositions:[I

.field private mDesiredCount:I

.field private final mDesiredInsertionPositions:[I

.field private final mDesiredOriginalPositions:[I

.field private final mNativeAds:[Lcom/mopub/nativeads/NativeAd;

.field private final mOriginalAdPositions:[I

.field private mPlacedCount:I


# direct methods
.method private constructor <init>([I)V
    .locals 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 139
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    .line 140
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    const/4 v1, 0x0

    .line 141
    iput v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 142
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    .line 143
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    .line 144
    new-array v2, v0, [Lcom/mopub/nativeads/NativeAd;

    iput-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    .line 145
    iput v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    .line 151
    array-length v2, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 152
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-gt p1, p2, :cond_2

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    .line 521
    aget v1, p0, v0

    if-ge v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p1, v0

    goto :goto_0

    :cond_0
    if-le v1, p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p2, v0

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    not-int p0, p1

    return p0
.end method

.method private static binarySearchFirstEquals([III)I
    .locals 1

    const/4 v0, 0x0

    .line 479
    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_0

    not-int p0, p1

    return p0

    .line 487
    :cond_0
    aget p2, p0, p1

    :goto_0
    if-ltz p1, :cond_1

    .line 488
    aget v0, p0, p1

    if-ne v0, p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static binarySearchGreaterThan([III)I
    .locals 2

    const/4 v0, 0x0

    .line 496
    invoke-static {p0, v0, p1, p2}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p2

    if-gez p2, :cond_0

    not-int p0, p2

    return p0

    .line 504
    :cond_0
    aget v0, p0, p2

    :goto_0
    if-ge p2, p1, :cond_1

    .line 505
    aget v1, p0, p2

    if-ne v1, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method static empty()Lcom/mopub/nativeads/PlacementData;
    .locals 2

    .line 183
    new-instance v0, Lcom/mopub/nativeads/PlacementData;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/PlacementData;-><init>([I)V

    return-object v0
.end method

.method static fromAdPositioning(Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;)Lcom/mopub/nativeads/PlacementData;
    .locals 6

    .line 158
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning;->getRepeatingInterval()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    .line 161
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc8

    .line 162
    :goto_0
    new-array v2, v1, [I

    .line 168
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 169
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v5, v3, 0x1

    .line 170
    aput v4, v2, v3

    move v3, v5

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v1, :cond_2

    add-int/2addr v4, p0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v3, 0x1

    .line 176
    aput v4, v2, v3

    move v3, v0

    goto :goto_2

    .line 178
    :cond_2
    new-instance p0, Lcom/mopub/nativeads/PlacementData;

    invoke-direct {p0, v2}, Lcom/mopub/nativeads/PlacementData;-><init>([I)V

    return-object p0
.end method


# virtual methods
.method clearAds()V
    .locals 3

    .line 415
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 419
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/mopub/nativeads/PlacementData;->clearAdsInRange(II)I

    return-void
.end method

.method clearAdsInRange(II)I
    .locals 9

    .line 354
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    new-array v1, v0, [I

    .line 355
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 360
    :goto_0
    iget v5, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v3, v5, :cond_2

    .line 361
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v5, v5, v3

    .line 362
    iget-object v6, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v6, v6, v3

    if-gt p1, v6, :cond_0

    if-ge v6, p2, :cond_0

    .line 366
    aput v5, v1, v4

    sub-int/2addr v6, v4

    .line 367
    aput v6, v0, v4

    .line 370
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/mopub/nativeads/NativeAd;->destroy()V

    .line 371
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-lez v4, :cond_1

    sub-int v7, v3, v4

    .line 376
    iget-object v8, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aput v5, v8, v7

    .line 377
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    sub-int/2addr v6, v4

    aput v6, v5, v7

    .line 378
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object v6, v5, v3

    aput-object v6, v5, v7

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    return v2

    .line 390
    :cond_3
    aget p1, v0, v2

    .line 391
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {p2, v3, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result p1

    .line 393
    iget p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_4

    .line 394
    iget-object v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    add-int v5, p2, v4

    aget v6, v3, p2

    aput v6, v3, v5

    .line 395
    iget-object v3, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v6, v3, p2

    sub-int/2addr v6, v4

    aput v6, v3, v5

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-ge v2, v4, :cond_5

    .line 400
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    add-int v3, p1, v2

    aget v5, v1, v2

    aput v5, p2, v3

    .line 401
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v5, v0, v2

    aput v5, p2, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 405
    :cond_5
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 406
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    sub-int/2addr p1, v4

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    return v4
.end method

.method getAdjustedCount(I)I
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 343
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PlacementData;->getAdjustedPosition(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method getAdjustedPosition(I)I
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v0

    add-int/2addr p1, v0

    return p1
.end method

.method getOriginalCount(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 332
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PlacementData;->getOriginalPosition(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0
.end method

.method getOriginalPosition(I)I
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result v0

    if-gez v0, :cond_0

    not-int v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method getPlacedAd(I)Lcom/mopub/nativeads/NativeAd;
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aget-object p1, v0, p1

    return-object p1
.end method

.method getPlacedAdPositions()[I
    .locals 4

    .line 294
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    new-array v1, v0, [I

    .line 295
    iget-object v2, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method insertItem(I)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v0

    .line 430
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 432
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result p1

    .line 438
    :goto_1
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge p1, v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 440
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method isPlacedAd(I)Z
    .locals 3

    .line 271
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method moveItem(II)V
    .locals 0

    .line 474
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/PlacementData;->removeItem(I)V

    .line 475
    invoke-virtual {p0, p2}, Lcom/mopub/nativeads/PlacementData;->insertItem(I)V

    return-void
.end method

.method nextInsertionPosition(I)I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result p1

    .line 201
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget p1, v0, p1

    return p1
.end method

.method placeAd(ILcom/mopub/nativeads/NativeAd;)V
    .locals 7

    .line 225
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchFirstEquals([III)I

    move-result v0

    .line 227
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    goto :goto_2

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v1, v1, v0

    .line 235
    iget-object v3, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v4, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v3, v4, v1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v3

    .line 237
    iget v4, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v3, v4, :cond_1

    sub-int/2addr v4, v3

    .line 239
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    add-int/lit8 v6, v3, 0x1

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v5, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    invoke-static {v5, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aput v1, v4, v3

    .line 246
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aput p1, v1, v3

    .line 247
    iget-object p1, p0, Lcom/mopub/nativeads/PlacementData;->mNativeAds:[Lcom/mopub/nativeads/NativeAd;

    aput-object p2, p1, v3

    .line 248
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    .line 251
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    .line 252
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    add-int/lit8 v1, v0, 0x1

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    iget-object p2, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    invoke-static {p2, v1, p2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    .line 259
    :goto_0
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, p1, :cond_2

    .line 260
    iget-object p1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget p2, p1, v0

    add-int/2addr p2, v2

    aput p2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v2

    .line 262
    :goto_1
    iget p1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge v3, p1, :cond_3

    .line 263
    iget-object p1, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget p2, p1, v3

    add-int/2addr p2, v2

    aput p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 229
    :cond_4
    :goto_2
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "Attempted to insert an ad at an invalid position"

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method removeItem(I)V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result v0

    .line 456
    :goto_0
    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    if-ge v0, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredOriginalPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 458
    iget-object v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    invoke-static {v0, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearchGreaterThan([III)I

    move-result p1

    .line 464
    :goto_1
    iget v0, p0, Lcom/mopub/nativeads/PlacementData;->mPlacedCount:I

    if-ge p1, v0, :cond_1

    .line 465
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mOriginalAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    .line 466
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mAdjustedAdPositions:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method shouldPlaceAd(I)Z
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredInsertionPositions:[I

    iget v1, p0, Lcom/mopub/nativeads/PlacementData;->mDesiredCount:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1}, Lcom/mopub/nativeads/PlacementData;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
