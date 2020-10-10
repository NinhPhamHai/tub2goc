.class public final Lcom/r0adkll/slidr/Slidr;
.super Ljava/lang/Object;
.source "Slidr.java"


# direct methods
.method public static attach(Landroid/app/Activity;Lcom/r0adkll/slidr/model/SlidrConfig;)Lcom/r0adkll/slidr/model/SlidrInterface;
    .locals 2

    .line 73
    invoke-static {p0, p1}, Lcom/r0adkll/slidr/Slidr;->attachSliderPanel(Landroid/app/Activity;Lcom/r0adkll/slidr/model/SlidrConfig;)Lcom/r0adkll/slidr/widget/SliderPanel;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/r0adkll/slidr/ConfigPanelSlideListener;

    invoke-direct {v1, p0, p1}, Lcom/r0adkll/slidr/ConfigPanelSlideListener;-><init>(Landroid/app/Activity;Lcom/r0adkll/slidr/model/SlidrConfig;)V

    invoke-virtual {v0, v1}, Lcom/r0adkll/slidr/widget/SliderPanel;->setOnPanelSlideListener(Lcom/r0adkll/slidr/widget/SliderPanel$OnPanelSlideListener;)V

    .line 79
    invoke-virtual {v0}, Lcom/r0adkll/slidr/widget/SliderPanel;->getDefaultInterface()Lcom/r0adkll/slidr/model/SlidrInterface;

    move-result-object p0

    return-object p0
.end method

.method private static attachSliderPanel(Landroid/app/Activity;Lcom/r0adkll/slidr/model/SlidrConfig;)Lcom/r0adkll/slidr/widget/SliderPanel;
    .locals 4

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 94
    new-instance v3, Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-direct {v3, p0, v2, p1}, Lcom/r0adkll/slidr/widget/SliderPanel;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/r0adkll/slidr/model/SlidrConfig;)V

    .line 95
    sget p0, Lcom/r0adkll/slidr/R$id;->slidable_panel:I

    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->setId(I)V

    .line 96
    sget p0, Lcom/r0adkll/slidr/R$id;->slidable_content:I

    invoke-virtual {v2, p0}, Landroid/view/View;->setId(I)V

    .line 97
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 98
    invoke-virtual {v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v3
.end method
