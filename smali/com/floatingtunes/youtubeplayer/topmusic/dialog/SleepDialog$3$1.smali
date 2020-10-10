.class Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3$1;
.super Ljava/lang/Object;
.source "SleepDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 131
    sget v0, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    if-gtz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;

    invoke-static {v0}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->switchCompat:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3$1;->this$1:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;

    iget-object v0, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog$3;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;

    iget-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->time_text:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 141
    sget v2, Lcom/floatingtunes/youtubeplayer/topmusic/notification/SleepService;->remainingSeconds:I

    invoke-static {v0, v2}, Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;->access$300(Lcom/floatingtunes/youtubeplayer/topmusic/dialog/SleepDialog;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
