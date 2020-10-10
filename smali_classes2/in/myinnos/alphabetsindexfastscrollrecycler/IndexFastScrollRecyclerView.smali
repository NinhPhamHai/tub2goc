.class public Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "IndexFastScrollRecyclerView.java"


# instance fields
.field private mEnabled:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field public mIndexBarCornerRadius:I

.field public mIndexBarTransparentValue:F

.field public mIndexbarBackgroudColor:I

.field public mIndexbarHighLateTextColor:I

.field public mIndexbarMargin:F

.field public mIndexbarTextColor:I

.field public mIndexbarWidth:F

.field public mPreviewPadding:I

.field private mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

.field public setIndexTextSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    .line 22
    iput-object p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mEnabled:Z

    const/16 p1, 0xc

    .line 26
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->setIndexTextSize:I

    const/high16 p1, 0x41a00000    # 20.0f

    .line 27
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarWidth:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 28
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarMargin:F

    const/4 p1, 0x5

    .line 29
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mPreviewPadding:I

    .line 30
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarCornerRadius:I

    const p1, 0x3f19999a    # 0.6f

    .line 31
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarTransparentValue:F

    const/high16 p1, -0x1000000

    .line 32
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarBackgroudColor:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarTextColor:I

    .line 36
    iput p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarHighLateTextColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    .line 22
    iput-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mEnabled:Z

    const/16 v0, 0xc

    .line 26
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->setIndexTextSize:I

    const/high16 v0, 0x41a00000    # 20.0f

    .line 27
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarWidth:F

    const/high16 v0, 0x40a00000    # 5.0f

    .line 28
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarMargin:F

    const/4 v0, 0x5

    .line 29
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mPreviewPadding:I

    .line 30
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarCornerRadius:I

    const v0, 0x3f19999a    # 0.6f

    .line 31
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarTransparentValue:F

    const/high16 v0, -0x1000000

    .line 32
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarBackgroudColor:I

    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarTextColor:I

    .line 36
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarHighLateTextColor:I

    .line 45
    invoke-direct {p0, p1, p2}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 21
    iput-object p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    .line 22
    iput-object p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 p3, 0x1

    .line 24
    iput-boolean p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mEnabled:Z

    const/16 p3, 0xc

    .line 26
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->setIndexTextSize:I

    const/high16 p3, 0x41a00000    # 20.0f

    .line 27
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarWidth:F

    const/high16 p3, 0x40a00000    # 5.0f

    .line 28
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarMargin:F

    const/4 p3, 0x5

    .line 29
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mPreviewPadding:I

    .line 30
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarCornerRadius:I

    const p3, 0x3f19999a    # 0.6f

    .line 31
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarTransparentValue:F

    const/high16 p3, -0x1000000

    .line 32
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarBackgroudColor:I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarTextColor:I

    .line 36
    iput p3, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarHighLateTextColor:I

    .line 50
    invoke-direct {p0, p1, p2}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_6

    .line 56
    sget-object v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 60
    :try_start_0
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexTextSize:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->setIndexTextSize:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->setIndexTextSize:I

    .line 61
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexbarWidth:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarWidth:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarWidth:F

    .line 62
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexbarMargin:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarMargin:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarMargin:F

    .line 63
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setPreviewPadding:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mPreviewPadding:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mPreviewPadding:I

    .line 64
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarCornerRadius:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarCornerRadius:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarCornerRadius:I

    .line 65
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarTransparentValue:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarTransparentValue:F

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexBarTransparentValue:F

    .line 67
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarBackgroudColor:I

    .line 71
    :cond_0
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarTextColor:I

    .line 75
    :cond_1
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarHighlightTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarHighlightTextColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarHighLateTextColor:I

    .line 79
    :cond_2
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarColorRes:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarColorRes:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarBackgroudColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarBackgroudColor:I

    .line 83
    :cond_3
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarTextColorRes:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarTextColorRes:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarTextColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarTextColor:I

    .line 87
    :cond_4
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarHighlightTextColorRes:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    sget v0, Lin/myinnos/alphabetsindexfastscrollrecycler/R$styleable;->IndexFastScrollRecyclerView_setIndexBarHighlightTextColor:I

    iget v1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarHighLateTextColor:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mIndexbarHighLateTextColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    throw p1

    .line 96
    :cond_6
    :goto_0
    new-instance p2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-direct {p2, p1, p0}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;-><init>(Landroid/content/Context;Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;)V

    iput-object p2, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 134
    iget-boolean v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->onSizeChanged(IIII)V

    .line 150
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1, p2, p3, p4}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 110
    iget-boolean v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 115
    :cond_0
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView$1;

    invoke-direct {v2, p0}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView$1;-><init>(Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 126
    :cond_1
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 129
    :cond_2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 143
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    return-void
.end method

.method public setIndexBarColor(I)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 230
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarColor(I)V

    return-void
.end method

.method public setIndexBarColor(Ljava/lang/String;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarColor(I)V

    return-void
.end method

.method public setIndexBarCornerRadius(I)V
    .locals 1

    .line 186
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarCornerRadius(I)V

    return-void
.end method

.method public setIndexBarHighLateTextVisibility(Z)V
    .locals 1

    .line 268
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarHighLateTextVisibility(Z)V

    return-void
.end method

.method public setIndexBarTextColor(I)V
    .locals 1

    .line 245
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 246
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarTextColor(I)V

    return-void
.end method

.method public setIndexBarTextColor(Ljava/lang/String;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarTextColor(I)V

    return-void
.end method

.method public setIndexBarTransparentValue(F)V
    .locals 1

    .line 193
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarTransparentValue(F)V

    return-void
.end method

.method public setIndexBarVisibility(Z)V
    .locals 1

    .line 207
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarVisibility(Z)V

    .line 208
    iput-boolean p1, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mEnabled:Z

    return-void
.end method

.method public setIndexTextSize(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexTextSize(I)V

    return-void
.end method

.method public setIndexbarHighLateTextColor(I)V
    .locals 1

    .line 260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 261
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarHighLateTextColor(I)V

    return-void
.end method

.method public setIndexbarHighLateTextColor(Ljava/lang/String;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexBarHighLateTextColor(I)V

    return-void
.end method

.method public setIndexbarMargin(F)V
    .locals 1

    .line 172
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexbarMargin(F)V

    return-void
.end method

.method public setIndexbarWidth(F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setIndexbarWidth(F)V

    return-void
.end method

.method public setPreviewPadding(I)V
    .locals 1

    .line 179
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setPreviewPadding(I)V

    return-void
.end method

.method public setPreviewVisibility(Z)V
    .locals 1

    .line 215
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setPreviewVisibility(Z)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerView;->mScroller:Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;

    invoke-virtual {v0, p1}, Lin/myinnos/alphabetsindexfastscrollrecycler/IndexFastScrollRecyclerSection;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
