.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->initTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final_x:F

.field final_y:F

.field init_x:F

.field init_y:F

.field start_x:F

.field start_y:F

.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 1078
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1079
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->start_x:F

    .line 1080
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->start_y:F

    .line 1081
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_x:F

    .line 1082
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_y:F

    .line 1083
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->final_x:F

    .line 1084
    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->final_y:F

    return-void
.end method

.method private isClicked(FFFF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 1133
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p3, p4

    .line 1134
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x40e00000    # 7.0f

    cmpl-float p1, p1, p3

    if-gez p1, :cond_0

    cmpl-float p1, p2, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isMoved(FFFF)Z
    .locals 0

    sub-float/2addr p1, p2

    .line 1139
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sub-float/2addr p3, p4

    .line 1140
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const/high16 p3, 0x41200000    # 10.0f

    cmpl-float p1, p1, p3

    if-gez p1, :cond_1

    cmpl-float p1, p2, p3

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1089
    sget-boolean p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->POWER_MODE:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 1090
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/floatingtunes/youtubeplayer/topmusic/bus/PowerEvent;

    invoke-direct {p2}, Lcom/floatingtunes/youtubeplayer/topmusic/bus/PowerEvent;-><init>()V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1091
    sput-boolean v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->POWER_MODE:Z

    return v1

    .line 1094
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_6

    const/high16 v2, 0x3f000000    # 0.5f

    if-eq p1, v1, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto/16 :goto_1

    .line 1102
    :cond_1
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-direct {p0, p1, v3, v4, v5}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->isMoved(FFFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1103
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1105
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->start_x:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 1106
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->start_y:F

    sub-float/2addr p2, v0

    float-to-int p2, p2

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->access$400(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1108
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/ScreenSize;->STATUS_BAR_HEIGHT:I

    add-int/2addr v0, p2

    sget v3, Lcom/floatingtunes/youtubeplayer/topmusic/player/ScreenSize;->SCREEN_HEIGHT:I

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->access$500()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->access$200()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v0, v3, :cond_3

    .line 1109
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_0

    .line 1111
    :cond_3
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 1113
    :goto_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1114
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 1117
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->final_x:F

    .line 1118
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->final_y:F

    .line 1119
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v2

    if-nez p1, :cond_5

    .line 1120
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->access$600(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    .line 1122
    :cond_5
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mCloseLayout:Landroid/widget/RelativeLayout;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1123
    iget p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_x:F

    iget p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->final_x:F

    iget v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_y:F

    iget v2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->final_y:F

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->isClicked(FFFF)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1124
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->access$700(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V

    goto :goto_1

    .line 1096
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->start_x:F

    .line 1097
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->start_y:F

    .line 1098
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_x:F

    .line 1099
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->init_y:F

    .line 1128
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$13;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mSmallContainer:Landroid/widget/RelativeLayout;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mParamsSmallContainer:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p2, v0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return v1
.end method
