.class Lcom/r0adkll/slidr/widget/SliderPanel$2;
.super Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;
.source "SliderPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/r0adkll/slidr/widget/SliderPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/r0adkll/slidr/widget/SliderPanel;


# direct methods
.method constructor <init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-direct {p0}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    .line 152
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$600(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p1

    const/4 p3, 0x0

    invoke-static {p2, p3, p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$700(III)I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$600(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p1

    return p1
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 200
    invoke-super {p0, p1}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    .line 201
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onStateChanged(I)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$500(Lcom/r0adkll/slidr/widget/SliderPanel;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    if-nez p1, :cond_2

    .line 206
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onOpened()V

    goto :goto_0

    .line 209
    :cond_2
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onClosed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0

    .line 189
    invoke-super/range {p0 .. p5}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    int-to-float p1, p2

    .line 190
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$600(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float/2addr p2, p1

    .line 192
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$800(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;->onSlideChange(F)V

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p1, p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$900(Lcom/r0adkll/slidr/widget/SliderPanel;F)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 4

    .line 162
    invoke-super {p0, p1, p2, p3}, Lcom/r0adkll/slidr/util/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 166
    iget-object v1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getDistanceThreshold()F

    move-result v2

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 167
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getVelocityThreshold()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float p3, p3, v2

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 171
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/r0adkll/slidr/model/SlidrConfig;->getVelocityThreshold()F

    move-result v2

    cmpl-float p2, p2, v2

    if-lez p2, :cond_1

    if-nez p3, :cond_1

    .line 172
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$600(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result v3

    goto :goto_1

    :cond_1
    if-le v0, v1, :cond_3

    .line 174
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$600(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result v3

    goto :goto_1

    :cond_2
    if-nez v2, :cond_3

    if-le v0, v1, :cond_3

    .line 179
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$600(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result v3

    .line 183
    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {p2}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$400(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/util/ViewDragHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v3, p1}, Lcom/r0adkll/slidr/util/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 184
    iget-object p1, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$200(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/model/SlidrConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->isEdgeOnly()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$400(Lcom/r0adkll/slidr/widget/SliderPanel;)Lcom/r0adkll/slidr/util/ViewDragHelper;

    move-result-object v0

    iget-object v3, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v3}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$300(Lcom/r0adkll/slidr/widget/SliderPanel;)I

    move-result v3

    invoke-virtual {v0, v3, p2}, Lcom/r0adkll/slidr/util/ViewDragHelper;->isEdgeTouched(II)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 147
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/r0adkll/slidr/widget/SliderPanel$2;->this$0:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-static {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->access$500(Lcom/r0adkll/slidr/widget/SliderPanel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
