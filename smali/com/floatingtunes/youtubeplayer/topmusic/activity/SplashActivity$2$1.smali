.class Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;
.super Landroid/os/CountDownTimer;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->success()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;JJ)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTvTimeCount:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity$2;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/SplashActivity;->mTvTimeCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
