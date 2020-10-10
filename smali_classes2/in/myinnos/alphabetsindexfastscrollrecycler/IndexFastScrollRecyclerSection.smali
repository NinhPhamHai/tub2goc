.class public Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "IndexFastScrollRecyclerSection.java"


# instance fields
.field private indexPaintPaintColor:I

.field private indexbarBackgroudAlpha:I

.field private indexbarBackgroudColor:I

.field private indexbarHighLateTextColor:I

.field private indexbarTextColor:I

.field private mCurrentSection:I

.field private mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mIndexbarMargin:F

.field private mIndexbarRect:Landroid/graphics/RectF;

.field private mIndexbarWidth:F

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mIsIndexing:Z

.field private mListViewHeight:I

.field private mListViewWidth:I

.field private mPreviewPadding:F

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScaledDensity:F

.field private mSections:[Ljava/lang/String;

.field private previewVisibility:Z

.field private setIndexBarCornerRadius:I

.field private setIndexBarVisibility:Ljava/lang/Boolean;

.field private setIndexTextSize:I

.field private setIndexbarMargin:F

.field private setIndexbarWidth:F

.field private setPreviewPadding:I

.field private setSetIndexBarHighLateTextVisibility:Ljava/lang/Boolean;

.field private setTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;)V
    .locals 4

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIsIndexing:Z

    const/4 v2, 0x0

    .line 36
    iput-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    iput-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexer:Landroid/widget/SectionIndexer;

    .line 38
    iput-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    const/4 v3, 0x1

    .line 45
    iput-boolean v3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->previewVisibility:Z

    .line 47
    iput-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setTypeface:Landroid/graphics/Typeface;

    .line 48
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarVisibility:Ljava/lang/Boolean;

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setSetIndexBarHighLateTextVisibility:Ljava/lang/Boolean;

    .line 56
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexPaintPaintColor:I

    .line 252
    new-instance v0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection$1;

    invoke-direct {v0, p0}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection$1;-><init>(Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;)V

    iput-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mHandler:Landroid/os/Handler;

    .line 61
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->setIndexTextSize:I

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexTextSize:I

    .line 62
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarWidth:F

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexbarWidth:F

    .line 63
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarMargin:F

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexbarMargin:F

    .line 64
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mPreviewPadding:I

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setPreviewPadding:I

    .line 65
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarCornerRadius:I

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarCornerRadius:I

    .line 66
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarBackgroudColor:I

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarBackgroudColor:I

    .line 67
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarTextColor:I

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarTextColor:I

    .line 68
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarHighLateTextColor:I

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarHighLateTextColor:I

    .line 70
    iget v0, p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarTransparentValue:F

    invoke-direct {p0, v0}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->convertTransparentValueToBackgroundAlpha(F)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarBackgroudAlpha:I

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mDensity:F

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mScaledDensity:F

    .line 74
    iput-object p2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 75
    iget-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 77
    iget p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexbarWidth:F

    iget p2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mDensity:F

    mul-float p1, p1, p2

    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarWidth:F

    .line 78
    iget p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexbarMargin:F

    mul-float p1, p1, p2

    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    .line 79
    iget p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setPreviewPadding:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mPreviewPadding:F

    return-void
.end method

.method static synthetic access$000(Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 25
    iget-object p0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method private convertTransparentValueToBackgroundAlpha(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private fade(J)V
    .locals 3

    .line 248
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    const/4 p1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private getSectionByPoint(F)I
    .locals 4

    .line 236
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    add-float/2addr v3, v2

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    return v1

    .line 240
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr v2, v0

    iget v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    sub-float/2addr v2, v0

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_2

    .line 241
    iget-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 242
    :cond_2
    iget-object v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    sub-float/2addr p1, v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iget-object v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    array-length v1, v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private scrollToPosition()V
    .locals 3

    .line 195
    :try_start_0
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexer:Landroid/widget/SectionIndexer;

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    invoke-interface {v0, v1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 196
    iget-object v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 197
    instance-of v2, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_0

    .line 198
    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "INDEX_BAR"

    const-string v1, "Data size returns null"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public contains(FF)Z
    .locals 2

    .line 232
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_0

    iget p1, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v1, p2, p1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 84
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 87
    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarBackgroudColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarBackgroudAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v1, 0x1

    .line 89
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    iget v3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarCornerRadius:I

    int-to-float v4, v3

    iget v5, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mDensity:F

    mul-float v4, v4, v5

    int-to-float v3, v3

    mul-float v3, v3, v5

    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 92
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 94
    iget-boolean v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->previewVisibility:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v2, :cond_0

    iget v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    if-ltz v2, :cond_0

    aget-object v0, v0, v2

    const-string v2, ""

    if-eq v0, v2, :cond_0

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    .line 96
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x60

    .line 97
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v2, 0x40400000    # 3.0f

    const/16 v6, 0x40

    .line 99
    invoke-static {v6, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v7, v7, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 101
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 102
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/high16 v6, 0x42480000    # 50.0f

    .line 104
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mScaledDensity:F

    mul-float v7, v7, v6

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 105
    iget-object v6, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 107
    iget-object v6, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 108
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mPreviewPadding:F

    mul-float v7, v7, v5

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    .line 109
    new-instance v8, Landroid/graphics/RectF;

    iget v9, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mListViewWidth:I

    int-to-float v10, v9

    sub-float/2addr v10, v7

    div-float/2addr v10, v5

    iget v11, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mListViewHeight:I

    int-to-float v12, v11

    sub-float/2addr v12, v7

    div-float/2addr v12, v5

    int-to-float v9, v9

    sub-float/2addr v9, v7

    div-float/2addr v9, v5

    add-float/2addr v9, v7

    int-to-float v11, v11

    sub-float/2addr v11, v7

    div-float/2addr v11, v5

    add-float/2addr v11, v7

    invoke-direct {v8, v10, v12, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 114
    iget v9, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mDensity:F

    const/high16 v10, 0x40a00000    # 5.0f

    mul-float v11, v9, v10

    mul-float v9, v9, v10

    invoke-virtual {p1, v8, v11, v9, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 115
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    iget v9, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    aget-object v0, v0, v9

    iget v9, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v6

    div-float/2addr v7, v5

    add-float/2addr v9, v7

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    iget v7, v8, Landroid/graphics/RectF;->top:F

    iget v8, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mPreviewPadding:F

    add-float/2addr v7, v8

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    sub-float/2addr v7, v8

    add-float/2addr v7, v6

    .line 115
    invoke-virtual {p1, v0, v9, v7, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-wide/16 v6, 0x12c

    .line 117
    invoke-direct {p0, v6, v7}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->fade(J)V

    .line 120
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 121
    iget v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 123
    iget v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexTextSize:I

    int-to-float v2, v2

    iget v6, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mScaledDensity:F

    mul-float v2, v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    iget-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 126
    iget-object v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v6, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    mul-float v6, v6, v5

    sub-float/2addr v2, v6

    iget-object v6, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    array-length v6, v6

    int-to-float v6, v6

    div-float/2addr v2, v6

    .line 127
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    sub-float/2addr v6, v7

    sub-float v6, v2, v6

    div-float/2addr v6, v5

    .line 128
    :goto_0
    iget-object v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_3

    .line 130
    iget-object v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setSetIndexBarHighLateTextVisibility:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 132
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    if-le v7, v3, :cond_1

    if-ne v4, v7, :cond_1

    .line 133
    iget-object v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setTypeface:Landroid/graphics/Typeface;

    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 134
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexTextSize:I

    add-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    iget v8, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mScaledDensity:F

    mul-float v7, v7, v8

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 135
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarHighLateTextColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 137
    :cond_1
    iget-object v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 138
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexTextSize:I

    int-to-float v7, v7

    iget v8, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mScaledDensity:F

    mul-float v7, v7, v8

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarTextColor:I

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    :goto_1
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarWidth:F

    iget-object v8, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    .line 142
    iget-object v8, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    aget-object v8, v8, v4

    iget-object v9, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v7

    iget v7, v9, Landroid/graphics/RectF;->top:F

    iget v9, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    add-float/2addr v7, v9

    int-to-float v9, v4

    mul-float v9, v9, v2

    add-float/2addr v7, v9

    add-float/2addr v7, v6

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v7, v9

    .line 142
    invoke-virtual {p1, v8, v10, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 147
    :cond_2
    iget v7, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarWidth:F

    iget-object v8, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v7, v5

    .line 148
    iget-object v8, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    aget-object v8, v8, v4

    iget-object v9, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    iget v10, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v7

    iget v7, v9, Landroid/graphics/RectF;->top:F

    iget v9, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    add-float/2addr v7, v9

    int-to-float v9, v4

    mul-float v9, v9, v2

    add-float/2addr v7, v9

    add-float/2addr v7, v6

    .line 149
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v9

    sub-float/2addr v7, v9

    .line 148
    invoke-virtual {p1, v8, v10, v7, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public onChanged()V
    .locals 1

    .line 226
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 227
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2

    .line 208
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mListViewWidth:I

    .line 209
    iput p2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mListViewHeight:I

    .line 210
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p1, p1

    iget p4, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    sub-float v0, p1, p4

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarWidth:F

    sub-float/2addr v0, v1

    sub-float/2addr p1, p4

    int-to-float p2, p2

    sub-float/2addr p2, p4

    invoke-direct {p3, v0, p4, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarRect:Landroid/graphics/RectF;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 159
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-boolean v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIsIndexing:Z

    if-eqz v0, :cond_4

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->getSectionByPoint(F)I

    move-result p1

    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    .line 178
    invoke-direct {p0}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->scrollToPosition()V

    :cond_1
    return v2

    .line 184
    :cond_2
    iget-boolean p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIsIndexing:Z

    if-eqz p1, :cond_4

    .line 185
    iput-boolean v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIsIndexing:Z

    const/4 p1, -0x1

    .line 186
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    goto :goto_0

    .line 162
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iput-boolean v2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIsIndexing:Z

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->getSectionByPoint(F)I

    move-result p1

    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mCurrentSection:I

    .line 168
    invoke-direct {p0}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->scrollToPosition()V

    return v2

    :cond_4
    :goto_0
    return v1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 217
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 219
    check-cast p1, Landroid/widget/SectionIndexer;

    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexer:Landroid/widget/SectionIndexer;

    .line 220
    iget-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {p1}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mSections:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIndexBarColor(I)V
    .locals 0

    .line 338
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarBackgroudColor:I

    return-void
.end method

.method public setIndexBarCornerRadius(I)V
    .locals 0

    .line 303
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarCornerRadius:I

    return-void
.end method

.method public setIndexBarHighLateTextColor(I)V
    .locals 0

    .line 352
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarHighLateTextColor:I

    return-void
.end method

.method public setIndexBarHighLateTextVisibility(Z)V
    .locals 0

    .line 359
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setSetIndexBarHighLateTextVisibility:Ljava/lang/Boolean;

    return-void
.end method

.method public setIndexBarTextColor(I)V
    .locals 0

    .line 345
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarTextColor:I

    return-void
.end method

.method public setIndexBarTransparentValue(F)V
    .locals 0

    .line 310
    invoke-direct {p0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->convertTransparentValueToBackgroundAlpha(F)I

    move-result p1

    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->indexbarBackgroudAlpha:I

    return-void
.end method

.method public setIndexBarVisibility(Z)V
    .locals 0

    .line 324
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarVisibility:Ljava/lang/Boolean;

    return-void
.end method

.method public setIndexTextSize(I)V
    .locals 0

    .line 275
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexTextSize:I

    return-void
.end method

.method public setIndexbarMargin(F)V
    .locals 0

    .line 289
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarMargin:F

    return-void
.end method

.method public setIndexbarWidth(F)V
    .locals 0

    .line 282
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->mIndexbarWidth:F

    return-void
.end method

.method public setPreviewPadding(I)V
    .locals 0

    .line 296
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setPreviewPadding:I

    return-void
.end method

.method public setPreviewVisibility(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->previewVisibility:Z

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setTypeface:Landroid/graphics/Typeface;

    return-void
.end method
