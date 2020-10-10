.class Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;
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

    .line 900
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 903
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 904
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService;

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/player/YTService$10;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/sp/SuperSp;->setWarningDialog(Landroid/content/Context;Z)V

    return-void
.end method
