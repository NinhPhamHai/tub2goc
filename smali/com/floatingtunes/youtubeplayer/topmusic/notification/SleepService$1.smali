.class Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;
.super Ljava/util/TimerTask;
.source "SleepService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 61
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    .line 63
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V

    .line 65
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 66
    sput v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    .line 67
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->access$100(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V

    .line 68
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;)V

    .line 69
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeStopEvent;

    invoke-direct {v1}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/TimeStopEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    :cond_0
    return-void
.end method
