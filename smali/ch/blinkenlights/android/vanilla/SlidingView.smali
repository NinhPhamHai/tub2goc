.class public Lch/blinkenlights/android/vanilla/SlidingView;
.super Landroid/widget/FrameLayout;
.source "SlidingView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;,
        Lch/blinkenlights/android/vanilla/SlidingView$GestureListener;,
        Lch/blinkenlights/android/vanilla/SlidingView$Callback;
    }
.end annotation


# instance fields
.field private final ANIMATION_DURATION:I

.field private final MAX_PROGRESS:F

.field private mCallback:Lch/blinkenlights/android/vanilla/SlidingView$Callback;

.field mCurrentStage:I

.field private mDelayedHide:Z

.field private mDetector:Landroid/view/GestureDetector;

.field private mDidScroll:Z

.field private mFlingVelocity:F

.field private mMaxOffsetY:F

.field private mPreviousY:F

.field private mProgressPx:F

.field private mSlaveView:Landroid/view/View;

.field private mSliderAlwaysExpanded:Z

.field private mSliderHandleId:I

.field mStages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0}, Lch/blinkenlights/android/vanilla/SlidingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, v0}, Lch/blinkenlights/android/vanilla/SlidingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41f00000    # 30.0f

    .line 42
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->MAX_PROGRESS:F

    const/16 p3, 0xfa

    .line 46
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->ANIMATION_DURATION:I

    const/4 p3, 0x0

    .line 50
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mMaxOffsetY:F

    .line 54
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mPreviousY:F

    .line 58
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mProgressPx:F

    .line 62
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mFlingVelocity:F

    const/4 p3, 0x0

    .line 66
    iput-boolean p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDidScroll:Z

    .line 70
    iput-boolean p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDelayedHide:Z

    .line 82
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderHandleId:I

    .line 86
    iput-boolean p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderAlwaysExpanded:Z

    .line 90
    iput p3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mCurrentStage:I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    const v0, 0x1010031

    .line 120
    invoke-static {p1, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->fetchThemeColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 122
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lch/blinkenlights/android/vanilla/SlidingView$GestureListener;

    invoke-direct {v1, p0}, Lch/blinkenlights/android/vanilla/SlidingView$GestureListener;-><init>(Lch/blinkenlights/android/vanilla/SlidingView;)V

    invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDetector:Landroid/view/GestureDetector;

    .line 123
    sget-object v0, Lch/blinkenlights/android/vanilla/R$styleable;->SlidingViewPreferences:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 124
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SlidingViewPreferences_slider_handle_id:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderHandleId:I

    .line 125
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SlidingViewPreferences_slider_always_expanded:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderAlwaysExpanded:Z

    .line 126
    sget v0, Lch/blinkenlights/android/vanilla/R$styleable;->SlidingViewPreferences_slider_slave_id:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 127
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 131
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSlaveView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$002(Lch/blinkenlights/android/vanilla/SlidingView;F)F
    .locals 0

    .line 36
    iput p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mFlingVelocity:F

    return p1
.end method

.method static synthetic access$100(Lch/blinkenlights/android/vanilla/SlidingView;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lch/blinkenlights/android/vanilla/SlidingView;->setSlaveViewStage(I)V

    return-void
.end method

.method static synthetic access$200(Lch/blinkenlights/android/vanilla/SlidingView;)Lch/blinkenlights/android/vanilla/SlidingView$Callback;
    .locals 0

    .line 36
    iget-object p0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mCallback:Lch/blinkenlights/android/vanilla/SlidingView$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lch/blinkenlights/android/vanilla/SlidingView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderAlwaysExpanded:Z

    return p0
.end method

.method private setExpansionStage(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 197
    :cond_0
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderAlwaysExpanded:Z

    if-eqz v0, :cond_1

    .line 198
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    .line 200
    :cond_1
    iput p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mCurrentStage:I

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDelayedHide:Z

    .line 203
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 204
    iget-boolean v1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderAlwaysExpanded:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xfa

    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float p1, p1

    .line 207
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long v0, v0

    .line 208
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;

    invoke-direct {v0, p0}, Lch/blinkenlights/android/vanilla/SlidingView$AnimationListener;-><init>(Lch/blinkenlights/android/vanilla/SlidingView;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private setSlaveViewStage(I)V
    .locals 3

    .line 219
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSlaveView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt v0, p1, :cond_1

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSlaveView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 227
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 228
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSlaveView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public expandSlide()V
    .locals 1

    .line 147
    iget-object v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/SlidingView;->setExpansionStage(I)V

    return-void
.end method

.method public hideSlide()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/SlidingView;->setSlaveViewStage(I)V

    .line 155
    invoke-direct {p0, v0}, Lch/blinkenlights/android/vanilla/SlidingView;->setExpansionStage(I)V

    return-void
.end method

.method public hideSlideDelayed()V
    .locals 1

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDelayedHide:Z

    return-void
.end method

.method public isFullyExpanded()Z
    .locals 3

    .line 177
    iget v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mCurrentStage:I

    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isMinimized()Z
    .locals 1

    .line 170
    iget v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mCurrentStage:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShrinkable()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderAlwaysExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SlidingView;->isMinimized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 237
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 239
    iget v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderHandleId:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 243
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 244
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 245
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 259
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 262
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p3

    .line 266
    iget-object p4, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    const/4 p4, 0x0

    const/4 p5, 0x0

    move-object v0, p5

    const/4 p5, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge p5, p3, :cond_2

    .line 269
    invoke-virtual {p0, p5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v4, v3, v1

    if-le v1, p2, :cond_0

    move v1, p2

    :cond_0
    if-le v4, p2, :cond_1

    move v4, p2

    .line 280
    :cond_1
    invoke-virtual {v0, p4, v1, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 281
    iget-object v2, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v3

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 285
    iget p2, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mMaxOffsetY:F

    const/4 p5, 0x0

    cmpl-float p2, p2, p5

    if-nez p2, :cond_3

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p3, :cond_3

    .line 290
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 291
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 292
    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 293
    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 294
    invoke-virtual {p5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 299
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mMaxOffsetY:F

    .line 300
    iget p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mMaxOffsetY:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 301
    invoke-direct {p0, p4}, Lch/blinkenlights/android/vanilla/SlidingView;->setExpansionStage(I)V

    :cond_4
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 319
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 321
    iget-object v1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 323
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 324
    iget v1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mPreviousY:F

    sub-float v1, v0, v1

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    .line 327
    iget-boolean v3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mSliderAlwaysExpanded:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 330
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_9

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_1

    goto/16 :goto_2

    .line 353
    :cond_1
    iget v3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mProgressPx:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v3, v6

    iput v3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mProgressPx:F

    add-float/2addr v1, v2

    cmpg-float v3, v1, v4

    if-gez v3, :cond_2

    const/4 v1, 0x0

    .line 358
    :cond_2
    iget v3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mMaxOffsetY:F

    cmpl-float v4, v1, v3

    if-lez v4, :cond_3

    move v1, v3

    .line 361
    :cond_3
    iget v3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mProgressPx:F

    const/high16 v4, 0x41f00000    # 30.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 364
    :cond_4
    iget-boolean v2, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDidScroll:Z

    if-nez v2, :cond_5

    .line 365
    iput-boolean v7, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDidScroll:Z

    const/4 v2, 0x3

    .line 367
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 368
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 370
    invoke-direct {p0, v5}, Lch/blinkenlights/android/vanilla/SlidingView;->setSlaveViewStage(I)V

    .line 373
    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_2

    .line 332
    :cond_6
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDidScroll:Z

    if-eqz p1, :cond_a

    .line 333
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 336
    iget p2, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mFlingVelocity:F

    float-to-double v3, p2

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v3, v3, v7

    const-wide v7, 0x406f400000000000L    # 250.0

    mul-double v3, v3, v7

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v7

    double-to-int p2, v3

    const/4 v1, 0x0

    :goto_1
    if-ge v5, p1, :cond_8

    .line 338
    invoke-virtual {p0, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v6

    int-to-float v4, p2

    add-float/2addr v4, v2

    int-to-float v3, v3

    sub-float/2addr v4, v3

    .line 339
    iget-object v3, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mStages:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v4, v3

    if-gtz v3, :cond_7

    move v1, v5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 342
    :cond_8
    invoke-direct {p0, v1}, Lch/blinkenlights/android/vanilla/SlidingView;->setExpansionStage(I)V

    goto :goto_2

    .line 347
    :cond_9
    iput v4, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mProgressPx:F

    .line 348
    iput v4, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mFlingVelocity:F

    .line 349
    iput-boolean v5, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDidScroll:Z

    .line 377
    :cond_a
    :goto_2
    iput v0, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mPreviousY:F

    .line 378
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDidScroll:Z

    return p1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 307
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 308
    iget-boolean p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mDelayedHide:Z

    if-eqz p1, :cond_0

    .line 309
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/SlidingView;->hideSlide()V

    :cond_0
    return-void
.end method

.method public setCallback(Lch/blinkenlights/android/vanilla/SlidingView$Callback;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lch/blinkenlights/android/vanilla/SlidingView;->mCallback:Lch/blinkenlights/android/vanilla/SlidingView$Callback;

    return-void
.end method
