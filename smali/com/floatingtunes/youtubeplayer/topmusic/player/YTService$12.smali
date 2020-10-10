.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$12;
.super Ljava/lang/Object;
.source "YTService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;)V
    .locals 0

    .line 913
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$12;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 916
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$12;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWindowManager:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;->mWarningDialog:Landroid/widget/RelativeLayout;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
