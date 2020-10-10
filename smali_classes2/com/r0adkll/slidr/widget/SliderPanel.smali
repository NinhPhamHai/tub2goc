.class public Lcom/r0adkll/slidr/widget/SliderPanel;
.super Landroid/widget/FrameLayout;
.source "SliderPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;
    }
.end annotation


# instance fields
.field private final bottomCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

.field private config:Lcom/r0adkll/slidr/model/SlidrConfig;

.field private decorView:Landroid/view/View;

.field private final defaultSlidrInterface:Lcom/r0adkll/slidr/model/SlidrInterface;

.field private dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

.field private edgePosition:I

.field private final horizontalCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

.field private isEdgeTouched:Z

.field private isLocked:Z

.field private final leftCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

.field private listener:Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

.field private final rightCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

.field private screenHeight:I

.field private screenWidth:I

.field private scrimPaint:Landroid/graphics/Paint;

.field private scrimRenderer:Lcom/r0adkll/slidr/widget/ScrimRenderer;

.field private final topCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

.field private final verticalCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/r0adkll/slidr/model/SlidrConfig;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->isLocked:Z

    .line 33
    iput-boolean p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->isEdgeTouched:Z

    .line 123
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$1;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$1;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->defaultSlidrInterface:Lcom/r0adkll/slidr/model/SlidrInterface;

    .line 142
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$2;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$2;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->leftCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 227
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$3;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$3;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->rightCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 310
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$4;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$4;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->topCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 390
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$5;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$5;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->bottomCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 470
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$6;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$6;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->verticalCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 565
    new-instance p1, Lcom/r0adkll/slidr/widget/SliderPanel$7;

    invoke-direct {p1, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$7;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->horizontalCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 46
    iput-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->decorView:Landroid/view/View;

    if-nez p3, :cond_0

    .line 47
    new-instance p1, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;

    invoke-direct {p1}, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/r0adkll/slidr/model/SlidrConfig$Builder;->build()Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    .line 48
    invoke-direct {p0}, Lcom/r0adkll/slidr/widget/SliderPanel;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/r0adkll/slidr/widget/SliderPanel;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->isEdgeTouched:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/r0adkll/slidr/widget/SliderPanel;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->screenHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/r0adkll/slidr/widget/SliderPanel;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->screenHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    return-object p0
.end method

.method static synthetic access$300(Lcom/r0adkll/slidr/widget/SliderPanel;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    return p0
.end method

.method static synthetic access$400(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/util/ViewDragHelper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/r0adkll/slidr/widget/SliderPanel;)Landroid/view/View;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->decorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/r0adkll/slidr/widget/SliderPanel;)I
    .locals 0

    .line 19
    iget p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->screenWidth:I

    return p0
.end method

.method static synthetic access$700(III)I
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->clamp(III)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->listener:Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    return-object p0
.end method

.method static synthetic access$900(Lcom/r0adkll/slidr/widget/SliderPanel;F)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->applyScrim(F)V

    return-void
.end method

.method private applyScrim(F)V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getScrimStartAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getScrimEndAlpha()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getScrimEndAlpha()F

    move-result v0

    add-float/2addr p1, v0

    .line 756
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->toAlpha(F)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 757
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimRenderer:Lcom/r0adkll/slidr/widget/ScrimRenderer;

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getPosition()Lcom/r0adkll/slidr/model/SlidrPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->getDirtyRect(Lcom/r0adkll/slidr/model/SlidrPosition;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method private canDragFromEdge(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 733
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 736
    sget-object v1, Lcom/r0adkll/slidr/widget/SliderPanel$9;->$SwitchMap$com$r0adkll$slidr$model$SlidrPosition:[I

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getPosition()Lcom/r0adkll/slidr/model/SlidrPosition;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    return v3

    .line 746
    :pswitch_0
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result v1

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 748
    :pswitch_1
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_1
    return v2

    .line 742
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result v1

    sub-float/2addr v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 744
    :pswitch_3
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    return v2

    .line 740
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result v1

    sub-float/2addr p1, v1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    return v2

    .line 738
    :pswitch_5
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getEdgeSize(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_7

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static clamp(III)I
    .locals 0

    .line 762
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private init()V
    .locals 4

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 657
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->screenWidth:I

    .line 659
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float v1, v1, v2

    .line 663
    sget-object v2, Lcom/r0adkll/slidr/widget/SliderPanel$9;->$SwitchMap$com$r0adkll$slidr$model$SlidrPosition:[I

    iget-object v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v3}, Lcom/r0adkll/slidr/model/SlidrConfig;->getPosition()Lcom/r0adkll/slidr/model/SlidrPosition;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 689
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->leftCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 690
    iput v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    goto :goto_0

    .line 685
    :pswitch_0
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->horizontalCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    const/4 v3, 0x3

    .line 686
    iput v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    goto :goto_0

    .line 681
    :pswitch_1
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->verticalCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    const/16 v3, 0xc

    .line 682
    iput v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    goto :goto_0

    .line 677
    :pswitch_2
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->bottomCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    const/16 v3, 0x8

    .line 678
    iput v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    goto :goto_0

    .line 673
    :pswitch_3
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->topCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    const/4 v3, 0x4

    .line 674
    iput v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    goto :goto_0

    .line 669
    :pswitch_4
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->rightCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    const/4 v3, 0x2

    .line 670
    iput v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    goto :goto_0

    .line 665
    :pswitch_5
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->leftCallback:Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;

    .line 666
    iput v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    .line 693
    :goto_0
    iget-object v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v3}, Lcom/r0adkll/slidr/model/SlidrConfig;->getSensitivity()F

    move-result v3

    invoke-static {p0, v3, v2}, Lcom/r0adkll/slidr/util/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/r0adkll/slidr/util/ViewDragHelper$Callback;)Lcom/r0adkll/slidr/util/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

    .line 694
    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

    invoke-virtual {v2, v1}, Lcom/r0adkll/slidr/util/ViewDragHelper;->setMinVelocity(F)V

    .line 695
    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

    iget v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->edgePosition:I

    invoke-virtual {v1, v2}, Lcom/r0adkll/slidr/util/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 697
    invoke-static {p0, v0}, Landroidx/core/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 700
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimPaint:Landroid/graphics/Paint;

    .line 701
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getScrimColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 702
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getScrimStartAlpha()F

    move-result v1

    invoke-static {v1}, Lcom/r0adkll/slidr/widget/SliderPanel;->toAlpha(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 703
    new-instance v0, Lcom/r0adkll/slidr/widget/ScrimRenderer;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->decorView:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Lcom/r0adkll/slidr/widget/ScrimRenderer;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimRenderer:Lcom/r0adkll/slidr/widget/ScrimRenderer;

    .line 710
    new-instance v0, Lcom/r0adkll/slidr/widget/SliderPanel$8;

    invoke-direct {v0, p0}, Lcom/r0adkll/slidr/widget/SliderPanel$8;-><init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toAlpha(F)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p0, p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 93
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 94
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/r0adkll/slidr/util/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getDefaultInterface()Lcom/r0adkll/slidr/model/SlidrInterface;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->defaultSlidrInterface:Lcom/r0adkll/slidr/model/SlidrInterface;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimRenderer:Lcom/r0adkll/slidr/widget/ScrimRenderer;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v1}, Lcom/r0adkll/slidr/model/SlidrConfig;->getPosition()Lcom/r0adkll/slidr/model/SlidrPosition;

    move-result-object v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->scrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->render(Landroid/graphics/Canvas;Lcom/r0adkll/slidr/model/SlidrPosition;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 56
    iget-boolean v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->isLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->isEdgeOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-direct {p0, p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->canDragFromEdge(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->isEdgeTouched:Z

    .line 66
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/r0adkll/slidr/util/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 71
    iget-boolean p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->isLocked:Z

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 77
    iget-boolean v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->isLocked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->dragHelper:Lcom/r0adkll/slidr/util/ViewDragHelper;

    invoke-virtual {v0, p1}, Lcom/r0adkll/slidr/util/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public setOnPanelSlideListener(Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel;->listener:Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    return-void
.end method
