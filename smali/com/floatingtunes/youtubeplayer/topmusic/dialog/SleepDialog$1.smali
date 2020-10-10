.class Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$1;
.super Ljava/lang/Object;
.source "SleepDialog.java"

# interfaces
.implements Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar$OnCircularSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->createAddDialog()Landroidx/appcompat/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;IZ)V
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->access$000(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/floatingtunes/youtubeplayer/topmusic/view/CircularSeekBar;)V
    .locals 0

    return-void
.end method
