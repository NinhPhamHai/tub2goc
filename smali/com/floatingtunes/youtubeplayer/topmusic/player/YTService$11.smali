.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$11;
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

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;Landroid/widget/CheckBox;)V
    .locals 0

    .line 907
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$11;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$11;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 910
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$11;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$11;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setWarningDialog(Landroid/content/Context;Z)V

    return-void
.end method
