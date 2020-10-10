.class public Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;
.super Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;
.source "BlcakgroundActivity.java"


# instance fields
.field private curbright:I

.field private ll_all:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private getSystemBrightness()I
    .locals 2

    .line 61
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public changeAppBrightness(I)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    .line 51
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/4 p1, 0x1

    :cond_1
    int-to-float p1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    .line 53
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 55
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public closePower(Lcom/floatingtunes/youtubeplayer/topmusic/bus/PowerEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 28
    invoke-super {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x7f0c001e

    .line 30
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f09013a

    .line 31
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->ll_all:Landroid/widget/LinearLayout;

    .line 33
    invoke-direct {p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->getSystemBrightness()I

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->curbright:I

    const/4 p1, 0x2

    .line 35
    invoke-virtual {p0, p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->changeAppBrightness(I)V

    .line 37
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->ll_all:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity$1;

    invoke-direct {v0, p0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 82
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 70
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 71
    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->curbright:I

    invoke-virtual {p0, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/BlcakgroundActivity;->changeAppBrightness(I)V

    return-void
.end method
