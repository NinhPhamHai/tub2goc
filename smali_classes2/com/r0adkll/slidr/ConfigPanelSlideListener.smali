.class Lcom/r0adkll/slidr/ConfigPanelSlideListener;
.super Lcom/r0adkll/slidr/ColorPanelSlideListener;
.source "ConfigPanelSlideListener.java"


# instance fields
.field private final config:Lcom/r0adkll/slidr/model/SlidrConfig;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/r0adkll/slidr/model/SlidrConfig;)V
    .locals 1

    const/4 v0, -0x1

    .line 15
    invoke-direct {p0, p1, v0, v0}, Lcom/r0adkll/slidr/ColorPanelSlideListener;-><init>(Landroid/app/Activity;II)V

    .line 16
    iput-object p2, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    return-void
.end method


# virtual methods
.method protected getPrimaryColor()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getPrimaryColor()I

    move-result v0

    return v0
.end method

.method protected getSecondaryColor()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getSecondaryColor()I

    move-result v0

    return v0
.end method

.method public onClosed()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/r0adkll/slidr/model/SlidrListener;->onSlideClosed()V

    .line 33
    :cond_0
    invoke-super {p0}, Lcom/r0adkll/slidr/ColorPanelSlideListener;->onClosed()V

    return-void
.end method

.method public onOpened()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/r0adkll/slidr/model/SlidrListener;->onSlideOpened()V

    :cond_0
    return-void
.end method

.method public onSlideChange(F)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/r0adkll/slidr/ColorPanelSlideListener;->onSlideChange(F)V

    .line 48
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/r0adkll/slidr/model/SlidrListener;->onSlideChange(F)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/r0adkll/slidr/ConfigPanelSlideListener;->config:Lcom/r0adkll/slidr/model/SlidrConfig;

    invoke-virtual {v0}, Lcom/r0adkll/slidr/model/SlidrConfig;->getListener()Lcom/r0adkll/slidr/model/SlidrListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/r0adkll/slidr/model/SlidrListener;->onSlideStateChanged(I)V

    :cond_0
    return-void
.end method
