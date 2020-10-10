.class public Lch/blinkenlights/android/vanilla/MiniPlaybackActivity;
.super Lch/blinkenlights/android/vanilla/PlaybackActivity;
.source "MiniPlaybackActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lch/blinkenlights/android/vanilla/R$id;->cover_view:I

    if-ne v0, v1, :cond_0

    .line 57
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lch/blinkenlights/android/vanilla/FullPlaybackActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 60
    :cond_0
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onClick(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    sget v0, Lch/blinkenlights/android/vanilla/R$style;->PopupDialog:I

    invoke-static {p0, v0}, Lch/blinkenlights/android/vanilla/ThemeHelper;->setTheme(Landroid/content/Context;I)V

    .line 41
    invoke-super {p0, p1}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 44
    sget p1, Lch/blinkenlights/android/vanilla/R$layout;->mini_playback:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 46
    sget p1, Lch/blinkenlights/android/vanilla/R$id;->cover_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lch/blinkenlights/android/vanilla/CoverView;

    iput-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

    .line 47
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    iget-object p1, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mCoverView:Lch/blinkenlights/android/vanilla/CoverView;

    iget-object v0, p0, Lch/blinkenlights/android/vanilla/PlaybackActivity;->mLooper:Landroid/os/Looper;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lch/blinkenlights/android/vanilla/CoverView;->setup(Landroid/os/Looper;Lch/blinkenlights/android/vanilla/CoverView$Callback;I)V

    .line 50
    invoke-virtual {p0}, Lch/blinkenlights/android/vanilla/PlaybackActivity;->bindControlButtons()V

    return-void
.end method
