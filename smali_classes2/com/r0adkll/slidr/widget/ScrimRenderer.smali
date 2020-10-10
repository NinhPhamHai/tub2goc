.class final Lcom/r0adkll/slidr/widget/ScrimRenderer;
.super Ljava/lang/Object;
.source "ScrimRenderer.java"


# instance fields
.field private final decorView:Landroid/view/View;

.field private final dirtyRect:Landroid/graphics/Rect;

.field private final rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    .line 22
    iput-object p2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    .line 23
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    return-void
.end method

.method private renderBottom(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private renderHorizontal(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderLeft(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderRight(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private renderLeft(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private renderRight(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private renderTop(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private renderVertical(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderTop(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderBottom(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method


# virtual methods
.method getDirtyRect(Lcom/r0adkll/slidr/model/SlidrPosition;)Landroid/graphics/Rect;
    .locals 4

    .line 52
    sget-object v0, Lcom/r0adkll/slidr/widget/ScrimRenderer$1;->$SwitchMap$com$r0adkll$slidr$model$SlidrPosition:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 74
    :pswitch_0
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    if-lez p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    .line 66
    :pswitch_1
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lez p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 63
    :pswitch_2
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 57
    :pswitch_4
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 54
    :pswitch_5
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->decorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->rootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/ScrimRenderer;->dirtyRect:Landroid/graphics/Rect;

    return-object p1

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

.method render(Landroid/graphics/Canvas;Lcom/r0adkll/slidr/model/SlidrPosition;Landroid/graphics/Paint;)V
    .locals 1

    .line 28
    sget-object v0, Lcom/r0adkll/slidr/widget/ScrimRenderer$1;->$SwitchMap$com$r0adkll$slidr$model$SlidrPosition:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 45
    :pswitch_0
    invoke-direct {p0, p1, p3}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderHorizontal(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 42
    :pswitch_1
    invoke-direct {p0, p1, p3}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderVertical(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 39
    :pswitch_2
    invoke-direct {p0, p1, p3}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderBottom(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 36
    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderTop(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 33
    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderRight(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 30
    :pswitch_5
    invoke-direct {p0, p1, p3}, Lcom/r0adkll/slidr/widget/ScrimRenderer;->renderLeft(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_0
    return-void

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
