.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/admediation/AmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->loadAdS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failed()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)V

    :cond_0
    return-void
.end method

.method public success()V
    .locals 8

    .line 95
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mAppBackground:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTopLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTvTimeCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mAdContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v3, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mAdContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;Landroid/view/View;)V

    .line 108
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTvTimeCount:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    new-instance v7, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;

    const-wide/16 v3, 0x1770

    const-wide/16 v5, 0x3e8

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;-><init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;JJ)V

    .line 127
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method
