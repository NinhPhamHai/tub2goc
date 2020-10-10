.class Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockPlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V
    .locals 0

    .line 542
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 546
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 547
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string v0, "level"

    .line 549
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "status"

    .line 550
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 551
    iget-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    iget-object v1, v1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mTvPercent:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 553
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mRlChargeLayout:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay$TimeReceiver;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;

    iget-object p2, p2, Lcom/floatingtunes/youtubeplayer/topmusic/lock/LockPlay;->mRlChargeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
